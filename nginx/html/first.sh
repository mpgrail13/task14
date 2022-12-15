#!/bin/bash
cpu=$(cat /proc/stat |grep cpu |tail -1|awk '{print ($5*100)/($2+$3+$4+$5+$6+$7+$8+$9+$10)}'|awk '{print "CPU Usage: " 100-$1}')
cat <<- _EOF_
<html>
<head>
<meta http-equiv="refresh" content="1" />
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. $cpu</p>

<p>If you want to see page on different port press
<a href="https://playsdevtask4.hopto.org/page2:1234">
        <button class="btn btn-primary btn-lg">here</button></a>.<br/>

<p>If you want to download a song press
<a href="https://playsdevtask4.hopto.org/music">
        <button class="btn btn-primary btn-lg">here</button></a>.<br/>

<p>If you want to see PHP server info press
<a href="https://playsdevtask4.hopto.org/info.php">
        <button class="btn btn-primary btn-lg">here</button></a>.<br/>
<p>If you want to see another server press
<a href="https://playsdevtask4.hopto.org/secondserver">
        <button class="btn btn-primary btn-lg">here</button></a>.<br/>
<p>If you want to see RedBlue press
<a href="https://playsdevtask4.hopto.org/redblue">
        <button class="btn btn-primary btn-lg">here</button></a>.<br/>
<p>If you want to see first image press
<a href="https://playsdevtask4.hopto.org/image1">
        <button class="btn btn-primary btn-lg">here</button></a>.<br/>
<p>If you want to see second image press
<a href="https://playsdevtask4.hopto.org/image2">
        <button class="btn btn-primary btn-lg">here</button></a>.<br/>
</body>
</html>
_EOF_
