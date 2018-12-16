<div class="container">
<h3>Rupa Obat Mirip</h3>
		<table id="example1" class="table table-hover table-dark">
		  <thead>
		    <tr>
		      <th scope="col" style="text-align:center" >Nama Obat 1</th>
		      <th scope="col" style="width:20%;text-align:center">Gambar Obat 1</th>
		      <th scope="col" style="text-align:center">Nama Obat 2</th>
		      <th scope="col" style="width:20%;text-align:center">Gambar Obat 2</th>
		      <th scope="col" style="text-align:center"">Aksi</th>
		    </tr>
		  </thead>
		  <tbody>
		  <?php
				foreach($list_rupamirip as $row) 
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

<script type="text/javascript">
  $(document).ready( function () {
    $('#example1').DataTable();
} );
</script>