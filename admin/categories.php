<?php include "includes/admin_header.php"?>
<div id="wrapper">

<!-- navigation -->
<?php include "includes/admin_nav.php"?>


<div id="page-wrapper">

<div class="container-fluid">

<!-- Page Heading -->
<div class="row">
<div class="col-lg-12">



<div class="col-xs-6">

<?php

if(isset($_POST['submit'])) {

$cat_title =  $_POST['cat_title'];

if($cat_title == "" || empty($cat_title)) {

echo "This field should be not empty";
}else{

$query = "INSERT INTO categories(cat_title)";
$query .= "VALUE('{$cat_title}') ";

$create_category_query = mysqli_query($con,$query);           

if(!$create_category_query) {

die('QUERY FAILED' . mysqli_error($con));
}     

}
// to add notification
echo "Category Created";
}       


?>

<!-- add categories form-->

<form action="" method="post">
<div class="form-group">
<label class="cattitle">Add Categories</label>
<input type="text" class="form-control" name="cat_title">
</div>

<div class="form-group">
<input class="btn btn-primary" type="submit" name="submit" value="Add Categories">
</div>
</form>

<!--- update categories -->

<?php

if(isset($_GET['edit'])){

$cat_id = $_GET['edit'];

include "includes/update_categories.php";           
}


?>


</div>

<div class="col-xs-6">

<table class="table table-bordered table-hover">
<thead>
<tr>
<th>Id</th>
<th>Categories Title</th>
</tr>
</thead>
<tbody>

<?php          

// Add and Find categories query                            
$query = "SELECT * FROM  categories";
$select_categories = mysqli_query($con,$query);                                                      

while($row = mysqli_fetch_assoc($select_categories)){
$cat_id = $row['cat_id'];
$cat_title = $row['cat_title'];    

echo "<tr>";    
echo "<td>{$cat_id}</td>";
echo "<td>{$cat_title}</td>";
echo "<td><a href='categories.php?delete={$cat_id}'>Delete</a></td>";
echo "<td><a href='categories.php?edit={$cat_id}'>Edit</a></td>";
echo "</tr>";        
}       

?>


<?php
// Delete categories query    
if(isset($_GET['delete'])){ 
$the_cat_id = $_GET['delete'];
$query = "DELETE FROM categories WHERE cat_id = {$the_cat_id}";  
$delete_query = mysqli_query($con,$query);
//  refresh the page
header("Location: categories.php");    
}                               


?>
</tbody>
</table>

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