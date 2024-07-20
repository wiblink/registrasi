<?php require_once("auth.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <title>QR</title>

    <link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="row">
        <div class="col-md-8">

            <div class="card-body">
             <?php

require_once('koneksi.php');
$no = 1;
$sql = "SELECT a.*, b.tempat FROM register a inner join wilayah b on (a.id_wilayah = b.id_wilayah) where id_register='".$_GET['id']."'";
$query = mysqli_query($connection,$sql);
//die(print_r($query));
$row = mysqli_fetch_array($query);

             echo '<center> <img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=https://login.event-reg.id/scanresult.php?id='.$_GET['id'].'" alt="'.$row['nama'].'" title="'.$row['nama'].'" /> ';
             echo '<br>'.$row['nama'].'</center>';
             ?>         
            </div>
            
        </div>    
    </div>
</div>
</body>
</html>