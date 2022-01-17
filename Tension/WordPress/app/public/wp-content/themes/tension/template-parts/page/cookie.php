<? 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT tag, content, link FROM cookie_alert";
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>        
    <!-- cookie -->
    <div class="cookie-alert">
        <?  foreach ($datas as $data){
                if ($data['tag'] == 'text'){ ?>
                    <p>
                        <? echo $data['content'] ?>
                    </p>
        <?  }}  ?>
        <div class="button-side">
            <?  foreach ($datas as $data){
                    if ($data['tag'] == 'button'){ ?>
                        <a href="<? echo $data['link'] ?>">
                            <? echo $data['content'] ?>
                        </a>
                <?  }
                    elseif ($data['tag'] == 'close'){ ?>
                        <button class="cookie-alert-close">
                            <? echo $data['content'] ?>
                        </button>
            <?  }}  ?>
        </div>
    </div>