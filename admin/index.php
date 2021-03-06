<?php include "includes/admin_header.php"?>
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

<small> <?php echo $_SESSION['username'] ?></small>
</h1>


<!-- /.row -->
<div class="row">
<div class="col-lg-5 col-md-6">
<div class="panel panel-primary">
<div class="panel-heading">
    <div class="row">
        <div class="col-xs-3">
            <i class="fa fa-file-text fa-5x"></i>
        </div>
        <div class="col-xs-9 text-right">

            <!-- Post count query -->

<?php

$query = "SELECT * FROM posts";
$select_all_post = mysqli_query($con,$query);
$post_counts = mysqli_num_rows($select_all_post);

echo "<div class='huge'>{$post_counts}</div>";

?>

<h1>Movies</h1>
        </div>
    </div>
</div>
<a href="./posts.php">
    <div class="panel-footer">
        <span class="pull-left">View Details</span>
        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
        <div class="clearfix"></div>
    </div>
</a>
</div>
</div>

<div class="col-lg-5 col-md-6">
<div class="panel panel-green">
<div class="panel-heading">
    <div class="row">
        <div class="col-xs-3">
            <i class="fa fa-comments fa-5x"></i>
        </div>
        <div class="col-xs-9 text-right">


            <!-- comments count query -->

            <?php

$query = "SELECT * FROM comments";
$select_all_comment = mysqli_query($con,$query);
$comment_counts = mysqli_num_rows($select_all_comment);

echo "<div class='huge'>{$comment_counts}</div>";

?>

<h1>Comments</h1>
        </div>
    </div>
</div>
<a href="comments.php">
    <div class="panel-footer">
        <span class="pull-left">View Details</span>
        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
        <div class="clearfix"></div>
    </div>
</a>
</div>
</div>

<div class="col-lg-5 col-md-6">
<div class="panel panel-yellow">
<div class="panel-heading">
    <div class="row">
        <div class="col-xs-3">
            <i class="fa fa-user fa-5x"></i>
        </div>
        <div class="col-xs-9 text-right">

            <!-- users count query -->

            <?php

$query = "SELECT * FROM users";
$select_all_user = mysqli_query($con,$query);
$user_counts = mysqli_num_rows($select_all_user);

echo "<div class='huge'>{$user_counts}</div>";

?>



<h1>Users</h1>
        </div>
    </div>
</div>
<a href="users.php">
    <div class="panel-footer">
        <span class="pull-left">View Details</span>
        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
        <div class="clearfix"></div>
    </div>
</a>
</div>
</div>

<div class="col-lg-5 col-md-6">
<div class="panel panel-red">
<div class="panel-heading">
    <div class="row">
        <div class="col-xs-3">
            <i class="fa fa-list fa-5x"></i>
        </div>
        <div class="col-xs-9 text-right">

            <!-- categories count query -->
            <?php

$query = "SELECT * FROM categories";
$select_all_category = mysqli_query($con,$query);
$category_counts = mysqli_num_rows($select_all_category);

echo "<div class='huge'>{$category_counts}</div>";

?>


                <h1>Categories</h1>
        </div>
    </div>
</div>
<a href="categories.php">
    <div class="panel-footer">
        <span class="pull-left">View Details</span>
        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
        <div class="clearfix"></div>
    </div>
</a>
</div>
</div>
</div>
<!-- /.row -->
</div>
</div>
<!-- /.row -->

</div>
<!-- /.container-fluid -->

</div>
<!-- /#page-wrapper -->

<!-- footer -->
<?php include "includes/admin_footer.php"?>