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
              
             
            </div>
            
        </div>
    
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>