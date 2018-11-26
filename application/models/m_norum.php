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
	
}