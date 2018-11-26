<!DOCTYPE html>
<html>
<head>
	<title>Norum Web</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css')?>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?php echo base_url('assets/css/carousel.css')?>" rel="stylesheet">
	<link href="<?php echo base_url()?>assets/css/style.css" rel="stylesheet">
</head>
<body>
	
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <ul class="nav navbar-nav">
	      <li><a href="<?php echo base_url().'index.php/Page/index'?>">Beranda</a></li>
	      <li><a href="<?php echo base_url().'index.php/Page/Pencarian'?>">Pencarian</a></li>
	      <li><a href="<?php echo base_url().'index.php/Page/NamaObatMirip'?>">Nama Obat Mirip</a></li>
	      <li><a href="<?php echo base_url().'index.php/Page/RupaObatMirip'?>">Rupa Obat Mirip</a></li>
	      <li><a href="<?php echo base_url().'index.php/Page/Kontak'?>">Kontak</a></li>
	    </ul>
	  </div>
	</nav>
  	

	<section>
		<?php $this->load->view($content_view) ?>
	</section>

<!-- 	<div class="footer">copyright 2018</div> -->


</body>
<hr class="featurette-divider">
 <footer class="container">
        <center><p>&copy; 2018 obatnorum.com</p></center>
      </footer>
</html>