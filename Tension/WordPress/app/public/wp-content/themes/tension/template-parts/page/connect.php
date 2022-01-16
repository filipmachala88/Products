<? 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT tag, content, link, title FROM connect_alert";
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>      
    <!-- connect alert -->
    <div class="tension-banner">
        <div class="tension-banner-dark">
            <div class="logo-center">
                <? 
                    foreach ($datas as $data){
                        if ($data['tag'] == 'img'){
                            echo '<img src="' . $data['link'] . '" alt="' . $data['title'] . '">';
                        }
                        elseif ($data['tag'] == 'text'){
                            echo '<span>' . $data['content'] . '</span>';
                        }
                    }
                ?>
            </div>
        </div>
    </div>