<?php include "db.php"; ?>

<?php session_start(); ?>


<?php  

if(isset($_POST['login'])){

$username = $_POST['username'];
$password = $_POST['password'];

$username = mysqli_real_escape_string($con,$username); 
$password = mysqli_real_escape_string($con,$password); 

$query = "SELECT * FROM users WHERE username = '{$username}' ";
$select_user = mysqli_query($con,$query);         
if(!$select_user){

die("QUERY FAILED". mysqli_error($con));
}  

while($row = mysqli_fetch_array($select_user)){

$db_id = $row['user_id'];
$db_username = $row['username']; 
$db_password = $row['user_password'];      
$db_firstname = $row['user_firstname'];
$db_lastname = $row['user_lastname'];
$db_role = $row['user_role'];  

}

if($username === $db_username && $password === $db_password ) {

//sessions
$_SESSION['username'] = $db_username;
$_SESSION['firstname'] = $db_firstname;  
$_SESSION['lastname'] = $db_lastname;        
$_SESSION['user_role'] = $db_role;        

header("Location: ../admin");      


}else {

header("Location: ../index.php");
}


}



?>








