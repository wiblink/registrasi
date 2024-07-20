<?php require_once("headermenu.php"); ?>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-4">

            <div class="card">
                <div class="card-body text-center">

       <video id="previewKamera" style="width: 300px;height: 300px;"></video>
     <br>
     <select id="pilihKamera" style="max-width:400px">
     </select>
     <br>
     <form action="scanresult.php" method="POST">
     <input type="text" id="hasilscan" name="hasilscan">
     
     <input type="submit" class="btn btn-success btn-block" name="submit" value="Submit" />
     </form>
     <script>
     var takecapt = document.getElementById('hasilscan').value;
      //  alert(takecapt);
     </script>
     
    <script type="text/javascript" src="camera/index.min.js"></script>
     <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
 
     <script>
        let selectedDeviceId = null;
        const codeReader = new ZXing.BrowserMultiFormatReader();
        const sourceSelect = $("#pilihKamera");
 
        $(document).on('change','#pilihKamera',function(){
            selectedDeviceId = $(this).val();
            if(codeReader){
                codeReader.reset()
                initScanner()
            }
        })
 
        function initScanner() {
            codeReader
            .listVideoInputDevices()
            .then(videoInputDevices => {
                videoInputDevices.forEach(device =>
                    console.log(`${device.label}, ${device.deviceId}`)
                );
 
                if(videoInputDevices.length > 0){
                     
                    if(selectedDeviceId == null){
                        if(videoInputDevices.length > 1){
                            selectedDeviceId = videoInputDevices[1].deviceId
                        } else {
                            selectedDeviceId = videoInputDevices[0].deviceId
                        }
                    }
                     
                     
                    if (videoInputDevices.length >= 1) {
                        sourceSelect.html('');
                        videoInputDevices.forEach((element) => {
                            const sourceOption = document.createElement('option')
                            sourceOption.text = element.label
                            sourceOption.value = element.deviceId
                            if(element.deviceId == selectedDeviceId){
                                sourceOption.selected = 'selected';
                            }
                            sourceSelect.append(sourceOption)
                        })
                 
                    }
 
                    codeReader
                        .decodeOnceFromVideoDevice(selectedDeviceId, 'previewKamera')
                        .then(result => {
 
                                //hasil scan
                                console.log(result.text)
                                $("#hasilscan").val(result.text);
                             
                                if(codeReader){
                                    codeReader.reset()
                                }
                        })
                        .catch(err => console.error(err));
                     
                } else {
                    alert("Camera not found!")
                }
            })
            .catch(err => console.error(err));
        }
 
 
        if (navigator.mediaDevices) {
             
 
            initScanner()
             
 
        } else {
            alert('Cannot access camera.');
        }
       
     </script>  
                </div>
            </div>

           
        </div>


        <div class="col-md-8">

            <div class="card-body">
              
      
    
    <?php
    require_once("koneksi.php");
    
   
    if(isset($_GET['id']))
	{
			$id = $_GET['id'];
			if ($_GET['type'] == 'sppjb') {
				//die(print_r('dcsdc'));
				$datetime = date('Y-m-d H:i:s');
				 // menyiapkan query
			$sql = "INSERT INTO sppjb (id_register, created) VALUES ($id, '$datetime')";
			//die(print_r($sql));
			$query = mysqli_query($connection,$sql);
			echo('DATA SPPJB BERHASIL DIINPUT');
			}
			elseif ($_GET['type'] == 'confirm') {
				 // menyiapkan query
			 $datetime = date('Y-m-d H:i:s');
				 // menyiapkan query
			$sql = "INSERT INTO confirm (id_register, created) VALUES ($id, '$datetime')";
			//die(print_r($sql));
			$query = mysqli_query($connection,$sql);
			 echo('DATA CONFIRM BERHASIL DIINPUT');
			}
	}
		 
?>

    <?php 
    
	if(isset($_POST['hasilscan']))
	{
		$hasilscan = $_POST['hasilscan'];
    
     $id = str_replace("http://localhost/login.event-reg.id/scanresult.php?id=","",$hasilscan);
     
     require_once('koneksi.php');
     $sql = "SELECT a.*, b.tempat FROM register a inner join wilayah b on (a.id_wilayah = b.id_wilayah) where a.id_register =".$id."";
              $query = mysqli_query($connection,$sql);
                    //  die(print_r($query));
              $row = mysqli_fetch_array($query);
//die(print_r($row['nama']));

        
        if($row['hari'] == '2023-11-09'){
            $day = 'Day 1';
        } else if($row['hari'] == '2023-11-10'){
            $day = 'Day 2';
        }
	}
    
        
        echo '<div class="row">
		<div>
    	 <div class="well profile">
            <div class="col-sm-12">
                <div class="col-xs-12 col-sm-8">
                    <h2>'.$row['nama'].'</h2>
                    <p><strong>'.$day.'</strong></p>
                   
                </div>             
            </div>
            <form id="butconf" name="butconf" action="'.$_SERVER['PHP_SELF'].'" />
    <input type="hidden" id="id_register" name="id_register" value="'.$row['id_register'].'">

<div class="btn-group" role="group" aria-label="Button" style="padding-left:35px;">
  <a href="/scanresult.php?type=sppjb&id='.$row['id_register'].'" class="btn btn-info" role="button">SPPJB</a>&nbsp;&nbsp;
  <a href="/scanresult.php?type=confirm&id='.$row['id_register'].'" class="btn btn-info" role="button">Confirm</a>&nbsp;&nbsp;
  <a href="scan.php" class="btn btn-info" role="button">Cancel</a>
</div>
</form>
           
    	 </div>                 
		</div>
	</div>';
    
    ?>
    
    
    
    
             
            </div>
            
        </div>
    
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>