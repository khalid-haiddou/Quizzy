<?php
    $DBname='sql8666133';
    $Servername='sql8.freesqldatabase.com';
    $Username='sql8666133';
    $password='zYYrk7Juds';

    $conn= new mysqli($Servername,$Username,$password,$DBname);

    if(!$conn){
        die("Connection failed: " . mysqli_connect_error());
    }else{
        echo "connected ";
    }
     
?>