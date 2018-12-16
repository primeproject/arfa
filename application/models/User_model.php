<?php
	class User_model extends CI_Model{
		public function register($enc_password){
			// User data array
			$data = array(
				'name' => $this->input->post('name'),
				'email' => $this->input->post('email'),
				'zipcode' => $this->input->post('zipcode'),
                'username' => $this->input->post('username'),
                'password' => $enc_password

			);

			// Insert user
			return $this->db->insert('users', $data);
		}

		// Log user in
		public function login($username, $password){
			// Validate
			$this->db->where('username', $username);
			$this->db->where('password', $password);

			$result = $this->db->get('users');

			if($result->num_rows() == 1 ){
				return $result->row(0)->id;
				
			} else {
				return false;
			}
		}

		// Check username exists
		public function check_username_exists($username){
			$query = $this->db->get_where('users', array('username' => $username));
			if(empty($query->row_array())){
				return true;
			} else {
				return false;
			}
		}

		// Check email exists
		public function check_email_exists($email)

		{
			$query = $this->db->get_where('users', array('email' => $email));
			if(empty($query->row_array())){
				return true;
			} else {
				return false;
			}
		}

				function fetch_data($query)
 					{
 					 $this->db->select("*");
  					 $this->db->from("users");
 					 if($query != '')
  						{
							   $this->db->like('id', $query);
							   $this->db->or_like('name', $query);
							   $this->db->or_like('zipcode', $query);
							   $this->db->or_like('email', $query);
							   $this->db->or_like('username', $query);
							   $this->db->or_like('password', $query);
							   $this->db->or_like('register_date', $query);
							    $this->db->or_like('role', $query);
  						}
  						
  							$this->db->order_by('id', 'DESC');
  							return $this->db->get();
 					}
				}		