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
define('DB_NAME', 'Voomsway');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '.8L1y^DEU,aW>IzDz<PaSZN(K^#W4>GA45M9iM?WoVH<A<_8?Ehc}[wh[?bwQlpR');
define('SECURE_AUTH_KEY',  'SG%av65kT7~[mMXHb&ln7D1l@<Q{t|wQ4HIqjbs#/`7j8#z/]Z ^-mgp3bF3MKo(');
define('LOGGED_IN_KEY',    '#c41QN.5@9V6enH&[i0lRMDL|R$6_3Z/fjMNs/;h51hN8UMeHfl[gQU%)]fGsnUq');
define('NONCE_KEY',        'C(4J?U:|4s0t+=ypDh;y72_^r=<wa<@66Dj:gLx[5%e;y`VH@S-SHEPpvXo9#}&[');
define('AUTH_SALT',        'y;auG+$5]6qZv7uAb%lnR~~of1+n}_);`#7$c]~<.x<o(18uq7n#VmSC*r00veo(');
define('SECURE_AUTH_SALT', '{/R/c<4]]e/i]H6q/MwzI*ETx$o<@ vA3$_Sn_?:lc+.}V)+jNp!6[DQ`|d0>KZe');
define('LOGGED_IN_SALT',   '?H/M`g$NJL(4e]Q-=lMbF=r{Tk1HKoqP%?|(Hb+glq[<t=F8O6LqjBfsv^tG/^k6');
define('NONCE_SALT',       '$@[%)nlJ*b$]SZdoc=k[9FwOvfl#oX2F)NCXG`5Xom]K{ayT<$!-zH8hZS;tA,=u');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
