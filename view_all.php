

<?php 
include("dp.php");
include("projectbegin.php");

?>
<head>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">



<div class ="panel panel-default">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>
<div class ="panel-heading">


<h2>


<a class="btn btn-success" href="add.php"> add student </a>
<a class="btn btn-info pull-right" href="index.php"> back</a>
</h2>

</div>


<div class ="panel panel-body">
<form action= "index.php" method="post">
<table class="table table-striped">
<tr>

<th>serial number</th> <th>dates</th> <th>show attendance</th>
</tr>

<?php $result=mysqli_query($conn,"select * from attendance_records");
$serialnumber=0;


while($row=mysqli_fetch_array($result))
{
$serialnumber++;

?>
<tr>
<td> <?php echo $serialnumber;?></td>
<td> <?php echo $row['date'];?>
<input type="hidden" value="<?php echo $row['student_name'];?>" name="student_name[]">
</td>

</tr>

<td>
<form action="show_attendance.php">

<input type="hidden" value="<?php echo $row['date'] ?>" name="date"> 
<input type="submit" value="show_attendance" class="btn btn-primary">
</form>
</td>
</table>
</form>
</div>
</head>