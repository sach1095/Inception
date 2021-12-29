<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
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
define( 'DB_NAME', 'MYSQL_DATABASE' );

/** MySQL database username */
define( 'DB_USER', 'MYSQL_USER' );

/** MySQL database password */
define( 'DB_PASSWORD', 'MYSQL_PASSWORD' );

/** MySQL hostname */
define( 'DB_HOST', 'MYSQL_HOST' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'KX|Ge<Qr%.K.Foo+DWy[13Xy-CDJf]_Y7De2P}&G-7g.Q;csn*lRK9cn*cR<4/y>');
define('SECURE_AUTH_KEY',  '$UStZ1Q?2Q(mM;kEr]g~7h^q+B:c>;1Ra @WNSnPk6sD+5dksw]|]&~-/F}Z432_');
define('LOGGED_IN_KEY',    'C&p|eD -zSqF$ICRT:YNA!GHEX?]|Xg=s3pY&n,]z8Z-Zrp]JI<,FRaTm@WOP(9@');
define('NONCE_KEY',        '5|kV#xy]c}cY;;,~|zN71R]u2V;F36.B@82z+4jz4OqgA<].T3Yincm+U@Te@ul=');
define('AUTH_SALT',        'JzN5U?Zwp>On[o9$L#1p[0PXFfe-zm#9{+6XHDa8bl3]Y2j1M65@+8@v^J2e`t<-');
define('SECURE_AUTH_SALT', 'NY$^|0gB9/_-,j@~tuxP-wIFfO JIF~lnW6&^7`|M)72~@8dIZ((Sl^tMgG,oh/-');
define('LOGGED_IN_SALT',   'hl:HH&zUO[MLc+w#ii-Ri4$8x[bo)D$G+&,j:I08Qn:%b|_r$MOhS4T)tQwi))<z');
define('NONCE_SALT',       'fRNiGlH6-q KxyWkmtZ;VkC6:WOMLtVKs[BxEDj]h`r:S?hX!oBU_r$*r,9ys}9;');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
?>
