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

<style>
*{
  font-style: normal;
  
}

.sidebar-container {
    position: fixed;
    
    width: 260px;
    height: 100%;
    left: 0;
    overflow-x: hidden;
    overflow-y: auto;
    background: #1a1a1a;
    color: #fff;
  }
  
  .content-container {
    padding-top: 30px;
  }
  
  .sidebar-logo {
    
    padding: 10px 10px 10px 40px;
    font-size: 20px;
    background-color:#177F7D;
  }
  
  .sidebar-navigation {
    padding: 0;
    margin: 0;
    list-style-type: none;
    position: relative;
  }
  
  .sidebar-navigation li {
    background-color: transparent;
    position: relative;
    display: inline-block;
    width: 100%;
    line-height: 20px;
  }
  
  .sidebar-navigation li a {
    padding: 10px 15px 10px 30px;
    display: block;
    color: #fff;
  }
  
  .sidebar-navigation li .fa {
    margin-right: 10px;
  }
  
  .sidebar-navigation li a:active,
  .sidebar-navigation li a:hover,
  .sidebar-navigation li a:focus {
    text-decoration: none;
    outline: none;
  }
  
  .sidebar-navigation li::before {
    background-color: #177F7D;
    position: absolute;
    content: '';
    height: 100%;
    left: 0;
    top: 0;
    -webkit-transition: width 0.2s ease-in;
    transition: width 0.2s ease-in;
    width: 3px;
    z-index: -1;
    
  }
  .sidebar-navigation li:hover::before {
    width: 100%;
  }
  
  .sidebar-navigation .header {
    font-size: 12px;
    text-transform: uppercase;
    background-color: #151515;
    padding: 10px 15px 10px 30px;
  }
  
  .sidebar-navigation .header::before {
    background-color: transparent;
  }
  
  .content-container {
    padding-left: 220px;
  }

.sidebar-container .sidebar .social_media{
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
  display: flex;
}

.wrapper .social_media a{
  display: block;
  width: 40px;
  background: 	#FFFFFF;
  height: 40px;
  line-height: 45px;
  text-align: center;
  margin: 10px 5px;
  color: #bdb8d7;
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
}

.wrapper .main_content{
  width: 100%;
  margin-left: 200px;
}

.wrapper .main_content .headerr{
  padding: 10px;
  background: #177F7D;
  text-align: right;

  color: #fff;
  border-bottom: 1px solid #e0e4e8;
  font-size: 17px;
}

.wrapper .main_content .info{
  margin: 20px;
  color: #717171;
  line-height: 25px;
}

.wrapper .main_content .info div{
  margin-bottom: 20px;
}
</style>

