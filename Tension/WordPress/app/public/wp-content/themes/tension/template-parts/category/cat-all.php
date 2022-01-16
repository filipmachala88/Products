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
        ?>  
            <!-- post -->
            <div class="img-hover">
                <div class="img">
                    <? the_post_thumbnail(); ?>
                </div>
                <a href="<? the_permalink(); ?>" class="element-item">
                    <div class="tags-side">
                        <?
                            echo '
                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                                y="0px" viewBox="0 0 15.62 21.29" style="enable-background:new 0 0 15.62 21.29;" xml:space="preserve">
                                <path class="st0" d="M7.9,0.52c-4.13,0-7.47,3.35-7.47,7.47c0,4.13,3.35,7.47,7.47,7.47c4.13,0,7.47-3.35,7.47-7.47
                                C15.38,3.86,12.03,0.52,7.9,0.52z M7.9,10.8c-1.55,0-2.8-1.26-2.8-2.8s1.26-2.8,2.8-2.8c1.55,0,2.8,1.26,2.8,2.8S9.45,10.8,7.9,10.8
                                z" />
                                <path class="st1" d="M1,10.78c-0.03-0.06,0-0.14,0.06-0.17h0c0.06-0.03,0.14,0,0.17,0.06" />
                                <path class="st1" d="M14.8,10.88c0.03-0.06,0-0.14-0.06-0.17l0,0c-0.06-0.03-0.14,0-0.17,0.06" />
                                <path class="st1" d="M1.32,11.47L7.2,20.8c0.28,0.45,0.96,0.45,1.25,0.01l5.94-9.17c0.09-0.14-0.07-0.32-0.29-0.33l-12.5-0.17
                                C1.39,11.14,1.23,11.32,1.32,11.47z" />
                            </svg>';
                            $post_tags = get_the_tags();
                            if ( $post_tags ) {
                                echo '<span>' . $post_tags[0]->name. ", ". $post_tags[1]->name . '</span>';
                            }              
                        ?>
                    </div>
                    <!-- see only admin -->
                    <div class="post-edit">
                        <? edit_post_link('upravit'); ?>
                    </div>
                    <div class="text-side">
                        <h2><? the_title();?></h2>
                        <? the_excerpt();?>
                    </div>
                </a>
                <!-- see only admin -->
                <div class="post-info">
                    <p>
                        <?
                            if(current_user_can('administrator')){
                            echo the_time('F jS, Y'). ", ".
                            the_author_posts_link();
                            }
                        ?>
                    </p>
                </div>
            </div>
        <?
            $index ++;
            
            if(0 !== $index && 0 === $index % $no_of_columns) {
        ?>
                </div>
                <!-- end of row -->
        <?
            }
        endwhile; else : ?>
	        <p>
                <?php esc_html_e( 'Omlouváme se, ale žádný příspěvek neodpovídá vašim požadavkům.' ); ?>
            </p>
        <? endif; ?>
        </div>
    </div>
</div>