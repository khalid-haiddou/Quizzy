<?php

require_once "../../Connection/connect.php";
session_start(); 
if(isset($_SESSION['user_role'])){
    $user_role = $_SESSION['user_role'];
    if ($user_role) {
         header ('Location: ../index.php');
    }else{
         header ('Location: ../add-courses.html');
    }
}
else{
     header ('Location: ../page-login.html');
}

?>