<?php
    /* CSS import */
    function tension_scripts() {
        wp_enqueue_style( 'stylesheets', get_template_directory_uri() . '/assets/css/style.css', array(), '1.0.0' );
    }
    add_action( 'wp_enqueue_scripts', 'tension_scripts' );
    /* JS import */
    /* allow SVG pics */
    add_filter( 'wp_check_filetype_and_ext', function($data, $file, $filename, $mimes) {
        global $wp_version;
        if ( $wp_version !== '4.7.1' ) {
            return $data;
        }
        $filetype = wp_check_filetype( $filename, $mimes );
        return [
            'ext'             => $filetype['ext'],
            'type'            => $filetype['type'],
            'proper_filename' => $data['proper_filename']
        ];
    }, 10, 4 );
    function cc_mime_types( $mimes ){
        $mimes['svg'] = 'image/svg+xml';
        return $mimes;
    }
    add_filter( 'upload_mimes', 'cc_mime_types' );
    /* remove admin bar */
    add_filter('show_admin_bar', '__return_false');
    /* menu */
    function tension_menu(){
        $locations = array(
            'primary' => 'Top Menu',
            'secondary' => 'Side Menu',
            'footer' => 'Footer Menu'
        );
        register_nav_menus($locations);
    }
    add_action('init','tension_menu');
