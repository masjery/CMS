<?php 
include "includes/header.php";
?>
<?php 
include "includes/navbar.php";
?>




<div class="row">
<!--main post ares area-->
<div class="col l9 m9 s12">
<?php


if(isset($_GET['id']))
{
  
  $id=$_GET['id'];
  $id=mysqli_real_escape_string($conn,$id);
  $id=htmlentities($id);
  $sql="select * from posts where id=$id";
  $res=mysqli_query($conn,$sql);
  if(mysqli_num_rows($res)>0)
  {
    $sql2="select view from posts where id=$id";
    $res2=mysqli_query($conn,$sql2);
    $row2=mysqli_fetch_assoc($res2);
    $view=$row2['view'];
    $view=$view+1;
    $sql3="update posts set view=$view where id=$id";
    mysqli_query($conn,$sql3);
    $row=mysqli_fetch_assoc($res);
    $title=$row['title'];
    $content=$row['content'];
?>

<div class="card-panel">
<h5 class="center"><?php echo ucwords($title);?></h5>
<p class="flow-text"><?php echo ucwords($content);?></p>

    



</div>

<?php
  }
}
else
{
  header("Location:index.php");
}
?>
</div>

<!--Sidebar area-->
<div class="col l3 m3 s12">
<?php
//include "includes/sidebar.php";
?>
</div>

</div>


<?php

    include "includes/footer.php";
?>




