<?php

/**
 * 
 */
class M_norum extends CI_Model
{
	
	function get_list_golongan(){
		$query=$this->db->query("select * from golongan");
		return $query->result_array();
	}
	
	function get_list_obat(){
		$query=$this->db->query("select * from obat");
		return $query->result_array();
	}

	function get_list_kategori(){
		$query=$this->db->query("select * from kategori");
		return $query->result_array();
	}

	function get_list_bentuksediaan(){
		$query=$this->db->query("select * from bentuksediaan");
		return $query->result_array();
	}

	function get_list_namamirip(){
		$query=$this->db->query("select * from lasa where status_lasa=1");
		return $query->result_array();
	}

	function get_list_rupamirip(){
		$query=$this->db->query("select * from lasa where status_lasa=0");
		return $query->result_array();
	}

	function get_list_kegunaan($kode_obat){
		$query=$this->db->query("select * from kegunaan where kode_obat='$kode_obat'");
		return $query;
	}

	function get_list_dosis($kode_obat){
		$query=$this->db->query("select * from dosis where kode_obat='$kode_obat'");
		return $query;
	}

	function get_list_efeksamping($kode_obat){
		$query=$this->db->query("select * from efeksamping where kode_obat='$kode_obat'");
		return $query;
	}

	function get_detail_obat($kode_obat){
		$query=$this->db->query("select * from obat where kode_obat='$kode_obat'");
		$rows=$query->row();
		return $rows;
	}
}