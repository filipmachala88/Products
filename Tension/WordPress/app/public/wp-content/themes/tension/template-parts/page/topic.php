<div class="extern-container page-topic">
    <div class="dark">      
        <div class="intern-container">

            <?php
            
            if(is_category()){

                echo the_category();
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

                echo '<div class="topic-topic"><h2>';
                // title has primary no element
                echo the_title() . '</h2></div>';
                echo '<div class="topic-text">';
                // excerpt has primrary <p> element
                echo the_excerpt() . '</div>';

            }elseif(is_search()){

                echo '<h2>Hledat</h2>';  
                echo get_sidebar();
                
            }
            ?>

        </div>
    </div>
</div>