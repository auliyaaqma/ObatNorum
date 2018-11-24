<!DOCTYPE html>
<html>
<head>
	<title>Norum Web</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href="<?php echo base_url()?>assets/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
	<link href="<?php echo base_url()?>assets/css/style.css" rel="stylesheet">
</head>
<body>
	<center><h1>NORUM WEB</h1></center>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <ul class="nav navbar-nav">
	      <li><a href="<?php echo base_url().'index.php/c_page/index'?>">Beranda</a></li>
	      <li><a href="<?php echo base_url().'index.php/c_page/pencarian'?>">Pencarian</a></li>
	      <li><a href="<?php echo base_url().'index.php/c_page/namaobatmirip'?>">Nama Obat Mirip</a></li>
	      <li><a href="<?php echo base_url().'index.php/c_page/kemasanmirip'?>">Kemasan Mirip</a></li>
	      <li><a href="<?php echo base_url().'index.php/c_page/kontak'?>">Kontak</a></li>
	    </ul>
	  </div>
	</nav>
  	

	<section>
		<?php $this->load->view($content_view) ?>
	</section>

<!-- 	<div class="footer">copyright 2018</div> -->


</body>
</html>