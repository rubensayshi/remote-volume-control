<?php

$volume = $_GET['volume'];

if ((string)$volume !== (string)(int)$volume) {
    die();
}

$volume = (int)$volume;

shell_exec("amixer -D pulse sset Master {$volume}%");
