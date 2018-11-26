<?php
/**
* 
*/
class Page extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		// $this->load->model('m_norum');
	}

	function index()
	{
		$data['content_view']="v_beranda.php";
		$this->load->view('v_template', $data);
	}

	function Pencarian()
	{
		$data['content_view']="v_pencarian.php";
		$this->load->view('v_template', $data);
	}

	function Detail()
	{
		$data['content_view']="v_detail_obat.php";
		$this->load->view('v_template', $data);
	}

	function NamaObatMirip()
	{
		$data['content_view']="v_nama_obat_mirip.php";
		$this->load->view('v_template', $data);
	}

	function RupaObatMirip()
	{
		$data['content_view']="v_kemasan_mirip.php";
		$this->load->view('v_template', $data);
	}

	function Kontak()
	{
		$data['content_view']="v_kontak.php";
		$this->load->view('v_template', $data);
	}
}
?>