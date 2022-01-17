    <!-- content -->
    <div class="text-page">
        <div class="intern-container">
            <div class="content">
                <?
                    $var = get_the_content();
                    $content = explode('<!-- wp:shortcode /-->', $var);
                    echo do_shortcode($content[1]);
                ?>
            </div>
        </div>
    </div>

