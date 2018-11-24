<?php
/**
* 
*/
class C_page extends CI_Controller
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

	function pencarian()
	{
		$data['content_view']="v_pencarian.php";
		$this->load->view('v_template', $data);
	}

	function namaobatmirip()
	{
		$data['content_view']="v_nama_obat_mirip.php";
		$this->load->view('v_template', $data);
	}

	function kemasanmirip()
	{
		$data['content_view']="v_kemasan_mirip.php";
		$this->load->view('v_template', $data);
	}

	function kontak()
	{
		$data['content_view']="v_kontak.php";
		$this->load->view('v_template', $data);
	}
}
?>