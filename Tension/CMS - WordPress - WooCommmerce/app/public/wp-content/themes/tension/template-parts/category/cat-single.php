<?php 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT tag, icon FROM category";
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>

<div class="intern-container">
    <div class="single-page">
        <div class="single-column-one">
            <div class="single-tags">
                <?  if ( is_single('akce')){
                        foreach ($datas as $data){
                            if ($data['tag'] == 'location'){ ?>
                                <? echo $data['icon']; ?>
                    <?  }}
                    }
                    elseif( is_single('merch')){
                        foreach ($datas as $data){
                            if ($data['tag'] == 'merch'){ ?>
                                <? echo $data['icon']; ?>
                    <?  }}
                    }
                    // tags
                        $post_tags = get_the_tags();
                        if ( $post_tags ) { ?>
                            <span><? echo $post_tags[0]->name . ' - ' . $post_tags[1]->name ?></span>
                    <?  }   ?>
            </div>
            <div class="single-content">
            <?
                $var = get_the_content();
                $content = explode('<!-- wp:shortcode /-->', $var);
                echo do_shortcode($content[1]);
            ?>
            </div>
        </div>
        <div class="single-column-two">
            <div class="single-img">
                <? the_post_thumbnail(); ?>
            </div>
            <div class="single-map">
                <?
                    $var = get_the_content();
                    $content = explode('<!-- wp:shortcode /-->', $var);
                    echo do_shortcode($content[2]);
                ?>
            </div>
        </div>
    </div>
</div>