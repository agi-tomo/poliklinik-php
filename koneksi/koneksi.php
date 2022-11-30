<?php
$username="root";
$password="";
$database="poli_klinik";
$host="localhost";
$koneksi=mysqli_connect($host,$username,$password,$database) or die ("gagal");
$username=$_POST['username'];
$password=$_POST['password'];
$pass=md5($password);
$cek=mysqli_query($koneksi,"SELECT * FROM login WHERE username='$username' AND password='$pass'");
$data1=mysqli_num_rows($cek);
$data2=mysqli_fetch_array($cek);

	if($data1==0)
	{
	header("location:index.php");
	}
	else if($data1>0)
	{
		if($data2['typeuser']=="admin")
		{
		$SESSION['username']=$data2['username'];
		$SESSION['password']=$data2['password'];
		$_SESSION['typeuser']=="admin";
		}
		else if($data2['typeuser']=="dokter")
		{
		$SESSION['username']=$data2['username'];
		$SESSION['password']=$data2['password'];
		$_SESSION['typeuser']=="petugas";
		}
	}
	?>