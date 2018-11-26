<div class="container">
		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col" style="width:40%"><?php echo $row_obat1->nama_obat;?></th>
		      <th scope="col" style="width:40%"><?php echo $row_obat2->nama_obat;?></th>
		    </tr>
		  </thead>

		  <tbody>
		  	<tr>
		  		<th></th>
		  		<td><img class="img-thumbnail" src="<?php echo base_url().'assets/images/obat/'.$row_obat1->gambar_obat?>"></td>
		  		<td><img class="img-thumbnail" src="<?php echo base_url().'assets/images/obat/'.$row_obat2->gambar_obat?>"></td>
		  	</tr>
		  		
		  	<tr>
		  		<th>Deskripsi</th>
		  		<td><?php echo $row_obat1->deskripsi_obat;?></td>
		  		<td><?php echo $row_obat2->deskripsi_obat;?></td>
		  	</tr>

		  	<tr>
		  		<th>Golongan</th>
		  		<td>
		  			<?php
							foreach($list_golongan as $golongan) 
							{
								if($row_obat1->kode_golongan == $golongan['kode_golongan'])
								{
						 			echo $golongan['nama_golongan'];
			      		}
			      	}
			      ?>
		  		</td>
		  		<td>
		  			<?php
							foreach($list_golongan as $golongan) 
							{
								if($row_obat2->kode_golongan == $golongan['kode_golongan'])
								{
						 			echo $golongan['nama_golongan'];
			      		}
			      	}
			      ?>
		  		</td>
		  	</tr>

		  	<tr>
		  		<th>Kategori</th>
		  		<td>
		  			<?php
							foreach($list_kategori as $kategori) 
							{
								if($row_obat1->kode_kategori == $kategori['kode_kategori'])
								{
						 			echo $kategori['nama_kategori'];
			      		}
			      	}
			      ?>
		  		</td>
		  		<td>
		  			<?php
							foreach($list_kategori as $kategori) 
							{
								if($row_obat2->kode_kategori == $kategori['kode_kategori'])
								{
						 			echo $kategori['nama_kategori'];
			      		}
			      	}
			      ?>
		  		</td>
		  	</tr>

		  	<tr>
		  		<th>Kemasan</th>
		  		<td><?php echo $row_obat1->kemasan_obat;?></td>
		  		<td><?php echo $row_obat2->kemasan_obat;?></td>
		  	</tr>

		  	<tr>
		  		<th>Kandungan</th>
		  		<td><?php echo $row_obat1->kandungan_obat;?></td>
		  		<td><?php echo $row_obat2->kandungan_obat;?></td>
		  	</tr>

		  	<tr>
		  		<th>Indikasi Umum</th>
		  		<td><?php echo $row_obat1->indikasiumum_obat;?></td>
		  		<td><?php echo $row_obat2->indikasiumum_obat;?></td>
		  	</tr>

		  	<tr>
		  		<th>Kegunaan</th>
		  		<td>
		  		<?php
				  		if($list_kegunaan1->num_rows() == 0)
							{
								echo '-';
							} else {
							foreach($list_kegunaan1 as $kegunaan1) 
							{
								
						 			echo $kegunaan1->isi_kegunaan;
			      		}
			  }
			      ?>
			      	
			      </td>
		  		<td>
		  			<?php
		  			if($list_kegunaan2->num_rows() == 0)
							{
								echo '-';
							} else {
							foreach($list_kegunaan2 as $kegunaan2) 
							{
								
						 			echo $kegunaan2->isi_kegunaan;
			      		}
			  }
			      ?>
		  		</td>
		  	</tr>
		  
		  </tbody>
		</table>	
</div>