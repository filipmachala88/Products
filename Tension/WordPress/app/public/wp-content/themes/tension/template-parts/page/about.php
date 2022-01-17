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
                    <?  foreach ($datas as $data){
                            if ($data['tag'] == 'topic'){ ?>
                                <h1>
                                    <? echo $data['content'] ?>
                                </h1>
                        <?  }
                            elseif ($data['tag'] == 'logo'){ ?>
                                <img src="<? echo $data['link'] ?>" alt="<? echo $data['title'] ?>">
                        <?  }
                            elseif ($data['tag'] == 'topic_after'){ ?>
                                <h1 class="<? echo $data['class'] ?>">
                                    <? echo $data['content'] ?>
                                </h1>
                    <?  }}  ?>
                </div>
                <div class="text">
                    <?  foreach ($datas as $data){
                            if ($data['tag'] == 'text'){ ?>
                                <p>
                                    <? echo $data['content'] ?>
                                </p>
                    <?  }}  ?>
                </div>
            </div>
            <div class="about-img-side">
                <div class="img-center">
                    <?  foreach ($datas as $data){
                            if ($data['tag'] == 'img'){ ?>
                                <img src="<? echo $data['link'] ?>" alt="<? echo $data['title'] ?>" class="<? echo $data['class'] ?>">
                    <?  }}  ?>
                </div>
                <?  foreach ($datas as $data){
                        if ($data['tag'] == 'img_back'){ ?>
                            <img src="<? echo $data['link'] ?>" alt="<? echo $data['title'] ?>" class="<? echo $data['class'] ?>">
                <?  }}  ?>
            </div>
        </div>
        <div class="background-effect-one">
            <?  foreach ($datas as $data){
                    if ($data['tag'] == 'notes'){ ?>
                        <img src="<? echo $data['link'] ?>" alt="<? echo $data['title'] ?>">
            <?  }}  ?>
        </div>
    </div>