<?php
require 'connect.php';
session_start();
if($_SESSION['status']=='loggedin')
{
	$email = $_SESSION['user_email'];    
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
	<?php
	if(isset($_GET["viewBtn"]))
	{
		$postid = $_GET["noteID"];
		$sqlquery = "SELECT * FROM usernote WHERE noteId =".$postid;
		$res = mysqli_query($conn,$sqlquery);         
    	$data = mysqli_fetch_assoc($res); 
    	$originalDate = $data['uploadDate'];
		$newDate = date("d-m-Y h:i a", strtotime($originalDate));  
		$title = $data['title'];	
		$txt = $data['noteBody'];
		echo '<h2 class="pageTitle">'.$title.'</h2>';
		echo '<p class="subtitle">Created on '.$newDate.'</p>';
		echo '<div class="form-control viewtab"><div class="viewtabContent"><div class="viewText">'.$txt.'</div></div></div>';
		echo '<form action="#" method="GET">
				<input type="hidden" name="deletenoteID" value="'.$postid.'">
				<input type="submit" name="deleteBtn" value="Delete this note" class="viewBtn" id="delBtn">
				</form>';
	}
	if(isset($_GET["deleteBtn"]))
	{
		$post = $_GET["deletenoteID"];
		$sqlquery = "DELETE FROM usernote WHERE noteID =".$post;
		$res = mysqli_query($conn,$sqlquery);  
		if($res)
		{
			 echo "<script type='text/javascript'>alert('Note Deleted Succesfully!'); window.location='dashboard.php'</script>";
		}
	}
	?>
	
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
</html>

<?php
}
else
{
  header("location:index.php"); 
}

mysqli_close($conn);
?>