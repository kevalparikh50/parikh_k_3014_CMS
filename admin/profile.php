<?php include "includes/admin_header.php"?>

<?php

if(isset($_SESSION['username'])){

$username = $_SESSION['username'];

$query = "SELECT * FROM users WHERE username = '{$username}' ";

$select_profile_query = mysqli_query($con, $query); 

while($row = mysqli_fetch_array($select_profile_query)){

$user_id = $row['user_id'];
$username = $row['username'];
$user_password = $row['user_password'];
$user_firstname = $row['user_firstname'];      
$user_lastname = $row['user_lastname'];        
$user_email = $row['user_email']; 
$user_image = $row['user_image'];
$user_role = $row['user_role'];    
}    

}

?>


<?php


if(isset($_POST['edit_user'])) {


$user_firstname = $_POST['user_firstname'];
$user_lastname = $_POST['user_lastname'];
$user_role = $_POST['user_role'];


$username = $_POST['username'];
$user_email = $_POST['user_email'];
$user_password = $_POST['user_password'];

$query = "UPDATE users SET ";
$query .="user_firstname = '{$user_firstname}', "; 
$query .="user_lastname = '{$user_lastname}', "; 
$query .="user_role = '{$user_role}', "; 
$query .="username = '{$username}', "; 
$query .="user_email = '{$user_email}', "; 
$query .="user_password = '{$user_password}' "; 
$query .= "WHERE username = '{$username}' ";

$edit_user_query = mysqli_query($con, $query);

if(!$edit_user_query){
die("QUERY FAILED ." . mysqli_error($con));
}

// to add notification
echo "Profile Edited: " . " " . "<a href='profile.php'>View Profile</a>";      
}

?>

<div id="wrapper"> 
<!-- navigation -->
<?php include "includes/admin_nav.php"?>


<div id="page-wrapper">

<div class="container-fluid">

<!-- Page Heading -->
<div class="row">
<div class="col-lg-12">


<h1 class="page-header">
Welcome to the Admin Page
<small>Author</small>
</h1>                                             

<form action="" method="post">

<div class="form-group">
<label for="title">Firstname</label>
<input type="text" value="<?php echo $user_firstname; ?>" class="form-control" name="user_firstname">  
</div>

<div class="form-group">
<label for="post_status">Lastname</label>
<input type="text" value="<?php echo $user_lastname; ?>" class="form-control" name="user_lastname">  
</div>

<div class="form-group">
<select name="user_role" id="">
<option value="user"><?php echo $user_role; ?></option>  
<?php

if($user_role == 'admin'){

echo '<option value="User">user</option>';
} else {

echo '<option value="Admin">admin</option>';
}


?>

</select>
</div>


<div class="form-group">
<label for="post_tags">Username</label>
<input type="text" value="<?php echo $username; ?>" class="form-control" name="username">  
</div>

<div class="form-group">
<label for="post_content">Email</label>
<input type="email" value="<?php echo $user_email; ?>" class="form-control" name="user_email"> 
</div>

<div class="form-group">
<label for="post_content">Password</label>
<input type="Password" value="<?php echo $user_password; ?>" class="form-control" name="user_password"> 
</div>

<div class="form-group">
<input class="btn btn-primary" type="submit" name="edit_user" value="Edit Profile">
</div>

</form>



</div>       

</div>
</div>
<!-- /.row -->

</div>
<!-- /.container-fluid -->

</div>
<!-- /#page-wrapper -->

<!-- footer -->
<?php include "includes/admin_footer.php"?>
