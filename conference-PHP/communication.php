<?php

include_once 'Conference.php';
include_once 'Session.php';
include_once 'dbManager.php';

$dbManager = new DbManager();
*/
switch ($_GET['fx']) {
	case 'getConferenceById':
				
		$json= json_encode($dbManager->getConferenceById($_GET['id']));
		$json=substr($json, 1,-1); 
		echo $json; 
		break;
	

	case 'getSessionByConferenceId':
				
		$json= json_encode($dbManager->getSessionByConferenceId($_GET['id']));
		$json=substr($json, 1,-1); 
		echo $json; 
		break;
	
}

//var_dump($dbManager->getAllConferences());

//print json_encode($dbManager->getSessionByConferenceId(8));

//	$conferenceArray =$dbManager->getSessionByConferenceId(5);
//var_dump($conferenceArray);exit();

//$conference = new Conference(
//$conferenceArray[0]['id_conference'],$conferenceArray[0]['nom_conference'],$conferenceArray[0]['lieu'],$conferenceArray[0]['desc_conference'],$conferenceArray[0]['date_conference'],$conferenceArray[0]['noms_conferencier'],$conferenceArray[0]['logo'],$conferenceArray[0]['hachtag']);




//$session = new Session(
//$conferenceArray[0]['id_session'],$conferenceArray[0]['theme'],$conferenceArray[0]['date_session'],$conferenceArray[0]['lieu_session'],$conferenceArray[0]['periode_session'],$conferenceArray[0]['id_conference']);


//echo $conference->getNames();


//echo $session->getId_session();

/*
maintenat tout les informations sont accessible par le client, 
si un organisateur souhaite ajouter une conference ( besoin des droits d'accés et code de modification) , les methodes de modification sont situés dans les classes conference et session a l'aide des requettes dans dbManager
