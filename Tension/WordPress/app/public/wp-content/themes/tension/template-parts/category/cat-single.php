<div class="intern-container">
    <div class="single-page">
        <div class="single-column-one">
            <div class="single-tags">
                <!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                    y="0px" viewBox="0 0 15.62 21.29" style="enable-background:new 0 0 15.62 21.29;" xml:space="preserve">
                    <path class="st0" d="M7.9,0.52c-4.13,0-7.47,3.35-7.47,7.47c0,4.13,3.35,7.47,7.47,7.47c4.13,0,7.47-3.35,7.47-7.47
                    C15.38,3.86,12.03,0.52,7.9,0.52z M7.9,10.8c-1.55,0-2.8-1.26-2.8-2.8s1.26-2.8,2.8-2.8c1.55,0,2.8,1.26,2.8,2.8S9.45,10.8,7.9,10.8
                    z" />
                    <path class="st1" d="M1,10.78c-0.03-0.06,0-0.14,0.06-0.17h0c0.06-0.03,0.14,0,0.17,0.06" />
                    <path class="st1" d="M14.8,10.88c0.03-0.06,0-0.14-0.06-0.17l0,0c-0.06-0.03-0.14,0-0.17,0.06" />
                    <path class="st1" d="M1.32,11.47L7.2,20.8c0.28,0.45,0.96,0.45,1.25,0.01l5.94-9.17c0.09-0.14-0.07-0.32-0.29-0.33l-12.5-0.17
                    C1.39,11.14,1.23,11.32,1.32,11.47z" />
                </svg>
                <span>
                    <?
                        $post_tags = get_the_tags();
                        if ( $post_tags ) {
                            echo $post_tags[0]->name. ", ". $post_tags[1]->name;
                        }                      
                    ?>
                </span>
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