<? 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT tag, class, content, link, title FROM about";
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>
    <!-- about -->
    <div class="intern-container">
        <div class="index-about">
            <div class="about-text-side">
                <div class="about-topic">
                    <?
                        foreach ($datas as $data){
                            if ($data['tag'] == 'topic'){
                                    echo '<h1>' . $data['content'] . '</h1>';
                            }
                            elseif ($data['tag'] == 'logo'){
                                    echo '<img src="' . $data['link'] . '" alt="' . $data['title'] . '"></h1>';
                            }
                            elseif ($data['tag'] == 'topic_after'){
                                    echo '<h1 class="' . $data['class'] . '">' . $data['content'] . '</h1>';
                            }
                        }
                    ?>
                </div>
                <div class="text">
                    <?
                        foreach ($datas as $data){
                            if ($data['tag'] == 'text'){
                                    echo '<p>' . $data['content'] . '</p>';
                            }
                        }
                    ?>
                </div>
            </div>
            <div class="about-img-side">
                <div class="img-center">
                    <?
                        foreach ($datas as $data){
                            if ($data['tag'] == 'img'){
                                    echo '<img src="' . $data['link'] . '" alt="' . $data['title'] . '" class="' . $data['class'] . '">';
                            }
                        }
                    ?>
                </div>
                <?
                    foreach ($datas as $data){
                        if ($data['tag'] == 'img_back'){
                                echo '<img src="' . $data['link'] . '" alt="' . $data['title'] . '" class="' . $data['class'] . '">';
                        }
                    }
                ?>
            </div>
        </div>
        <div class="background-effect-one">
            <?
                foreach ($datas as $data){
                    if ($data['tag'] == 'notes'){
                            echo '<img src="' . $data['link'] . '" alt="' . $data['title'] . '">';
                    }
                }
            ?>
        </div>
    </div>