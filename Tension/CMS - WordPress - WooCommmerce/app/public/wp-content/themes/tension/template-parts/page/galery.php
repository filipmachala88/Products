<?php 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT id, link, title, when_add, who_add FROM galery";
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>
<div class="category">
    <div class="intern-container">
        <div class="img-part">
            <!-- row -->
            <div class="img-row">
            <!-- post -->
            
            <?  foreach ($datas as $data){ ?>
                        <div class="img-hover">
                            <div class="img">
                                <img src="<? echo $data['link']; ?>" title="<? echo $data['title']; ?>">
                            </div>
                            <div class="galery-item">
                                <?  // see only admin
                                    if(current_user_can('administrator')){ ?>
                                        <div class="post-info">
                                            <span class="date">
                                                <? echo $data['when_add']; ?>
                                            </span>
                                            <span class="admin">
                                                <? echo $data['who_add']; ?>
                                            </span>
                                        </div>
                                <?  }   ?> 
                            </div>
                        </div>
                        <? if ($data['id'] % 3 === 0 ){ ?>
                            </div>
                            <!-- row -->
                            <div class="img-row">                           
            <?  }}  ?>
            <!-- end of row -->
            </div>
        </div>
    </div>
</div>