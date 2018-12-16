<div class="container">
<h3>Pencarian Obat</h3>
		<table id="example1" class="table table-hover table-dark">
		  <thead >
		    <tr>
		      <th scope="col">Nama Obat</th>
		      <th scope="col">Golongan</th>
		      <th scope="col">Kategori</th>
		      <th scope="col">Bentuk Sediaan</th>
		      <th scope="col">Aksi</th>
		    </tr>
		  </thead>
		  <tbody>
		  <?php
				foreach($list_obat as $row) 
				{
			?>
		    <tr>
		      <td><?php echo $row['nama_obat'];?></td>
		      <td>
			      <?php
							foreach($list_golongan as $golongan) 
							{
								if($row['kode_golongan'] == $golongan['kode_golongan'])
								{
						 			echo $golongan['nama_golongan'];
			      		}
			      	}
			      ?>
		      </td>
		      <td>
			      <?php
							foreach($list_kategori as $kategori) 
							{
								if($row['kode_kategori'] == $kategori['kode_kategori'])
								{
						 			echo $kategori['nama_kategori'];
			      		}
			      	}
			      ?>
		      </td>

		      <td>
			      <?php
							foreach($list_bentuksediaan as $bentuksediaan) 
							{
								if($row['kode_bentuksediaan'] == $bentuksediaan['kode_bentuksediaan'])
								{
						 			echo $bentuksediaan['nama_bentuksediaan'];
			      		}
			      	}
			      ?>
		      </td>

		      <td>
		      	<a class="btn btn-primary" href="<?php echo base_url().'index.php/Page/Detail/'.$row['kode_obat']?>">View Detail</a>
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