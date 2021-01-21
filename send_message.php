<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<?php
	date_default_timezone_set("Asia/Kuala_Lumpur");
	include 'connect.php';
	require __DIR__ . "/vendor/autoload.php";
	//use Dotenv\Dotenv;
	use Twilio\Rest\Client;

	//$dotenv=Dotenv::createImmutable(__DIR__);
	//$dotenv->load();

	

	function send_message($contact){

		$twilioSid    = getenv("TWILLIO_SID");
		$twilioToken  = getenv("TWILLIO_TOKEN");
		
		$twilio = new Client($twilioSid, $twilioToken);
		$message = $twilio->messages
		                ->create(
		                    "whatsapp:+6" .$contact."",
		                    array(
		                        "body" => "Please inform that your children is absence to school today - One Touch Tracker",
		                        "from" => "whatsapp:+14155238886",
		                     
		                    )
		                );
	}

	$today_date = date('Y-m-d');
	//echo date('Y-m-d');
	//echo "<br>";
	//echo date('Y-M-d');
	$query = "SELECT * FROM student";
	$result = mysqli_query($con, $query);

	$temp = array();
	$temp2 = array();

	$query2 = "SELECT * FROM arrival WHERE `date` = '$today_date' GROUP BY sname";
	$result2 = mysqli_query($con, $query2);

	while ($row = mysqli_fetch_assoc($result)) {
		$temp[] = $row['sid'];
	}

	while ($row2 = mysqli_fetch_assoc($result2)) {
		$temp2[] = $row2['sid'];
	}

	//print_r($temp);
	//print_r($temp2);

	$absent = array_diff($temp, $temp2);

	echo "Sending message to: <br>";
	echo "<table class='table table-dark'>
	<tr>
		<th> Name </th>
		<th> Parent Name </th>
		<th> Contact </th>
		<th> Message Sent <th>
	</tr>";

	foreach ($absent as $absent_today){
		//echo $absent_today;
		$query3 = "SELECT * FROM student WHERE sid = '$absent_today'";
		$result3 = mysqli_query($con, $query3);
		while ($row3 = mysqli_fetch_assoc($result3)) {
			echo "<tr>";
				echo "<td>";
					echo $row3['sname'];
				echo "</td>";
				echo "<td>";
					echo $row3['pname'];
				echo "</td>";
				echo "<td>";
					echo $row3['contact'];
				echo "</td>";
				echo "<td>";
						echo date("d/m/Y H:i:s");
				echo "</td>";
				send_message($row3['contact']);
				
			echo "</tr>";
		}
	}
	echo "</table>";

?>