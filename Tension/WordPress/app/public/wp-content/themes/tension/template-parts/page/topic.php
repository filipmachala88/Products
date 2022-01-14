<div class="extern-container page-topic">
    <div class="dark">      
        <div class="intern-container">
            <?php
                if(is_category()){

                    echo '<div class="topic-topic"><h2>';
                    echo single_cat_title() . '</h2></div>';
                    // category description has primrary <p> element
                    echo '<div class="topic-text">';
                    echo category_description() . '</div>';

                }elseif(is_single()){
                    
                    echo '<div class="topic-topic"><div class="category-flex">';
                    echo the_category();
                    
                    echo '<p class="special-tag">></p><h2>';
                    echo the_title() . '</h2>';
                    echo '</div></div>';
                    
                    echo '<div class="topic-text">';
                    echo the_excerpt() . '</div>';

                }elseif(is_page()){

                    // title has primary no element
                    echo '<div class="topic-topic"><h2>';
                    echo the_title() . '</h2></div>';
                    // excerpt has primrary <p> element
                    echo '<div class="topic-text">';
                    echo the_excerpt() . '</div>';

                }elseif(is_search()){

                    // sidebar search has primrary <p> element
                    echo '<h2>Hledat</h2>';
                    echo get_sidebar();
                    
                }elseif(is_404()){
                    
                    echo '<h2>Chyba 404</h2>';
                    echo '<div class="topic-text"><p>Omlouváme se, ale tento odkaz již není aktivní</p></div>';
                }
            ?>
        </div>
    </div>
</div>