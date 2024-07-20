<?php 
 require_once("auth.php");
// Load the database configuration file 
include_once 'koneksi.php'; 
 
// Include XLSX generator library 
require_once 'excel/PhpXlsxGenerator.php'; 
 

$tipe = $_GET['tipe'];
if ($tipe == 'regist')
{
		// Excel file name for download 
		$fileName = "data_registrasi_" . date('Y-m-d') . ".xlsx"; 
		
		// Define column names 
		$excelData[] = array('ID', 'NAMA', 'NO HP', 'EMAIL', 'JABATAN', 'INSTANSI', 'DAERAH', 'HADIR / WAKIL', 'CREATED'); 
		
		// Fetch records from database and store in an array 
		$query = $connection->query("SELECT a.*, b.tempat, CASE
		WHEN a.instansi = 'ins1' THEN 'SEKRETARIS DAERAH'
		WHEN a.instansi = 'ins2' THEN 'BAPENDA - Badan Pendapatan Daerah'
		WHEN a.instansi = 'ins3' THEN 'KPwDN - Kantor Perwakilan Bank Indonesia Dalam Negeri'
		WHEN a.instansi = 'ins4' THEN 'BPD - Bank Pembangunan Daerah'
		ELSE '-' 
		END as namainstansi FROM register a inner join wilayah b on (a.id_wilayah = b.id_wilayah) order by id_register desc"); 
		if($query->num_rows > 0){ 
			while($row = $query->fetch_assoc()){ 
				$lineData = array($row['id_register'], $row['nama'], $row['no_hp'], $row['email'], $row['jabatan'], $row['namainstansi'], $row['tempat'], $row['hadir'], $row['created']);  
				$excelData[] = $lineData; 
			} 
		}
} 
	else if ($tipe == 'sppjb')
{
		// Excel file name for download 
		$fileName = "data_registrasi_sppjb_" . date('Y-m-d') . ".xlsx"; 
		
		// Define column names 
		$excelData[] = array('ID', 'NAMA', 'NO HP', 'EMAIL', 'JABATAN', 'INSTANSI', 'DAERAH', 'HADIR / WAKIL', 'CREATED'); 
		
		// Fetch records from database and store in an array 
		$query = $connection->query("SELECT b.*, c.tempat, a.created,

		CASE
			WHEN b.instansi = 'ins1' THEN 'SEKRETARIS DAERAH'
			WHEN b.instansi = 'ins2' THEN 'BAPENDA - Badan Pendapatan Daerah'
			WHEN b.instansi = 'ins3' THEN 'KPwDN - Kantor Perwakilan Bank Indonesia Dalam Negeri'
			WHEN b.instansi = 'ins4' THEN 'BPD - Bank Pembangunan Daerah'
			ELSE '-' 
		END as namainstansi FROM sppjb a 
		left join register b on (a.id_register = b.id_register) 
		inner join wilayah c on (b.id_wilayah = b.id_wilayah)
		group by a.id_sppjb order by a.id_sppjb desc"); 
		if($query->num_rows > 0){ 
			while($row = $query->fetch_assoc()){ 
				$lineData = array($row['id_register'], $row['nama'], $row['no_hp'], $row['email'], $row['jabatan'], $row['namainstansi'], $row['tempat'], $row['hadir'], $row['created']);  
				$excelData[] = $lineData; 
			} 
		}
}
	else if ($tipe == 'confirm')
{
		// Excel file name for download 
		$fileName = "data_registrasi_confirm_" . date('Y-m-d') . ".xlsx"; 
		
		// Define column names 
		$excelData[] = array('ID', 'NAMA', 'NO HP', 'EMAIL', 'JABATAN', 'INSTANSI', 'DAERAH', 'HADIR / WAKIL', 'CREATED'); 
		
		// Fetch records from database and store in an array 
		$query = $connection->query("SELECT b.*, c.tempat, a.created,

		CASE
			WHEN b.instansi = 'ins1' THEN 'SEKRETARIS DAERAH'
			WHEN b.instansi = 'ins2' THEN 'BAPENDA - Badan Pendapatan Daerah'
			WHEN b.instansi = 'ins3' THEN 'KPwDN - Kantor Perwakilan Bank Indonesia Dalam Negeri'
			WHEN b.instansi = 'ins4' THEN 'BPD - Bank Pembangunan Daerah'
			ELSE '-' 
		END as namainstansi FROM confirm a 
		left join register b on (a.id_register = b.id_register) 
		inner join wilayah c on (b.id_wilayah = b.id_wilayah)
		group by a.id_confirm order by a.id_confirm desc"); 
		if($query->num_rows > 0){ 
			while($row = $query->fetch_assoc()){ 
				$lineData = array($row['id_register'], $row['nama'], $row['no_hp'], $row['email'], $row['jabatan'], $row['namainstansi'], $row['tempat'], $row['hadir'], $row['created']);  
				$excelData[] = $lineData; 
			} 
		}
}
 
 
// Export data to excel and download as xlsx file 
$xlsx = CodexWorld\PhpXlsxGenerator::fromArray( $excelData ); 
$xlsx->downloadAs($fileName); 
 
exit; 
 
?>