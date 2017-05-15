<?php
// classe de base, avec des propriétés et des méthodes membres

class Conference {

   private $id_conference;
   private $name;
   private $place;
   private $desc;
   private $date;
   private $names;
   private $logo;
   private $hashtag;


     function __construct($id_conference, $name , $place , $desc , $date , $names , $logo , $hashtag ) {
     	$this->setId_conference($id_conference);
     	$this->setName($name);
     	$this->setPlace($place);
     	$this->setDesc($desc);
     	$this->setDate($date);
     	$this->setNames($names);
     	$this->setLogo($logo);
     	$this->setHashtag($hashtag);
   }




	public function getId_conference(){
		return $this->id_conference;
	}

	public function setId_conference($id_conference){
		$this->id_conference = $id_conference;
	}

	public function getName(){
		return $this->name;
	}

	public function setName($name){
		$this->name = $name;
	}

	public function getPlace(){
		return $this->place;
	}

	public function setPlace($place){
		$this->place = $place;
	}

	public function getDesc(){
		return $this->desc;
	}

	public function setDesc($desc){
		$this->desc = $desc;
	}

	public function getDate(){
		return $this->date;
	}

	public function setDate($date){
		$this->date = $date;
	}

	public function getNames(){
		return $this->names;
	}

	public function setNames($names){
		$this->names = $names;
	}

	public function getLogo(){
		return $this->logo;
	}

	public function setLogo($logo){
		$this->logo = $logo;
	}

	public function getHashtag(){
		return $this->hashtag;
	}

	public function setHashtag($hashtag){
		$this->hashtag = $hashtag;
	}
} // fin de la classe Spinach

?>