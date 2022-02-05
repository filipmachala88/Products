<? 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT tag, topic, content, link, title FROM galery_ind";
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>    
    <!-- galery -->
    <div class="intern-container">
        <div class="background-effect-two">
            <?  foreach ($datas as $data){
                    if ($data['tag'] == 'notes'){ ?>
                        <img src="<? echo $data['link'] ?>" alt="<? echo $data['title'] ?>">
            <?  }}  ?>
        </div>
        <div class="galery">
            <div class="topic">
                <?  foreach ($datas as $data){
                        if ($data['tag'] == 'topic'){ ?>
                            <h1><? echo $data['content'] ?>
                    <?  }
                        elseif ($data['tag'] == 'topic_spec'){ ?>
                            <strong><? echo $data['content'] ?></strong>
                    <?  }
                        elseif ($data['tag'] == 'topic_after'){ ?>
                            <? echo $data['content'] ?></h1>
                <?  }}  ?>
            </div>
            <div class="galery-text">
                <div class="text-one">
                    <?  foreach ($datas as $data){
                            if ($data['tag'] == 'descr'){ ?>
                                <p><? echo $data['content'] ?></p>
                    <?  }}  ?>
                </div>
            </div>
            <div class="galery-images">
                <div class="galery-images-resp">
                    <?  foreach ($datas as $data){
                            if ($data['tag'] == 'square'){ ?>
                                <!-- image -->
                                <div class="box">
                                    <div class="imgBx">
                                        <img src="<? echo $data['link']; ?>" alt="<? echo $data['title']; ?>">
                                        <div class="content">
                                            <h2><? echo $data['topic']; ?></h2>
                                            <p><? echo $data['content']; ?></p>
                                        </div>
                                    </div>
                                </div>
                    <?  }}  ?>
                </div>
                <div class="galery-images-resp">
                    <?  foreach ($datas as $data){
                            if ($data['tag'] == 'square_resp'){ ?>
                                <!-- image -->
                                <div class="box">
                                    <div class="imgBx">
                                        <img src="<? echo $data['link']; ?>" alt="<? echo $data['title']; ?>">
                                        <div class="content">
                                            <h2><? echo $data['topic']; ?></h2>
                                            <p><? echo $data['content']; ?></p>
                                        </div>
                                    </div>
                                </div>
                    <?  }}  ?>
                </div>
            </div>
            <div class="button-href">
                <?  foreach ($datas as $data){
                        if ($data['tag'] == 'button'){ ?>
                            <a href="<? echo $data['link'] ?>">
                                <div class="galery-button">
                                    <span><? echo $data['content'] ?></span>
                                </div>
                            </a>
                <?  }}  ?>
            </div>
        </div>
    </div>