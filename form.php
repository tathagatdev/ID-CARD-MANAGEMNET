<?php 
session_start();
include('includes/config.php');
error_reporting(0);
if(isset($_POST['Register']))
{


$name=$_POST['name'];
$email=$_POST['email'];
$roll=$_POST['roll'];
$address=$_POST['address'];
$mobile=$_POST['mobile'];
$gender=$_POST['gender'];
$dob=$_POST['dob'];
$sql="INSERT INTO  tblstudents(name,email,roll,address,mobile,gender,dob) VALUES(:name,:email,:roll,:address,:mobile,:gender,:dob)";
$query = $dbh->prepare($sql);
$query->bindParam(':name',$name,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':roll',$roll,PDO::PARAM_STR);
$query->bindParam(':address',$address,PDO::PARAM_STR);
$query->bindParam(':mobile',$mobile,PDO::PARAM_STR);
$query->bindParam(':gender',$gender,PDO::PARAM_STR);
$query->bindParam(':dob',$dob,PDO::PARAM_STR);

$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
echo '<script>alert("Your Registration successfull ")</script>';
}
else 
{
echo "<script>alert('Something went wrong. Please try again');</script>";


}



}

?>
<! Doctype html>  
<html lang="en">  
<head>  
  <meta charset="utf-8">  
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">  
  <title>ID Card Registration Form </title>  
<style>  
input[type=radio] { width:20px; }  
input[type=checkbox]{ width:20px; }  
* {  
    padding: 0;  
    margin: 0;  
    box-sizing: border-box;  
}  
body {  
    margin: 50px auto;  
    text-align: center;  
    width: 800px;  
}  
input[type=reset] {  
  border: 3px solid;    
  border-radius: 2px;    
  color:black ;    
  display: block;    
  font-size: 1em;    
  font-weight: bold;    
  margin: 1em auto;    
  padding: 1em 4em;    
 position: relative;    
  text-transform: uppercase;    
}    
input[type=reset]::before   
{    
  background: #fff;    
  content: '';    
  position: absolute;    
  z-index: -1;    
}    
input[type=reset]:hover {    
  color: #1A33FF;    
}    
input {  
    border: 2px solid #ccc;  
    font-size: 1rem;  
    font-weight: 100;  
    font-family: 'Lato';  
    padding: 10px;  
}  
form {  
    margin: 20px auto;  
    padding: 20px;  
    border: 5px solid #ccc;  
    background: #8bb2eafa;  
}  
h1 {  
    font-family: sans-serif;  
  display: block;  
  font-size: 2rem;  
  font-weight: bold;  
  text-align: center;  
  letter-spacing: 3px;  
  color: hotpink;  
    text-transform: uppercase;  
}  
    input[type=submit] {    
  border: 3px solid;    
  border-radius: 2px;    
  color:black ;    
  display: block;    
  font-size: 1em;    
  font-weight: bold;    
  margin: 1em auto;    
  padding: 1em 4em;    
 position: relative;    
  text-transform: uppercase;    
}    
input[type=submit]::before   
{    
  background: #fff;    
  content: '';    
  position: absolute;    
  z-index: -1;    
}    
input[type=submit]:hover {    
  color: #1A33FF;    
}    
</style>  
</head>  
<body>  
<h1> ID Card Registration Form  </h1>  
<form method="post" enctype="multipart/form-data" action ="dashboard.php">  
<table>  
 <tr>  
    <td colspan="2"> <?php echo @$msg; ?> </td>  
 </tr>  
  <tr>  
    <td width="159"> <b> Enter your Name </b> </td>  
    <td width="218">  
    <input type="text" placeholder="Enter name" name = "name"  pattern="[a-z A-Z]*" required /> </td>  
  </tr>  
  <tr>  
    <td> <b> Enter your Email </b> </td>  
    <td> <input type="email" name="email" placeholder= "Enter Email" required > </td>  
  </tr>  
  <tr>  
    <td> <b> Enter your Roll Number </b> </td>  
    <td> <input type="text" name="roll" placeholder=" Enter Roll Number" required > </td>  
  </tr>  
  <tr>  
    <td> <b> Enter your Address </b> </td>  
    <td> <textarea name="address" required>  Enter Address </textarea> </td>  
  </tr>  
  <tr>  
    <td> <b> Enter your Mobile Number </b> </td>  
    <td> <input type="number" pattern="[0-9]*" name="mobile"  placeholder=" Enter number"  required> </td>  
  </tr>  
  <tr>  
    <td height="23"> <b> Select your Gender </b> </td>  
    <td>  
    Male <input type="radio" name="gender" value="m" required/>  
    Female <input type="radio" name="gender" value="f" required/>  
    </td>  
  </tr>  
  <tr>  
    <td> <b> Select your Date of Birth </b> </td>  
    <td>  
        <select name="dob">  
            <option value=""> Month </option>  
            <?php   
            for($i=1;$i<=12;$i++)  
            {  
            echo "<option value ='$i'>".$i."</option>";  
            }  
            ?>  
        </select>  
        <select name="dd">  
            <option value=""> Date </option>  
            <?php   
            for($i=1;$i<=31;$i++)  
            {  
            echo "<option value ='$i'>".$i."</option>";  
            }  
            ?>  
        </select>  
        <select name="yy">  
            <option value=""> Year </option>  
            <?php   
            for($i=1900;$i<=2022;$i++)  
            {  
            echo "<option value ='$i'>".$i."</option>";  
            }  
            ?>  
        </select>  
    </td>  
  </tr>  
  <tr>  
    <td colspan="2" align="center">  
    
   <input type ="submit" name="Register" value="Register"> 
    <input type="reset" value="Reset"/>  
    </td>  
  </tr>  
</table>  
</form>  
</body>  
</html>  
<?php  
extract($_POST);  
if(isset($save))  
{  
$dob=$yy."-".$mm."--".$dd;  
$h=implode(",",$hobb);  
$img=$_FILES['pic']['name'];  
if($return)  
{  
$msg="<font color='red'>".ucfirst($e)." already exists choose another email </font>";  
}  
else  
{  
$msg= "<font color='blue'> your data saved </font>";  
}  
}  

?>
