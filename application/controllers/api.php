<?php
	class api extends CI_Controller{
		public function testApi(){
			$query=$this->db->query('select * from users');
			
			echo json_encode($query->result());

		}
	}
