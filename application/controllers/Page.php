<?php
/**
* 
*/
class Page extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('M_norum');
	}

	function index()
	{
		$data['content_view']="v_beranda.php";
		$data['list_golongan']=$this->M_norum->get_list_golongan();
		$this->load->view('v_template', $data);
	}

	function Pencarian()
	{
		$data['content_view']="v_pencarian.php";
		$data['list_obat']=$this->M_norum->get_list_obat();
		$data['list_golongan']=$this->M_norum->get_list_golongan();
		$data['list_kategori']=$this->M_norum->get_list_kategori();
		$data['list_bentuksediaan']=$this->M_norum->get_list_bentuksediaan();
		$this->load->view('v_template', $data);
	}

	function Detail(){
		$kode_obat=$this->uri->segment(3); //segment 0 : index.php, 1 : 
		$data['content_view']="v_detail_obat.php";
		$data['row_data']=$this->M_norum->get_detail_obat($kode_obat);
		$data['list_kegunaan']=$this->M_norum->get_list_kegunaan($kode_obat);
		$data['list_dosis']=$this->M_norum->get_list_dosis($kode_obat);
		$data['list_efeksamping']=$this->M_norum->get_list_efeksamping($kode_obat);
		$data['list_golongan']=$this->M_norum->get_list_golongan();
		$data['list_kategori']=$this->M_norum->get_list_kategori();
		$data['list_bentuksediaan']=$this->M_norum->get_list_bentuksediaan();
		$this->load->view('v_template', $data);
	}

	function NamaObatMirip()
	{
		$data['content_view']="v_nama_obat_mirip.php";
		$data['list_namamirip']=$this->M_norum->get_list_namamirip();
		$data['list_obat']=$this->M_norum->get_list_obat();
		$this->load->view('v_template', $data);
	}

	function DetailNamaMirip(){
		$kode_obat1=$this->uri->segment(3); //segment 0 : index.php, 1 : 
		$kode_obat2=$this->uri->segment(4); //segment 0 : index.php, 1 : 
		$data['content_view']="v_detail_namamirip.php";
		$data['row_obat1']=$this->M_norum->get_detail_obat($kode_obat1);
		$data['row_obat2']=$this->M_norum->get_detail_obat($kode_obat2);
		$data['list_kegunaan1']=$this->M_norum->get_list_kegunaan($kode_obat1);
		$data['list_kegunaan2']=$this->M_norum->get_list_kegunaan($kode_obat2);
		$data['list_golongan']=$this->M_norum->get_list_golongan();
		$data['list_kategori']=$this->M_norum->get_list_kategori();
		$data['list_bentuksediaan']=$this->M_norum->get_list_bentuksediaan();
		$this->load->view('v_template', $data);
	}

	function RupaObatMirip()
	{
		$data['content_view']="v_kemasan_mirip.php";
		$data['list_rupamirip']=$this->M_norum->get_list_rupamirip();
		$data['list_obat']=$this->M_norum->get_list_obat();
		$this->load->view('v_template', $data);
	}

	function DetailRupaMirip(){
		$kode_obat1=$this->uri->segment(3); //segment 0 : index.php, 1 : 
		$kode_obat2=$this->uri->segment(4); //segment 0 : index.php, 1 : 
		$data['content_view']="v_detail_rupamirip.php";
		$data['row_obat1']=$this->M_norum->get_detail_obat($kode_obat1);
		$data['row_obat2']=$this->M_norum->get_detail_obat($kode_obat2);
		$data['list_kegunaan1']=$this->M_norum->get_list_kegunaan($kode_obat1);
		$data['list_kegunaan2']=$this->M_norum->get_list_kegunaan($kode_obat2);
		$data['list_golongan']=$this->M_norum->get_list_golongan();
		$data['list_kategori']=$this->M_norum->get_list_kategori();
		$data['list_bentuksediaan']=$this->M_norum->get_list_bentuksediaan();
		$this->load->view('v_template', $data);
	}

	function Kontak()
	{
		$data['content_view']="v_kontak.php";
		$this->load->view('v_template', $data);
	}
}
?>