<?php 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT tag, content, link, icon, title FROM header";
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
    <title>Tension - Domů</title>
</head>

<body>

    <header>
        <div class="intern-container">
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
                                            <div class="logo-contain ' . $data['content'] . '">
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

            <div class="eshop-part">
                <ul>
                    <li class="searchBox" title="Hledat">
                        <!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                            viewBox="0 0 20.07 19.78" style="enable-background:new 0 0 20.07 19.78;" xml:space="preserve">
                            <path class="st0" d="M7.67,0.21c-4.14,0-7.5,3.36-7.5,7.5s3.36,7.5,7.5,7.5s7.5-3.36,7.5-7.5S11.81,0.21,7.67,0.21z M7.67,12.93
                                c-2.89,0-5.22-2.34-5.22-5.22s2.34-5.22,5.22-5.22s5.22,2.34,5.22,5.22S10.55,12.93,7.67,12.93z"/>
                            <path class="st0" d="M18.7,19.08l0.81-0.81c0.22-0.22,0.22-0.59,0-0.81l-6.55-6.55c-0.22-0.22-0.59-0.22-0.81,0l-0.81,0.81
                                c-0.22,0.22-0.22,0.59,0,0.81l6.55,6.55C18.11,19.3,18.48,19.3,18.7,19.08z"/>
                        </svg>
                    </li>
                    <li class="nav-special-icon" title="Košík">
                        <a href="http://tension.local/kosik/">
                            <!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                            <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                viewBox="0 0 24.64 19.36" style="enable-background:new 0 0 24.64 19.36;" xml:space="preserve">
                                <path class="st0" d="M22.29,12.55H5.47c-0.15,0-0.27-0.09-0.3-0.22L3.2,1.58c0,0,0,0,0,0h20.65c0.37,0,0.65,0.3,0.59,0.62
                                    l-1.86,10.12C22.56,12.45,22.44,12.55,22.29,12.55z"/>
                                <rect x="5.4" y="12.07" transform="matrix(0.9883 -0.1523 0.1523 0.9883 -2.031 1.0706)" class="st0" width="1.15" height="3.44"/>
                                <circle class="st0" cx="6.39" cy="17.46" r="1.72"/>
                                <path class="st0" d="M4.37,1.58H0.66c-0.23,0-0.41-0.19-0.41-0.43v-0.6c0-0.22,0.17-0.39,0.38-0.39H3.7c0.21,0,0.41,0.17,0.46,0.39
                                    L4.37,1.58z"/>
                                <path class="st0" d="M21.89,16.22H5.94c-0.16,0-0.3-0.13-0.3-0.3v-0.68c0-0.16,0.13-0.3,0.3-0.3h15.95c0.16,0,0.3,0.13,0.3,0.3v0.68
                                    C22.19,16.08,22.06,16.22,21.89,16.22z"/>
                                <circle class="st0" cx="21.25" cy="17.46" r="1.72"/>
                            </svg>
                        </a>
                    </li>
                    <li class="nav-special-icon" title="Profil">
                        <a href="http://tension.local/profil/">
                            <!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                            <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                viewBox="0 0 13.87 13.05" style="enable-background:new 0 0 13.87 13.05;" xml:space="preserve">
                                <path class="st0" d="M9.02,7.97c-0.04-0.01-0.09,0-0.13,0.02c-0.56,0.31-1.25,0.5-2,0.5c-0.75,0-1.44-0.19-2-0.5
                                    C4.85,7.96,4.8,7.96,4.76,7.97c-2.64,0.66-4.55,2.51-4.59,4.7c0.07,0.08,0.11,0.12,0.19,0.19c1.5,0,11.56,0,13.06,0
                                    c0.07-0.08,0.11-0.12,0.19-0.19C13.57,10.48,11.66,8.63,9.02,7.97z"/>
                                <circle class="st0" cx="6.89" cy="3.49" r="3.14"/>
                                <line class="st0" x1="3.56" y1="5.2" x2="3.56" y2="5.69"/>
                            </svg>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- responsive menu -->
            <div class="nav-responsive">
                <div class="eshop-part-resp">
                    <ul>
                        <li class="searchBox-resp" title="Hledat">
                            <!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                            <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                viewBox="0 0 20.07 19.78" style="enable-background:new 0 0 20.07 19.78;" xml:space="preserve">
                                <path class="st0" d="M7.67,0.21c-4.14,0-7.5,3.36-7.5,7.5s3.36,7.5,7.5,7.5s7.5-3.36,7.5-7.5S11.81,0.21,7.67,0.21z M7.67,12.93
                                c-2.89,0-5.22-2.34-5.22-5.22s2.34-5.22,5.22-5.22s5.22,2.34,5.22,5.22S10.55,12.93,7.67,12.93z"/>
                                <path class="st0" d="M18.7,19.08l0.81-0.81c0.22-0.22,0.22-0.59,0-0.81l-6.55-6.55c-0.22-0.22-0.59-0.22-0.81,0l-0.81,0.81
                                c-0.22,0.22-0.22,0.59,0,0.81l6.55,6.55C18.11,19.3,18.48,19.3,18.7,19.08z"/>
                            </svg>
                        </li>
                        <li class="nav-special-icon" title="Košík">
                            <a href="http://tension.local/kosik/">
                                <!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                    viewBox="0 0 24.64 19.36" style="enable-background:new 0 0 24.64 19.36;" xml:space="preserve">
                                    <path class="st0" d="M22.29,12.55H5.47c-0.15,0-0.27-0.09-0.3-0.22L3.2,1.58c0,0,0,0,0,0h20.65c0.37,0,0.65,0.3,0.59,0.62
                                    l-1.86,10.12C22.56,12.45,22.44,12.55,22.29,12.55z"/>
                                    <rect x="5.4" y="12.07" transform="matrix(0.9883 -0.1523 0.1523 0.9883 -2.031 1.0706)" class="st0" width="1.15" height="3.44"/>
                                    <circle class="st0" cx="6.39" cy="17.46" r="1.72"/>
                                    <path class="st0" d="M4.37,1.58H0.66c-0.23,0-0.41-0.19-0.41-0.43v-0.6c0-0.22,0.17-0.39,0.38-0.39H3.7c0.21,0,0.41,0.17,0.46,0.39
                                    L4.37,1.58z"/>
                                    <path class="st0" d="M21.89,16.22H5.94c-0.16,0-0.3-0.13-0.3-0.3v-0.68c0-0.16,0.13-0.3,0.3-0.3h15.95c0.16,0,0.3,0.13,0.3,0.3v0.68
                                    C22.19,16.08,22.06,16.22,21.89,16.22z"/>
                                    <circle class="st0" cx="21.25" cy="17.46" r="1.72"/>
                                </svg>
                            </a>
                        </li>
                        <li class="nav-special-icon" title="Profil">
                            <a href="http://tension.local/profil/">
                                <!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                    viewBox="0 0 13.87 13.05" style="enable-background:new 0 0 13.87 13.05;" xml:space="preserve">
                                    <path class="st0" d="M9.02,7.97c-0.04-0.01-0.09,0-0.13,0.02c-0.56,0.31-1.25,0.5-2,0.5c-0.75,0-1.44-0.19-2-0.5
                                    C4.85,7.96,4.8,7.96,4.76,7.97c-2.64,0.66-4.55,2.51-4.59,4.7c0.07,0.08,0.11,0.12,0.19,0.19c1.5,0,11.56,0,13.06,0
                                    c0.07-0.08,0.11-0.12,0.19-0.19C13.57,10.48,11.66,8.63,9.02,7.97z"/>
                                    <circle class="st0" cx="6.89" cy="3.49" r="3.14"/>
                                    <line class="st0" x1="3.56" y1="5.2" x2="3.56" y2="5.69"/>
                                </svg>
                            </a>
                        </li>
                    </ul>
                </div>

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
                    <div class="search-cross" title="Zavřít">
                        <!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                            viewBox="0 0 14.37 14.3" style="enable-background:new 0 0 14.37 14.3;" xml:space="preserve">
                            <path d="M13.89,13.49l-0.26,0.26c-0.33,0.33-0.86,0.33-1.18,0L0.63,1.93C0.3,1.6,0.3,1.07,0.63,0.74l0.26-0.26
                            c0.33-0.33,0.86-0.33,1.18,0L13.89,12.3C14.22,12.63,14.22,13.16,13.89,13.49z"/>
                            <path d="M0.63,13.49l0.26,0.26c0.33,0.33,0.86,0.33,1.18,0L13.89,1.93c0.33-0.33,0.33-0.86,0-1.18l-0.26-0.26
                            c-0.33-0.33-0.86-0.33-1.18,0L0.63,12.3C0.3,12.63,0.3,13.16,0.63,13.49z"/>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </header>

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