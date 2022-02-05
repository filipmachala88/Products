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
                <? foreach ($datas as $data){
                        if ($data['tag'] == 'img'){ ?>
                            <img src="<? echo $data['link'] ?>" alt="<? echo $data['title'] ?>">
                    <?  }
                        elseif ($data['tag'] == 'text'){ ?>
                            <span>
                                <? echo $data['content'] ?>
                            </span>
                <?  }}  ?>
            </div>
        </div>
    </div>