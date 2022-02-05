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
    <!-- meta tag of responsivity -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- meta tag of key words -->
    <meta name="keywords" content="Tension, Brno, Hudba, Akce">
    <!-- meta tag of image, title & description displayed in social. site share -->
    <meta name="og:title" content="Tension - insert into controller">
    <meta name="og:description" content="Tension">
    <meta name="og:image" content="">
    <!-- other meta tags -->
    <meta name="og:locale" content="cs_CZ">
    <meta name="og:type" content="website">
    <meta name="og:url" content="http://tension.local/">
    <meta name="og:site_name" content="Tension">
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
    <!-- Title "favicon" image -->
    <link rel="icon" href=""/>
    <!-- wp head start -->
	<? wp_head(); ?>
    <!-- wp head end -->
    <title>
        <?
            if (is_front_page()){
                bloginfo('name') ?> - <? bloginfo('description');

            }
            elseif (is_category()){
                bloginfo('name') ?> - <? single_cat_title();
            
            }
            elseif (is_single()){
                bloginfo('name') ?> - <? the_title();
            
            }
            elseif (is_page()){
                bloginfo('name') ?> - <? the_title();
            
            }
            elseif (is_search()){
                bloginfo('name') ?> - Hledat<?
            
            }
            elseif (is_404()){
                bloginfo('name') ?> - Chyba 404<?
            
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
                        <?  foreach ($datas as $data){
                                if ($data['tag'] == 'logo-link'){ ?>
                                    <a href="<? echo $data['link']; ?>" title="<? echo $data['title']; ?>">
                            <?  }
                                if ($data['tag'] == 'logo-image'){ ?>
                                    <div class="logo-contain <? echo $data['class']; ?>">
                                        <img src="<? echo $data['link']; ?>" alt="<? echo $data['title']; ?>">
                                    </div>
                            <?  }}  ?>
                                    </a>
                    </div>
                    <?  foreach ($datas as $data){
                            if ($data['tag'] == 'logo-text'){ ?>
                                <span><? echo $data['content']; ?></span>
                    <?  }}  ?>
                </div>
            </div>
            <!-- navigation -->
            <div class="navigation">
                <ul>
                    <?
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
                    <?  foreach ($datas as $data){
                            if ($data['tag'] == 'icon-menu-spec'){ ?>
                                <li class="<? echo $data['class']; if (is_search()){ echo ' ' . 'page-active'; } ?>" title="<? echo $data['title']; ?>"><? echo $data['icon']; ?></li>
                        <?  }
                            elseif ($data['tag'] == 'icon-menu'){ ?>
                                <li class="<? echo $data['class']; if ($data['title'] === 'Košík' && is_page('kosik')){ echo ' ' . 'page-active'; }elseif ($data['title'] === 'Profil' && is_page('profil')){ echo ' ' . 'page-active'; } ?>" title="<? echo $data['title']; ?>">
                                    <a href="<? echo $data['link']; ?>"><? echo $data['icon']; ?></a>
                                </li>
                    <?  }}  ?>
                </ul>
            </div>
            <!-- header responsive -->
            <div class="nav-responsive">
                <div class="eshop-part-resp">
                    <ul>
                        <?  foreach ($datas as $data){
                                if ($data['tag'] == 'icon-menu-spec'){ ?>
                                    <li class="<? echo $data['class'] . '-resp'; if (is_search()){ echo ' ' . 'page-active'; } ?>" title="<? echo $data['title']; ?>">
                                        <? echo $data['icon']; ?>
                                    </li>
                            <?  }
                                elseif ($data['tag'] == 'icon-menu'){ ?>
                                    <li class="<? echo $data['class']; if ($data['title'] === 'Košík' && is_page('kosik')){ echo ' ' . 'page-active'; }elseif ($data['title'] === 'Profil' && is_page('profil')){ echo ' ' . 'page-active'; }?>" title="<? echo $data['title']; ?>">
                                        <a href="<? echo $data['link']; ?>">
                                            <? echo $data['icon']; ?>
                                        </a>
                                    </li>
                        <?  }}  ?>
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
                        <? get_search_form(); ?>
                    </div>
                    <?  foreach ($datas as $data){
                            if ($data['tag'] == 'side-bar'){ ?>
                                <div class="<? echo $data['class']; ?>" title="<? echo $data['title']; ?>">
                                    <? echo $data['icon']; ?>
                                </div>
                    <?  }}  ?>
                </div>
            </div>
        </div>
    </header>
    <!-- navigation responsive -->
    <div class="header-menu-responsive">
        <div class="navigation-responsive">
            <ul>
                <?
                    wp_nav_menu(
                        array(
                            'menu' => 'header_menu',
                        )
                    );
                ?>
            </ul>
        </div>
    </div>