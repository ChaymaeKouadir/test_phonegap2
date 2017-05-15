<?php

/**
* 
*/
class DbManager
{
	private $db;
	public function __construct()
	{
			$this->db = new PDO('mysql:host=127.0.0.1;dbname=module_central','root','');
	}

		public function getAllConferences()
	{
		   $stmt = $this->db->query("SELECT * FROM conference");
   			return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}


		public function getConferenceById($id)
	{
		$sql = 'SELECT * FROM conference WHERE id_conference = :id_conference';
		$sth = $this->db->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
		$sth->execute(array(':id_conference' => $id));
		return $sth->fetchAll();
	}

		public function getSessionByConferenceId($id)
	{
		$sql = 'SELECT * FROM session WHERE id_conference = :id_conference';
		$sth = $this->db->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
		$sth->execute(array(':id_conference' => $id));
		return $sth->fetchAll();
	}



}


