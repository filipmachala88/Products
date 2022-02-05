<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'gU1bobdDz6+/L6UdPqTGBW/2B4jnG0GAWYgZUaGnIBoyopfybCd1e/bpp0CWkNx3lbDy8ruhKtmAvDn8dzpC/Q==');
define('SECURE_AUTH_KEY',  'uBVFOSYY4Ed/Wq84hiOOiEDlrU8wcP7ynNkxUTpTCrN2CWKzA7dqDoVS0oByQ3s4zPdKB7VZ530QcJ2zIM11bQ==');
define('LOGGED_IN_KEY',    'pQLt0PrrBnV+iuuzo3KgxsDIEyfhhPbKNQZa+0fFw3HC3EhHvjZ50AmqT26zmP3xgS9ECrgpdV83BsW3Q8nEBQ==');
define('NONCE_KEY',        'XVSrIY0symTYHckjuFTZ64v5+VyN9aPZnC5gl+LZekGPXfjkkJZdkgIKZc3H/unlVMD5fN6WsViUFXso+HjyoQ==');
define('AUTH_SALT',        'TLLZQxD3vVrTgIrgu8upBE2Jektiv/cy0hQnc/PEhuA7DOdt3eqr79jFVkhpVluMDTH0KS6HNrVJ9bndl+EmDA==');
define('SECURE_AUTH_SALT', 'WfduTHsFbyiGfWWmxADqpEUZLkjOE3w9wUMYGycJhkhr0AkRIaaFyWaSv5ewU3i1G16FBANRusSMo+fKxetUoA==');
define('LOGGED_IN_SALT',   'f2EUwyEa4tcNJODATHVlfbGEIGJDPeP4jdj7pcKA8J4HzJgwftV7PPLPx4hkgGymFYcGKuYuyMIMYpo29+SSsQ==');
define('NONCE_SALT',       'vV2IumBA2O6gf6bRyZzozsE8jHXF2KocVjX5kqW/ms8tuZRZONKq2Cz+h9un3koCBTemRRwRCuWn3B5PrOAtFw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