<script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="jquery.validate.min.js"></script>
  <script>
  $(function() {
      // Setup form validation on the #register-form element
    $("#myForm").validate({
    
        // Specify the validation rules
        rules: {
  			  sid: "required",
  				sname: "required",
  			//	school: "required",
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


</body>
</html>
<body>
<form method="post" id='myForm' novalidate="novalidate" enctype="multipart/form-data">
<center> 
&nbsp;&nbsp;&nbsp;&nbsp;
<table width='90%' border='0' align='center' style='position:absolute; top: 150px; left:180px;'>
  <tr align='center'>
    <td>
      <div class="w3-container w3-card-4 w3-light-grey w3-text-black " style='width:65%;  margin-bottom:35px;'>
      <h2 class="w3-center" style='color:#177F7D'><b>Add Student</b></h2>
      <div class="w3-row w3-section " style='width:60%;'>
        <div class="w3-col" style="width:50px;"></div>
          <div class="w3-rest">
            <input class="w3-input w3-border" name="sid" type="text" value="" placeholder="Enter Student Id">
          </div>
      </div>
      <div class="w3-row w3-section " style='width:60%;'>
        <div class="w3-col" style="width:50px;"></div>
          <div class="w3-rest">
            <input class="w3-input w3-border" name="sname" type="text" placeholder="Enter Student Name" required>
          </div>
      </div>
      <div class="w3-row w3-section w3-center" style='width:60%'>
        <div class="w3-col" style="width:50px"></div>
          <div class="w3-rest">
            <input type='file' name='image' class='w3-border' style='width:100%' required>
          </div>
      </div>

    <!--  <div class="w3-row w3-section" style='width:60%'>
        <div class="w3-col" style="width:50px"></div>
          <div class="w3-rest">
            <select type="text" class="w3-input w3-border" name='school' id='school' style='color:grey' required>
      		    <?php  
      		      if (isset($_POST['school']))
      		      {
                  echo "<option>".$_POST['school']."</option>";
      		      }
      		      else
      		      {

      		      }
      		    ?>
      		   <option value=''>--Select School--</option>
      		  <?php
              $sql5="select * from class";
              //$cnt=$cnt+1;
              $res = $con->query($sql5);
              while($row = $res->fetch_assoc()){
      			?>

      			<option value="<?php echo $row['school'] ?>"/><?php echo $row['school'] ?></option>
      		
      			<?php } ?>
      		</select>
          </div>
      </div>-->

      <div class="w3-row w3-section" style='width:60%'>
        <div class="w3-col" style="width:50px"></div>
          <div class="w3-rest">
           <select type="text" class="w3-input w3-border" name='grade' id='grade' style='color:grey' required>
            <?php  
      		    if (isset($_POST['grade']))
              {
                echo "<option>".$_POST['grade']."</option>";
              }
              else
              {

              }
      		  ?>
      		   <option value=''>--Select Grade--</option>
      		  <?php
        		 $sql5="select * from class";
        		  //$cnt=$cnt+1;
        		 $res = $con->query($sql5);
      		while($row = $res->fetch_assoc()) 
      		{
      			?>
      			<option value="<?php echo $row['grade'] ?>"/><?php echo $row['grade'] ?></option>
      			<?php } ?>
      		</select>
          </div>
      </div>

      <div class="w3-row w3-section" style='width:60%'>
        <div class="w3-col" style="width:50px"></div>
          <div class="w3-rest">
           <select type="text" class="w3-input w3-border" name='class' id='class' style='color:grey' required>
      		   <?php  
      		   if (isset($_POST['class']))
      		 {
      			  echo "<option>".$_POST['class']."</option>";
      		 }
      		 else
      		 {
      		 }
      		 ?>
      		   <option value=''>--Select Class--</option>
      		  <?php
      		 $sql5="select * from class";
      		  //$cnt=$cnt+1;
      		 $res = $con->query($sql5);
      		while($row = $res->fetch_assoc()) 
      		{
      			?>
      			<option value="<?php echo $row['class'] ?>"/><?php echo $row['class'] ?></option>
      		 
      			<?php }
      			
      			
      		?>
      		</select>
          </div>
      </div>

      <div class="w3-row w3-section w3-center" style='width:60%'>
        <div class="w3-col" style="width:50px"></div>
          <div class="w3-rest">
            <textarea name='address' class="w3-input w3-border" placeholder="Enter Address" style='width:100%' required></textarea>
          </div>
      </div>

      <div class="w3-row w3-section w3-center" style='width:60%'>
        <div class="w3-col" style="width:50px"></div>
          <div class="w3-rest">
            <input class="w3-input w3-border" name="pid" type="text" placeholder="Enter Parent ID"  required>
          </div>
      </div>

      <div class="w3-row w3-section w3-center" style='width:60%'>
        <div class="w3-col" style="width:50px"></div>
          <div class="w3-rest">
            <input class="w3-input w3-border" name="pname" type="text" placeholder="Enter Parent Name"  required>
          </div>
      </div>

      <div class="w3-row w3-section w3-center" style='width:60%'>
        <div class="w3-col" style="width:50px"></div>
          <div class="w3-rest">
            <input class="w3-input w3-border" name="contact" type="text" placeholder="Enter Parent Contact"  required>
          </div>
      </div>

      <div class="w3-row w3-section w3-center" style='width:60%'>
        <div class="w3-col" style="width:50px"></div>
          <div class="w3-rest">
            <input class="w3-input w3-border" name="email" type="text" placeholder="Enter Parents Email ID"  required>
          </div>
      </div>

      <p class="w3-center">
      <input type='submit' class="w3-button w3-section w3-teal w3-ripple" value='Add Student' name='add'>
      </p>
      </center>
      </div>

      <?php
        if(isset($_POST['add']))
        {
          $file=$_FILES['image']['tmp_name'];
          $iname=$_FILES['image']['name'];
          if(isset($iname))
          {
            if(!empty($iname))
            {      
              $location = 'images/';      
              if(move_uploaded_file($file, $location.$iname))
              {
                'uploaded';
              }
            } 
          }			
        else
        {
          'please upload';
        }
					
        $sid=$_POST['sid'];
        $sname=$_POST['sname'];	
        $image=$iname;
        //$school=$_POST['school'];
        $grade=$_POST['grade'];
        $class=$_POST['class'];
        $address=$_POST['address'];
        $pname=$_POST['pname'];
        $contact=$_POST['contact'];
        $email=$_POST['email'];
        $pid=$_POST['pid'];

        $query = "SELECT pid, pname FROM parent WHERE pid = '$pid' LIMIT 1";
        $result = mysqli_query($con, $query);
        while($row = mysqli_fetch_array($result)){

          if ($row['pid'] === $pid){
            $sql="INSERT into student 
            (sid, sname, image, grade, class, address, pid, pname, contact, email) 
            values
            ('$sid','$sname','$image','$grade','$class','$address','$pid','$pname','$contact','$email')";

            $result1 = mysqli_query($con, $sql);
            if($result1){
              echo "Successfully added to database";
            }
            else{
              echo $con->error;
            }

            //$sql2 = "UPDATE "
          }
          else{
            echo "<script>window.location.href='psignup.php'</script>";
          }
        }
}
?>
		</td>
		</tr>
		</table>

</form>
</body>
</html>