<?php
 include("connect.php");
 $examid=$_GET['examid'];
 $sql="Delete from examresult where id='$examid'";

 if(mysqli_query($con,$sql))

 {
	 echo "<script>location.replace('viewexamresult.php')</script>" ;
 }
 else
 {
	echo $con->error;
 }
 ?>