<?php
require 'connect.php';
session_start();
if($_SESSION['status']=='loggedin')
{
	               
?>
<!DOCTYPE html>
<html>
<head>
    <title>Diary - Pour Your Heart Out!</title>
    <!-- <meta charset="utf-8"> -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="images/logo.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body class="db" onload="enableEditMode()">
<div class="left col-md-11">
	<h2 class="pageTitle">Add A New Note</h2>
	<form action="#" method="POST" class="newNote">
		<iframe src="" name="richTextField" width="1000px" height="500px"></iframe>



		<div class="form-group bottomBtns">
			<a href="dashboard.php" class="btn cancelBtn">Cancel</a>
			<input type="Submit" name="createNote" id="createNote" class="btn btn-primary" value="Save">
		</div>
	</form>
</div>
<div class="right col-md-1">
	<p>Hi, 
   	<?php                                                          	
		$email=$_SESSION['user_email'];
    	$sql="SELECT FirstName FROM user WHERE Email='".$email."'";
    	$fname = mysqli_query($conn,$sql);                                
    	while ($row=$fname->fetch_assoc()) {                            	
			echo $row['FirstName'];
  		}                                                   
	?>
	</p>
	
	<!-- logout button -->
	<a class="logoutBtn" href="logout.php">Logout</a>
</div>

</body>
<script type="text/javascript">
	function enableEditMode()
	{
		richTextField.document.designMode="On";
	}
</script>
</html>

<?php
}
else
{
  header("location:index.php"); 
}
if(isset($_POST["searchBtn"]))
{
	$title = $_POST["searchTitle"];
	// add query here
}
mysqli_close($conn);
?>