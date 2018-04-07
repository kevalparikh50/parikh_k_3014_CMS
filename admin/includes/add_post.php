<?php

    if(isset($_POST['create_movie'])) {
        
        $post_title = $_POST['title'];
        $post_author = $_POST['author'];
        $post_category_id = $_POST['post_category_id'];
        $post_status = $_POST['post_status'];
        
        $post_image = $_FILES['image']['name'];
        $post_image_temp = $_FILES['image']['tmp_name'];
        
        $post_tags = $_POST['post_tags'];
        $post_content = $_POST['post_content'];
        $post_date = date('d/m/Y');
       
           
        move_uploaded_file($post_image_temp, "../images/$post_image");
        
$query = "INSERT INTO posts(post_category_id, post_title, post_author,post_date,post_image,
post_content,post_tags,post_status)";

$query .= "VALUES('{$post_category_id}','{$post_title}','{$post_author}',now(),'{$post_image}',
'{$post_content}','{$post_tags}','{$post_status}')";

$create_post_query = mysqli_query($con,$query);

    if(!$create_post_query){

    die("QUERY FAILED"); 
    }  
      // to add notification
    echo "Post Created: " . " " . "<a href='posts.php'>View Posts</a> ";      
    }
    
?>
    
    <!--enctype is  used for the image upload-->
<form action="" method="post" enctype="multipart/form-data">
    
    <div class="form-group">
        <label for="title">Movie Title</label>
        <input type="text" class="form-control" name="title">  
    </div>
    
    <div class="form-group">
        <label for="post_category">Movie Category Id</label>
        <input type="text" class="form-control" name="post_category_id">  
    </div>
    
    <div class="form-group">
        <label for="title">Movie Author</label>
        <input type="text" class="form-control" name="author">  
    </div>
    
    <div class="form-group">
        <label for="post_status">Movie Status</label>
        <input type="text" class="form-control" name="post_status">  
    </div>
    
    <div class="form-group">
        <label for="post_image">Movie Image</label>
        <input type="file" name="image">  
    </div>
    
    <div class="form-group">
        <label for="post_tags">Movie Tags</label>
        <input type="text" class="form-control" name="post_tags">  
    </div>
    
    <div class="form-group">
        <label for="post_content">Movie Content</label>
        <textarea class="form-cotrol" name="post_content" id="" cols="125" rows="10"></textarea> 
    </div>
    
    <div class="form-group">
        <input class="btn btn-primary" type="submit" name="create_movie" value="Create Movie">
    </div>
      
</form>