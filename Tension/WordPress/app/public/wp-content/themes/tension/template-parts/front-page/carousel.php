<? 
    $conn = mysqli_connect("localhost","root","root","local");
    /*
        Hvězdičkový select má smysl pouze v jediném případě a to v dopředu neznámé struktuře tabulky,
        kdy pak iterujete přes všechny sloupce bez ohledu na jejich obsah - to ale bývá velice ojedinělý případ.
        Ve všech ostatních případech se sloupce vyjmenovávají pro zachování integrity kódu s databází.
        V kódu přece víte, jaký sloupec selectujete a jaký druh dat v něm očekáváte, proč tedy brát i ten zbytek?
        Navíc se může vyselectovat něco, co běh kódu ovlivní (třeba dojde paměť,
        protože jste nechtěně vyselectoval blob, či někdo do DB přidá sloupec,
        jehož obsah někde jinde pozmění zpracování)
    */
    $sql = "SELECT tag, class, topic, descr, note_one, note_two, button_link, button_text, icon, img, img_alt FROM carousel";
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
    // database error help message
    // echo mysqli_error($conn)
?>
    <!-- carousel -->
    <div class="extern-container">
        <div class="carousel-div">
            <div class="dark">
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel" data-bs-pause="false">
                    <!-- indicators -->
                    <div class="carousel-indicators">
                        <div class="background">
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                                class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                        </div>
                    </div>
                    <!-- content -->
                    <div class="carousel-inner">
                        <?php foreach ($datas as $data){
                            if ($data['tag'] == 'carousel'){ ?>
                            <!-- slide -->
                            <div class="carousel-item <? echo $data['class'] ?>" data-bs-interval="5000">
                                <div class="slide-content">
                                    <div class="slider-column-first">
                                        <div>
                                            <div class="event-topic">
                                                <?
                                                    echo '<h2>' . $data['topic'] . '</h2>';
                                                    echo '<p>' . $data['descr'] . '</p>';
                                                ?>
                                            </div>
                                            <div class="event-info">
                                                <?
                                                    echo '<div class="event-icon">' . $data['icon'] . '</div>';
                                                    echo '<div class="event-descr"><ul><li><span>' . $data['note_one'] . '</span></li><li><span>' . $data['note_two'] . '</span></li></ul></div>';
                                                ?>
                                            </div>
                                                <?
                                                    echo '<a href="' . $data['button_link'] . '"><div class="slider-button"><span>' . $data['button_text'] . '</span></div></a>';
                                                ?>
                                        </div>
                                    </div>
                                    <div class="slider-column-second">
                                        <? echo '<img src=' . $data['img'] . '" alt="' . $data['img_alt'] . '">'; ?>
                                    </div>
                                </div>
                            </div>
                        <?php }} ?>
                    </div>
                    <!-- controls -->
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>