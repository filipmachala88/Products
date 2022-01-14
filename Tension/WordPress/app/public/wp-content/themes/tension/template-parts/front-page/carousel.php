<?php 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT tag, class, content, content_alt link, title, icon FROM carousel";
    // if you want table with all informations use id to identificate page and after add WHERE id = 2"
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
    // INSERT INTO radky_oblasti (id_oblasti, text, obsah, znacka) VALUES (2, 'Telefon', '123456', 'INFO')
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
                        <?php
                            foreach ($datas as $data){
                                echo '
                                <!-- slide -->
                                <div class="carousel-item'; if ($data['tag'] == 'topic'){ echo ' ' . $data['class']; }  . '" data-bs-interval="5000">
                                    <div class="slide-content">
                                        <div class="slider-column-first">
                                            <div>
                                                <div class="event-topic">';
                                                        if ($data['tag'] == 'topic'){
                                                            echo '<h2>' . $data['content'] . '</h2>';
                                                        }
                                                        if ($data['tag'] == 'text'){
                                                            echo '<p>' . $data['content'] . '</p>';
                                                        }
                                        echo    '</div>
                                                <div class="event-info">';
                                                        if ($data['tag'] == 'desc'){
                                                            echo '<div class="event-icon">' . $data['icon'] . '</div>';
                                                            echo '<div class="event-descr"><ul><li>' . $data['content'] . '</li><li>' . $data['content-alt'] . '</li></ul></div>';
                                                        }
                                                        if ($data['tag'] == 'button'){
                                                            echo '<a href="' . $data['link'] . '"><div class="slider-button"><span>' . $data['content'] . '</span></div></a>';
                                                        }
                                        echo    '</div>
                                            </div>
                                        </div>
                                        <div class="slider-column-second">';
                                                if ($data['tag'] == 'image'){
                                                    echo '<img src="' . $data['link'] . '" alt="' . $data['content'] . '">';
                                                }
                                echo    '</div>
                                    </div>
                                </div>';
                            }
                        ?>
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
