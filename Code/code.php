<?php
include('dbconfig.php');

if(isset($_POST['signbtn'])){ // Code for sinup functionality of the app
    $username= $_POST['username'];
    $email= $_POST['email'];
    $password= $_POST['password'];

    $query  = "insert into userdetails(username,email,password) values ('$username','$email','$password')";
    $query_run = mysqli_query( $conn, $query);

    if($query_run){
        header('Location: login.php');
    }
    else{
        header('Location: index.php');
    }
}

if(isset($_POST['loginbtn']))// here this is the code for the login  functionality
{
    $email= $_POST['email'];
    $password= $_POST['password'];

    $query= "select * from userdetails where email='$email' and  password='$password'";
    $query_run= mysqli_query($conn, $query);

    if(mysqli_fetch_array($query_run)){
        header('Location: subscription1.php');
    }

    else{
        header('Location: login.php');
    }

}