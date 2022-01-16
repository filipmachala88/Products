<?
    get_header();

    if (is_page('kontakt')){
        get_template_part('template-parts/page/topic','topic');
        include "template-parts/page/form-send.php";
        get_template_part('template-parts/page/contact','contact');
        get_template_part('template-parts/page/about','about');

    }
    elseif (is_page()){
        get_template_part('template-parts/page/topic','topic');
    }

    get_footer();
?>
