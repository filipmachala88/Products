<?php 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT tag, input, input_type, input_name, content FROM contact";
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>
    <!-- content -->
    <div class="intern-container">
        <div class="contact">
            <div class="content-col">
                <?  foreach ($datas as $data){
                        if ($data['tag'] == 'topic'){ ?>
                            <h1>
                                <? echo $data['content'] ?>
                            </h1>
                <?  }}  ?>
                <div class="text">
                    <?  foreach ($datas as $data){
                        if ($data['tag'] == 'text'){ ?>
                            <span>
                                <? echo $data['content'] ?>
                            </span>
                    <?  }}  ?>
                </div>
            </div>
            <div class="content-col">
                <?  foreach ($datas as $data){
                        if ($data['tag'] == 'topic_form'){ ?>
                            <h1>
                                <? echo $data['content'] ?>
                            </h1>
                <?  }}  ?>
                <div class="text">
                    <?  foreach ($datas as $data){
                        if ($data['tag'] == 'text_form'){ ?>
                            <span>
                                <? echo $data['content'] ?>
                            </span>
                    <?  }}  ?>
                </div>
                <!-- form -->
                <div class="form">
                    <form method="post">
                        <?  foreach ($datas as $data){
                            if ($data['tag'] == 'form'){ ?>
                                <div class="form-row">
                                    <span>
                                        <? echo $data['content'] ?>
                                        <strong>*</strong>
                                    </span>
                                    <<? echo $data['input'] ?> type="<? echo $data['input_type'] ?>" name="<? echo $data['input_name'] ?>"></<? echo $data['input'] ?>>
                                </div>
                        <?  }}  ?>
                        <div class="form-button">
                            <?  foreach ($datas as $data){
                                if ($data['tag'] == 'button'){ ?>
                                    <button type="submit" name="sent">
                                        <? echo $data['content'] ?>
                                    </button>
                            <?  }}  ?>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>