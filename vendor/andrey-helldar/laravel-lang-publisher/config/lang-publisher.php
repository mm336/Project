<?php

use Helldar\PrettyArray\Contracts\Caseable;

return [
    /*
     * Do arrays need to be aligned by keys before processing arrays?
     *
     * By default, true
     */

    'alignment' => true,

    /*
     * Key exclusion when combining.
     */

    'exclude' => [
        // 'auth' => ['throttle'],
        // 'pagination' => ['previous'],
        // 'passwords' => ['reset', 'throttled', 'user'],
    ],

    /*
     * Change key case.
     *
     * Available values:
     *
     *   Helldar\PrettyArray\Contracts\Caseable::NO_CASE
     *   Helldar\PrettyArray\Contracts\Caseable::CAMEL_CASE
     *   Helldar\PrettyArray\Contracts\Caseable::KEBAB_CASE
     *   Helldar\PrettyArray\Contracts\Caseable::PASCAL_CASE
     *   Helldar\PrettyArray\Contracts\Caseable::SNAKE_CASE
     */
    'case'    => Caseable::NO_CASE,
];
