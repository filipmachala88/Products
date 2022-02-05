<?php 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT tag, icon FROM category";
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>

<div class="category">
    <div class="intern-container">
        <div class="img-part">
            <?
                $index = 0;
                $no_of_columns = 3;
            
                if (have_posts()) : while (have_posts()) : the_post();
                if(0 === $index % $no_of_columns){
            ?>
                <!-- row -->
                <div class="img-row">
            <?
                }
                // galery category
                if (is_category('galerie')){ ?>
                    <!-- post -->
                    <div class="img-hover">
                        <div class="img">
                            <?  // picture
                                the_post_thumbnail();
                            ?>
                        </div>
                        <div class="element-item">
                            <?  // see only admin
                                if(current_user_can('administrator')){ ?>
                                    <div class="post-edit">
                                        <? edit_post_link('upravit'); ?>
                                    </div>
                                    <div class="post-info">
                                        <p>
                                            <? echo the_time('F jS, Y') . " - " . the_author_posts_link(); ?>
                                        </p>
                                    </div>
                            <?  }   ?> 
                        </div>
                    </div>
            <?  }
                // other category
                else{ ?>
                    <!-- post -->
                    <div class="img-hover">
                        <div class="img">
                            <?  // picture
                                the_post_thumbnail();
                            ?>
                        </div>
                        <a href="<? the_permalink(); ?>" class="element-item">
                            <div class="tags-side">
                            <?  // icon
                                if (is_category('akce')){
                                    foreach ($datas as $data){
                                            if ($data['tag'] == 'location'){ ?>
                                                <? echo $data['icon']; ?>
                                <?  }}
                                }
                                elseif (is_category('merch')){
                                    foreach ($datas as $data){
                                            if ($data['tag'] == 'merch'){ ?>
                                                <? echo $data['icon']; ?>
                                <?  }}
                                }
                                elseif (is_search()){
                                    foreach ($datas as $data){
                                            if ($data['tag'] == 'search'){ ?>
                                                <? echo $data['icon']; ?>
                                <?  }}
                                }
                                // tags
                                $post_tags = get_the_tags();
                                if ( $post_tags ) { ?>
                                    <span><? echo $post_tags[0]->name . ' - ' . $post_tags[1]->name ?></span>
                            <?  }   ?>
                            </div>
                            <?  // see only admin
                                if(current_user_can('administrator')){ ?>
                                    <div class="post-edit">
                                        <? edit_post_link('upravit'); ?>
                                    </div>
                            <?  }   ?>
                            <div class="text-side">
                                <h2><? the_title(); ?></h2>
                                <? the_excerpt(); ?>
                            </div>
                            <?  // see only admin
                                if(current_user_can('administrator')){ ?>
                                    <div class="post-info">
                                        <p>
                                            <? echo the_time('F jS, Y') . ", " . the_author_posts_link(); ?>
                                        </p>
                                    </div>
                            <?  }   ?>
                        </a>
                    </div>
            <?  }
                $index ++;
                
                if(0 !== $index && 0 === $index % $no_of_columns) {
            ?>
                    </div>
                    <!-- end of row -->
            <?
                }
            endwhile; else : ?>
                <p class="no-post-found">
                    <?php esc_html_e( 'Omlouváme se, ale žádný příspěvek neodpovídá vašim požadavkům.' ); ?>
                </p>
            <? endif; ?>
            </div>
        </div>
    </div>
</div>