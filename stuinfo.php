<?php
  session_start();
  include('connect.php');

    //'check if parent logged in'
    if(empty($_SESSION['pid']))
    {
      echo "<script>window.location.href='parentlogin.php'</script>";
    }
    else
    {
      include('parentmenu.php');
      include("connect.php");
      $pid=$_SESSION['pid'];
      $pro="select * from student where pid='$pid'";
      $prof=mysqli_query($con, $pro);

      $pro2="select * from student where pid='$pid'";
      $prof2=mysqli_query($con, $pro2);

      while($row=mysqli_fetch_array($prof2)){
        $parentname = $row['pname'];
      }
    }     
?>
<style>
</style>

<!-- Latest compiled JavaScript -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<title>ONE TOUCH TRACKER</title>

<form method='POST' >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"href="styles.css" >
<link rel="stylesheet" href="w.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" ></script>
<script type="text/javascript" src="\OneTouchTracker\OneTouchTracker\scripts.js"></script>
<div class="container">
      <div class="row">
      <div><br>
        <center><h2 class="w3-center" style='color:#177F7D; position:absolute;  top: 100px; left:730px;'><b>Parent: <?php echo $parentname ?></b></h2></center> 
      </div>

  <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" style='position:absolute;  top: 180px; left:100px;'>

  <?php 
        while($pr=mysqli_fetch_array($prof)){
          echo"<div class='panel panel-info' style='border:1px solid #ADD8E6'>
          <div class='panel-heading' style='background-color:#ADD8E6'>
            <h3 class='panel-title' style='color:black'><b>".$pr['sname']."</b></h3>
          </div>
            <div class='panel-body'>
              <div class='row'>
                <div class='col-md-3 col-lg-3'  align='center'> 
                  <img alt='User Pic' src='images/".$pr['image']."'class='img-thumbnail' position='relative'> 
                </div>
                <div class='col-md-9 col-lg-9' > 
                  <table class='table table-user-information'>
                    <tbody style='font-size:14px'>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style='color:grey;'>Name</b></td>
                        <td>".$pr['sname']."</td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style='color:grey;'>Grade</b></td>
                        <td>".$pr['grade']."</td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style='color:grey;'>Class</b></td>
                        <td>".$pr['class']."</td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style='color:grey;'>Contact</b></td>
                        <td>".$pr['contact']."</td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style='color:grey;'>Email</b></td>
                        <td>".$pr['email']."</td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style='color:grey;'>Address</b></td>
                        <td>".$pr['address']."</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>";
        }
      ?>
    </div>


      </div>
      </div>
 <br><br>