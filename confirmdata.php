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
              <a target="_blank" href="export_excel.php?tipe=confirm">EXPORT EXCEL</a>
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
                    <!--<th scope="col">AKSI</th>-->
                  </tr>
                </thead>
                <tbody>
                  <?php 
                      require_once('koneksi.php');
                      $no = 1;
                      $sql = "SELECT b.*, c.tempat, a.created,

CASE
    WHEN b. instansi = 'ins1' THEN 'SEKRETARIS DAERAH'
    WHEN b. instansi = 'ins2' THEN 'BAPENDA - Badan Pendapatan Daerah'
    WHEN b. instansi = 'ins3' THEN 'KPwDN - Kantor Perwakilan Bank Indonesia Dalam Negeri'
    WHEN b. instansi = 'ins4' THEN 'BPD - Bank Pembangunan Daerah'
    ELSE '-' 
END as namainstansi FROM confirm a 
left join register b on (a.id_register = b.id_register) 
inner join wilayah c on (b.id_wilayah = b.id_wilayah)
group by a.id_confirm order by a.id_confirm desc";
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
					  <td><?php echo $row['namainstansi'] ?></td>
					  <td><?php echo $row['tempat'] ?></td>
					  <td><?php echo $row['hadir'] ?></td>
					  <td><?php echo $row['created'] ?></td>
                      <!--<td class="text-center">
                        <a href="edit-reg.php?id=<?php echo $row['id_register'] ?>" class="btn btn-sm btn-primary">EDIT</a>
                        <a href="hapus-reg.php?id=<?php echo $row['id_register'] ?>" class="btn btn-sm btn-danger">HAPUS</a>
                      </td>-->
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