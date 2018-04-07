<?php include "includes/header.php"; ?>
<?php include "includes/db.php"; ?>

<body>

<!-- attach navigation using php-->

<?php  include "includes/nav.php";  ?>

<!-- Page Content -->
<div class="container">

<div class="row">

<!-- Blog Entries Column -->
<div class="col-md-8">


<?php

if(isset($_POST['submit'])) {

$search = $_POST['search'];  

$query = "SELECT * FROM posts WHERE post_tags LIKE '%$search%' ";
$search_query = mysqli_query($con,$query);

if(!$search_query){
die("FAILED TO LOAD" . mysqli_error($con));
}

$count = mysqli_num_rows($search_query);

if($count == 0) {

echo "<h1>NO RESULTS FOUND</h1>";

}else{


while($row = mysqli_fetch_assoc($search_query)){
$post_title = $row['post_title'];
$post_author = $row['post_author'];
$post_date = $row['post_date'];
$post_image = $row['post_image'];
$post_content = $row['post_content'];

?>



<!-- First Blog Post -->
<h2>
<a href="post.php?p_id=<?php echo $post_id; ?>">
<?php echo $post_title ?>
</a>
</h2>
<p class="lead">
by
<a href="index.php">
<?php echo $post_author ?>
</a>
</p>
<p><span class="glyphicon glyphicon-time"></span>
<?php echo $post_date ?>
</p>
<hr>
<img class="img-responsive" src="images/<?php echo $post_image?>" alt="">
<hr>
<p>
<?php echo $post_content ?>
</p>

<hr>

<?php }  

}      

}

?>

</div>

<!-- Blog Sidebar Widgets Column -->
<?php include "includes/sidebar.php";  ?>


</div>
<!-- /.row -->

<hr>
<!-- include footer -->
<?php include "includes/footer.php";  ?>