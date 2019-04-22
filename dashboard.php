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
<body class="db">
<div class="left col-md-11">
	<form action="#" method="POST" class="header">
		<div class="form-group">
			<input type="text" class="form-control" name="searchTitle" id="searchBox" placeholder="Search by Title">
		</div>
		<div class="form-group">
			<input type="submit" class="btn fa-search fas fa-input btn-primary searchBtn" name="searchBtn" id="searchBtn" value="&#xf002;">
		</div>
	</form>
	<table class="recentNotes">
	<thead>
		<tr>
			<th scope="col" style="border: 1px solid yellow;">Date</th>
			<th scope="col" style="border: 1px solid yellow;">Note</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td width="200">22/04/2019</td>
			<td  width="800">
				<p>Title</p>
				<p>hello blah blah...</p>
			</td>
		</tr>
		<tr>
			<td width="200">21/04/2019</td>
			<td  width="800">
				<p>Title2</p>
				<p>Avengers</p>
			</td>
		</tr>
	</tbody>
</table>
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
	<!-- Add note button -->
	<a class="newBtn" href="newnote.php"><i class="fas fa-plus"></i></a>
	<!-- logout button -->
	<a class="logoutBtn" href="logout.php">Logout</a>
</div>

</body>
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