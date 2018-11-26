<div class="badan">
	
	<div class="sidebar">
	<!-- <h3>Form Pencarian Obat</h3><br>
		<form action="#" method="post">
			<label for="fnama">Nama Obat</label>
			<input type="text" id="fnama" name="nama" placeholder="Masukkan Nama Obat">
			<label for="fgol">Golongan</label>
			<select id="fgol">
				<option>Obat Bebas</option>
				<option>Obat Wajib Apotik</option>
				<option>Obat Keras</option>
				<option>Psikotropika</option>
				<option>Narkotika</option>
			</select>
			<label for="fbentuk">Bentuk Sediaan</label>
			<select id="fbentuk">
				<option>Liquid</option>
				<option>Semisolid</option>
				<option>Solid</option>
			</select>
			<input type="submit" name="submit" value="Cari">
		</form> -->
		 <table class="table table-striped obat">
			<tr>
				<th>Nama Obat</th>
			</tr>
			<tr>
				<td><?php echo $row_data->nama_obat;?></td>
			</tr>
			<tr>
				<th>Golongan</th>
			</tr>
			<tr>
				<td>
					<?php
						foreach ($list_golongan as $golongan) {
						 	if($row_data->kode_golongan == $golongan['kode_golongan']){
								echo $golongan['nama_golongan'];
						 	}
						 } 
					?>
				</td>
			</tr>
			<tr>
				<th>Kategori</th>
			</tr>
			<tr>
				<td>
					<?php
						foreach ($list_kategori as $kategori) {
						 	if($row_data->kode_kategori == $kategori['kode_kategori']){
								echo $kategori['nama_kategori'];
						 	}
						 } 
					?>
				</td>
			</tr>
			<tr>
				<th>Bentuk Sediaan</th>
			</tr>
			<tr>
				<td>
					<?php
						foreach ($list_bentuksediaan as $bentuksediaan) {
						 	if($row_data->kode_bentuksediaan == $bentuksediaan['kode_bentuksediaan']){
								echo $bentuksediaan['nama_bentuksediaan'];
						 	}
						 } 
					?>
				</td>
			</tr>
		</table> 
		
	</div>

	<div class="content">
		<h2><?php echo $row_data->nama_obat;?></h2>

		<div class="detailcontent">
			<div class="col-md-5">
					<img class="img-thumbnail" src="<?php echo base_url().'assets/images/obat/'.$row_data->gambar_obat?>">
				</div>

				<div class="col-md-7">
					<b>Deskripsi</b><br>
					<p><?php echo $row_data->deskripsi_obat;?></p>

					<b>Kemasan</b><br>
					<p><?php echo $row_data->kemasan_obat;?></p>

					<b>Kandungan </b>
					<p><?php echo $row_data->kandungan_obat;?></p>
				</div>
		</div>

		<div class="detailcontent">
			<div class="col-md-6">
				<b>Kegunaan </b>
				<ul>
				<?php
					if($list_kegunaan->num_rows() == 0)
					{
						echo '-';
					}
					foreach ($list_kegunaan->result() as $kegunaan) {
				?>
					<li><?php echo $kegunaan->isi_kegunaan;?></li>											
				<?php
					}	
				?>	
				</ul>
			</div>

				<div class="col-md-6">
					<b>Indikasi Umum </b>
					<p><?php echo $row_data->indikasiumum_obat;?></p>
				</div>
		</div>
				
		<div class="detailcontent">
			<div class="col-md-6">
				<b>Dosis dan Cara Penggunaan  </b>
				<p>Cara penggunaan : <?php echo $row_data->carapenggunaan_obat;?></p>
				Dosis :

				<ul>
				<?php
					if($list_dosis->num_rows() == 0)
					{
						echo '-';
					}
					foreach ($list_dosis->result() as $dosis) {
				?>
					<li><?php echo $dosis->isi_dosis;?></li>											
				<?php
					}	
				?>	
				</ul>
			</div>

			<div class="col-md-6">
				<b>Efek Samping  </b>
				<ul>
				<?php
					if($list_efeksamping->num_rows() == 0)
					{
						echo '-';
					}
					foreach ($list_efeksamping->result() as $efeksamping) {
				?>
					<li><?php echo $efeksamping->isi_efeksamping;?></li>											
				<?php
					}	
				?>	
				</ul>
			</div>
		</div>
	</div>
</div>