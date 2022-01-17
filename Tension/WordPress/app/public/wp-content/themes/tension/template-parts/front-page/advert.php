<? 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT tag, topic, descr, img_link, img_title, button_link, button_text, icon FROM advert";
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>
    <!-- advert -->
    <div class="extern-container container-advert">
        <div class="advert-darken">
            <div class="intern-container">
                <div class="advert">
                    <!-- content  -->
                    <?php foreach ($datas as $data){
                        if ($data['tag'] == 'column'){ ?>
                            <!-- column  -->
                            <div class="advert-column">
                                <div class="advert-desc">
                                    <? 
                                        echo '<h1>' . $data['topic'] . '</h1>';
                                        echo '<img src="' . $data['img_link'] . '" alt="' . $data['img_title'] . '">';
                                    ?>
                                    <div class="advert-icon">
                                        <? echo $data['icon']; ?>
                                    </div>
                                    <? echo '<p>' . $data['descr'] . '</p>'; ?>
                                </div>
                                <? 
                                    echo '<a href="' . $data['button_link'] . '">';
                                ?>
                                    <div class="advert-button">
                                        <span><? echo $data['button_text']; ?></span>
                                    </div>
                                <? echo '</a>'; ?>
                            </div>
                    <? }} ?>
                </div>
            </div>
        </div>
    </div>