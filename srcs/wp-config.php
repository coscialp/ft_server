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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_db' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '4n0iL|Qp9},F|//-+ yQ1@R^i[k6f<lukm;ql~CB)?cd?, *c1alPHgO');
define('SECURE_AUTH_KEY',  'fLd+YK-+HYv# MN{*H}X9C6O)+dr2j.myUBl|V-z$w:2ne6/%6f^<Ka,');
define('LOGGED_IN_KEY',    '3/.E1p#2>/)??r/SZpk|KaJwCp#3.m|QD=RR:2xV[?A-[)hMJ>8W?J*G');
define('NONCE_KEY',        'VU*:g:K<U`9kYp)eC6[V5@#|o+<qQ.&BW6Nrd246*]C|mXPx|X)QO2br');
define('AUTH_SALT',        'C4(m!|(og+dT1{Sa7>-+(AfZ*MM?n`0Ca.Zt4)kNIH0IV*haxRH&cX@s');
define('SECURE_AUTH_SALT', 'U4uQg~lD$D$p/J 5TL2 Lw|N6N3NoA5Ke<}CaiE(zn$JHwt~=I&~Nb?f');
define('LOGGED_IN_SALT',   '$C>YP0WxO-ztlKL).IlJq5K5X4XqSqMkz@uld?*FYYx)s4gx,1wLVQo1');
define('NONCE_SALT',       '#Cva$P =&8&>x$GYZ{Y;5V+]wp6u!hE9:|*`vTw+o{j|O@iZaFW%~%hE');

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );