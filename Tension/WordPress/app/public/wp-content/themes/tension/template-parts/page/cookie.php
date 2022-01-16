<? 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT tag, content, link FROM cookie_alert";
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>        
    <!-- cookie -->
    <div class="cookie-alert">
        <? 
            foreach ($datas as $data){
                if ($data['tag'] == 'text'){
                    echo '<p>' . $data['content'] . '</p>';
                }
            }
        ?>
        <div class="button-side">
            <?
                foreach ($datas as $data){
                    if ($data['tag'] == 'button'){
                        echo '<a href="' . $data['link'] . '">' . $data['content'] . '</a>';
                    }
                    elseif ($data['tag'] == 'close'){
                        echo '<button class="cookie-alert-close">' . $data['content'] . '</button>';
                    }
                }
            ?>
        </div>
    </div>