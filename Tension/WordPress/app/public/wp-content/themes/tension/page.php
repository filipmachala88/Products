<?
    get_header();

    get_template_part('template-parts/page/topic','topic');
    if (is_page('kontakt')){

        include "template-parts/page/form-send.php";
        get_template_part('template-parts/page/contact','contact');
        get_template_part('template-parts/page/about','about');

    }
    elseif (is_page('galerie')){
        get_template_part('template-parts/page/galery','galery');
    }
    elseif (is_page()){
        get_template_part('template-parts/page/text','text');
    }

    get_footer();
?>
