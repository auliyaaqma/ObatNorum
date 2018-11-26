<div id="search">
<form action="<?php echo base_url().'index.php/Page/Search'?>" method="post" >
	<input type="text" name="keyword" placeholder="Search.."/>
<!-- 	<input type="submit" value="Search"/> -->
</form>
</div>
<div class="container">
		<table class="table table-hover table-dark">
		  <thead>
		    <tr>
		      <th scope="col">No</th>
		      <th scope="col">Nama Obat</th>
		      <th scope="col">Golongan</th>
		      <th scope="col">Kategori</th>
		      <th scope="col">Bentuk Sediaan</th>
		      <th scope="col">Aksi</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">1</th>
		      <td>Actapin</td>
		      <td>Red</td>
		      <td>Hipertensi</td>
		      <td>Tablet</td>
		      <td>
		      	<a class="btn btn-primary" href="<?php echo base_url().'index.php/Page/Detail'?>">View Detail</a>
		      </td>
		    </tr>
		  </tbody>
		</table>	
</div>