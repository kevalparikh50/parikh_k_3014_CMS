<?php  include "includes/db.php"; ?>

<?php

if(isset($_POST['create_user'])) {

$user_firstname = $_POST['user_firstname'];
$user_lastname = $_POST['user_lastname'];
$username = $_POST['username'];
$user_email = $_POST['user_email'];
$user_password = $_POST['user_password'];


if(!empty($user_firstname) && !empty($user_lastname) && !empty($username) && !empty($user_email) && !empty($user_password)) {

$query = "INSERT INTO users(user_firstname, user_lastname,username,
user_email,user_password) ";

$query .= "VALUES('{$user_firstname}','{$user_lastname}',
'{$username}','{$user_email}','{$user_password}') ";

$create_user_query = mysqli_query($con, $query);

if(!$create_user_query){

die('QUERY FAILED'. mysqli_error($con));

}

$message = "You are registered";       

} else{

$message = "Fields cannot be empty";

}                          


}else {

$message = ""; 
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Registration</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>

#form{
margin: 50px;
}

h1{
text-align: center;
margin-top: 10px;
}

</style>
</head>
<body>
<!--Navigation-->
<nav class="navbar navbar-expand-lg navbar-light">
<a class="navbar-brand" href="index.php">Movie Review CMS</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>
</nav>

<!-- Registration form -->
<h1>Registration</h1>
<section id="form"> 
<form action="" method="post">
<h6 class="text-center"><?php echo $message; ?></h6>
<div class="form-group">
<label for="title">Firstname</label>
<input type="text" class="form-control" name="user_firstname">
</div>
<div class="form-group">
<label for="title">Lastname</label>
<input type="text" class="form-control" name="user_lastname">
</div>

<div class="form-group">
<label for="post_tags">Username</label>
<input type="text" class="form-control" name="username">  
</div>

<div class="form-group">
<label for="post_content">Email</label>
<input type="email" class="form-control" name="user_email"> 
</div>

<div class="form-group">
<label for="post_content">Password</label>
<input type="Password" class="form-control" name="user_password"> 
</div>

<div class="form-group">
<input class="btn btn-primary" type="submit" name="create_user" value="Register">
</div>

</form>
</section>


</body>
</html>
