<div id="search">
<!-- <form action="<?php echo base_url().'index.php/Page/Search'?>" method="post" > -->
	<input type="text" name="keyword" placeholder="Search.."/>
<!-- 	<input type="submit" value="Search"/> -->
<!-- </form> -->
</div>
<div class="container">
<h3>Nama Obat Mirip</h3>
		<table class="table table-hover table-dark">
		  <thead>
		    <tr  class="row_obat" >
		      <th scope="col">Nama Obat 1</th>
		      <th scope="col" style="width:20%">Gambar Obat 1</th>
		      <th scope="col">Nama Obat 2</th>
		      <th scope="col" style="width:20%">Gambar Obat 2</th>
		      <th scope="col">Aksi</th>
		    </tr>
		  </thead>
		  <tbody>
		  <?php
				foreach($list_namamirip as $row) 
				{
			?>
		    <tr class="row_obat" style="text-align:center">
		      <td>
		      	<?php 
		      		foreach ($list_obat as $obat) {
		      			if($row['kode_obat1'] == $obat['kode_obat']) {
		      				echo $obat['nama_obat'];
		      				?>
		      </td>
		      <td><img class="img-thumbnail" src="<?php echo base_url().'assets/images/obat/'.$obat['gambar_obat']?>"></td>
		      	<?php

		      			}
		      		}
		      	?>

		      <td>
		      	<?php 
		      		foreach ($list_obat as $obat) {
		      			if($row['kode_obat2'] == $obat['kode_obat']) {
		      				echo $obat['nama_obat'];
		      	?>
		      </td>
		      <td><img class="img-thumbnail" src="<?php echo base_url().'assets/images/obat/'.$obat['gambar_obat']?>"></td>
		      	<?php			
		      			}
		      		}
		      	?>
		      </td>
		     
		      <td>
		      	<a class="btn btn-primary" href="<?php echo base_url().'index.php/Page/DetailNamaMirip/'.$row['kode_obat1'].'/'.$row['kode_obat2']?>">View Detail</a>
		      </td>
		    </tr>
		  <?php
		  	}
		  ?>
		  </tbody>
		</table>	
</div>