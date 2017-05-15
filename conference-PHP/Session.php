<?php
// classe de base, avec des propriétés et des méthodes membres
class Session{

   private $id_session;
   private $theme;
   private $date_session;
   private $lieu_session;
   private $periode_session;
   private $id_conference;


     function __construct($id_session, $theme , $date_session, $lieu_session , $periode_session , $id_conference) {
     	$this->setId_session($id_session);
     	$this->setTheme($theme);
     	$this->setDate_session($date_session);
     	$this->setLieu_session($lieu_session);
     	$this->setPeriode_session($periode_session);
     	$this->setId_conference($id_conference);


   }

   	public function getId_session(){
		return $this->id_session;
	}

	public function setId_session($id_session){
		$this->id_session = $id_session;
	}

	public function getTheme(){
		return $this->theme;
	}

	public function setTheme($theme){
		$this->theme = $theme;
	}

	public function getDate_session(){
		return $this->date_session;
	}

	public function setDate_session($date_session){
		$this->date_session = $date_session;
	}

	public function getLieu_session(){
		return $this->lieu_session;
	}

	public function setLieu_session($lieu_session){
		$this->lieu_session = $lieu_session;
	}

	public function getPeriode_session(){
		return $this->periode_session;
	}

	public function setPeriode_session($periode_session){
		$this->periode_session = $periode_session;
	}

	public function getId_conference(){
		return $this->id_conference;
	}

	public function setId_conference($id_conference){
		$this->id_conference = $id_conference;
	}
}