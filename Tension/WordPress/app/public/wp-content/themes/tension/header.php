<?php 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT tag, class, content, link, icon, title FROM header";
    // if you want table with all informations use id to identificate page and after add WHERE id = 2"
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
    // INSERT INTO radky_oblasti (id_oblasti, text, obsah, znacka) VALUES (2, 'Telefon', '123456', 'INFO')
?>

<!DOCTYPE html>
<html lang="cs">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Google Fonts import script -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Alumni+Sans:wght@300;500;700&display=swap');
    </style>
    <!-- jQuery import script -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- Bootstrap stylesheet import link (extern) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
	<?php
	    wp_head();
    ?>
    <title>
        <?php
            if(is_front_page()){

                bloginfo('name') ?> - <?php bloginfo('description');

            }elseif(is_category()){

                bloginfo('name') ?> - <?php single_cat_title();
            
            }elseif(is_single()){
            
                bloginfo('name') ?> - <?php the_title();
            
            }elseif(is_page()){
             
                bloginfo('name') ?> - <?php the_title();
            
            }elseif(is_search()){
            
                bloginfo('name') ?> - Hledat<?php
            
            }elseif(is_404()){
            
                bloginfo('name') ?> - Chyba 404<?php
            
            }
        ?>
    </title>
</head>

<body>
    <!-- header -->
    <header>
        <div class="intern-container">
            <!-- logo -->
            <div class="nav-logo-part">
                <div>
                    <div class="logo-box">
                        <?php
                            foreach ($datas as $data){
                                if ($data['tag'] == 'logo-link'){
                                        echo '<a href="' . $data['link'] . '" title="' . $data['title'] . '">';
                                }
                            }
                            foreach ($datas as $data){
                                if ($data['tag'] == 'logo-image'){
                                        echo '
                                        <div class="logo-contain ' . $data['class'] . '">
                                            <img src="' . $data['link'] . '">
                                        </div>';
                                }
                            }
                            echo '</a>';
                        ?>
                    </div>
                    <span>
                        <?php 
                            foreach ($datas as $data){
                                if ($data['tag'] == 'logo-text'){
                                        echo '<span>' . $data['content'] . '</span>';
                                }
                            }
                        ?>
                    </span>
                </div>
            </div>
            <!-- navigation -->
            <div class="navigation">
                <ul>
                    <?php
                        wp_nav_menu(
                            array(
                                'menu' => 'header_menu',
                            )
                        );
                    ?>
                </ul>
            </div>
            <!-- icon menu -->
            <div class="eshop-part">
                <ul>
                    <?php 
                        foreach ($datas as $data){
                            if ($data['tag'] == 'icon-menu-spec'){
                                    echo '<li class="' . $data['class'] . '" title="' . $data['title'] . '">' . $data['icon'] . '</li>';

                            }
                        }
                        foreach ($datas as $data){
                            if ($data['tag'] == 'icon-menu'){
                                    echo '<li class="' . $data['class'] . '" title="' . $data['title'] . '">
                                                <a href="' . $data['link'] . '">' . $data['icon'] . '</a></li>';

                            }
                        }
                    ?>
                </ul>
            </div>
            <!-- header responsive -->
            <div class="nav-responsive">
                <div class="eshop-part-resp">
                    <ul>
                        <?php 
                            foreach ($datas as $data){
                                if ($data['tag'] == 'icon-menu-spec'){
                                        echo '<li class="' . $data['class'] . '-resp" title="' . $data['title'] . '">' . $data['icon'] . '</li>';

                                }
                            }
                            foreach ($datas as $data){
                                if ($data['tag'] == 'icon-menu'){
                                        echo '<li class="' . $data['class'] . '" title="' . $data['title'] . '">
                                                    <a href="' . $data['link'] . '">' . $data['icon'] . '</a></li>';

                                }
                            }
                        ?>
                    </ul>
                </div>
                <!-- hamburger -->
                <div class="hamburger-box" title="Menu">
                    <div class="hamburger-div2">
                        <div class="menu-line2"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- side bar -->
        <div class="intern-container">
            <div class="nav-sidebar">
                <div class="sidebar-content">
                    <div class="nav-sidebar-search">
                        <?php get_search_form(); ?>
                    </div>
                    <?php
                        foreach ($datas as $data){
                            if ($data['tag'] == 'side-bar'){
                                    echo '<div class="' . $data['class'] . '" title="' . $data['title'] . '">' . $data['icon'] . '</div>';

                            }
                        }
                    ?>
                </div>
            </div>
        </div>
    </header>
    <!-- navigation responsive -->
    <div class="header-menu-responsive">
        <div class="navigation-responsive">
            <ul>
                <?php
                    wp_nav_menu(
                        array(
                            'menu' => 'header_menu',
                        )
                    );
                ?>
            </ul>
        </div>
    </div>