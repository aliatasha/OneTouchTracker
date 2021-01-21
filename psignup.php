<?php
  session_start();
  include('connect.php');
  if(empty($_SESSION['aid']))
  {
    echo "<script>window.location.href='adminlogin.php'</script>";
  }
  else
  {
    include('adminmenu.php');
  }
?>

<meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">
      <link rel="stylesheet"href="styles.css" >
      <link rel="stylesheet" href="w.css">
      <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
      <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>

<title>ONE TOUCH TRACKER</title>
<style>

</style>

  <script>
  $(function() {
      // Setup form validation on the #register-form element
    $("#myForm").validate({
    
        // Specify the validation rules
        rules: {
  			  sid: "required",
  				sname: "required",
  				school: "required",
  				address: "required",
  				pname: "required",
  				pid: "required",
  				pname: "required",
  				contact: "required",
  				email: {
                  required: true,
                  email: true
  				},
  				contact:{
  				required:true,
  				minlength:8,
  				maxlength:16,
  				number: true
				},		
			},
		
      // Specify the validation error messages
      messages: {
  		  sid: "<label><h5>Please Enter Student ID!</h5></label>",
        sname: "<label><h5>Please Enter Student Name!</h5></label>",
        address:"<label><h5>Please Enter Address</h5></label>",
        pid:"<label><h5>Please Enter Parent ID</h5></label>",
  			pname:"<label><h5>Please Enter Parent Name</h5></label>",
  			contact:"<label><h5>Please Enter Valid Contact No!</h5></label>",
        email:"<label><h5>Please Enter Valid Email Address!</h5></label>",
		  },
      submitHandler: function(form) {
          form.submit();
      }
    });
  });
</script>

<!DOCTYPE html>
<html>

<head>
  
</head>

</body>
</html>
<body>
<form method="post" id='myForm' novalidate="novalidate" enctype="multipart/form-data">
<center> 
&nbsp;&nbsp;&nbsp;&nbsp;
<table width='90%' border='0' align='center' style='position:absolute; top: 190px; left:180px;'>
  <tr align='center'>
    <td>
      <div class="w3-container w3-card-4 w3-light-grey w3-text-black " style='width:65%;  margin-bottom:35px;'>
      <h2 class="w3-center" style='color:#177F7D'><b>Add New Parent</b></h2>

      <div class="w3-row w3-section w3-center" style='width:60%'>
        <div class="w3-col" style="width:50px"></div>
          <div class="w3-rest">
            <input class="w3-input w3-border" name="pid" type="text" placeholder="Enter ID"  required>
          </div>
      </div>

      <div class="w3-row w3-section w3-center" style='width:60%'>
        <div class="w3-col" style="width:50px"></div>
          <div class="w3-rest">
            <input class="w3-input w3-border" name="pname" type="text" placeholder="Enter Name"  required>
          </div>
      </div>

      <div class="w3-row w3-section w3-center" style='width:60%'>
        <div class="w3-col" style="width:50px"></div>
          <div class="w3-rest">
            <input class="w3-input w3-border" name="password" type="password" placeholder="password"  required>
          </div>
      </div>

      <p class="w3-center">
      <input type='submit' class="w3-button w3-section w3-teal w3-ripple" value='Add Parent' name='signup'>
      </p>
      </center>
      </div>

      <?php
        if(isset($_POST['signup']))
        {
         
        $pname=$_POST['pname'];
        $pid=$_POST['pid'];
        $password = $_POST['password'];

        $query = "INSERT into parent (pid, password, pname) values ('$pid', '$password', '$pname')";

        $result = mysqli_query($con, $query);

        if($result){
          echo "<script>alert('New Parent added successfully');</script>";
        }
        else{
          echo $con->error;
        }

}
?>
		</td>
		</tr>
		</table>

</form>
</body>
</html>