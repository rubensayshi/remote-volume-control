<?php

$ifconfig = shell_exec("/sbin/ifconfig");

$n = preg_match_all("/inet (addr:)?(\d.+?) /", $ifconfig, $m);

for ($i = 0; $i < $n; $i++) {
    $addr = $m[2][$i];
   
    if (strpos($addr, "10.4.86") === 0) {
        echo $addr;
    }
}

