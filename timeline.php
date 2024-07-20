<?php require_once("headermenu.php"); ?>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-4">

            <div class="card">
                <div class="card-body text-center">

                    <img class="img img-responsive rounded-circle mb-3" width="160" src="img/<?php echo $_SESSION['user']['photo'] ?>" />
                    
                    <h3><?php echo  $_SESSION["user"]["name"] ?></h3>
                    <p><?php echo $_SESSION["user"]["email"] ?></p>

                    
                </div>
            </div>

            
        </div>


        <div class="col-md-8">

            <div class="card-body">
            <center>
              <a target="_blank" href="export_excel.php?tipe=regist">EXPORT EXCEL</a>
            </center>
              <table class="table table-bordered" id="myTable">
                <thead>
                  <tr>
                    <th scope="col">NO.</th>
                    <th scope="col">Nama</th>
					          <th scope="col">No HP</th>
                    <th scope="col">Email</th>
                    <th scope="col">Jabatan</th>
                    <th scope="col">Instansi</th>
                    <th scope="col">Daerah</th>
                    <th scope="col">Hadir / Wakil</th>
                    <th scope="col">Timestamp</th>
                    <th scope="col">QR</th>
                  </tr>
                </thead>
                <tbody>
                  <?php 
                      require_once('koneksi.php');
                      $no = 1;
                      $sql = "SELECT a.*, b.tempat FROM register a inner join wilayah b on (a.id_wilayah = b.id_wilayah) order by id_register desc";
                      $query = mysqli_query($connection,$sql);
                      //die(print_r($query));
                      while($row = mysqli_fetch_array($query)){
                  ?>

                  <tr>
                      <td><?php echo $no++ ?></td>
                      <td><?php echo $row['nama'] ?></td>
                      <td><?php echo $row['no_hp'] ?></td>
                      <td><?php echo $row['email'] ?></td>
                      <td><?php echo $row['jabatan'] ?></td>
                      <td><?php 
                      $ins = $row['instansi'];
                      switch ($ins) {
                                    case 'ins1':
                                      $instan = "SEKRETARIS DAERAH";
                                      break;
                                    case 'ins2':
                                      $instan = "BAPENDA - Badan Pendapatan Daerah";
                                      break;
                                    case 'ins3':
                                      $instan = "KPwDN - Kantor Perwakilan Bank Indonesia Dalam Negeri";
                                      break;
                                    case 'ins4':
                                      $instan = "BPD - Bank Pembangunan Daerah";
                                      break;
                                  }
                      
                      echo $instan ?></td>
                      <td><?php echo $row['tempat'] ?></td>
                      <td><?php echo $row['hadir'] ?></td>
                      <td><?php echo $row['created'] ?></td>
                      <td class="text-center">
                        <a href="qr.php?id=<?php echo $row['id_register'] ?>" class="btn btn-sm btn-primary">see qr</a>
                      </td>
                  </tr>

                <?php } ?>
                </tbody>
              </table>
            </div>
            
        </div>
    
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script>
      $(document).ready( function () {
          $('#myTable').DataTable();
      } );
    </script>
	
</body>
</html>