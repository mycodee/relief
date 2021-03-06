<?php if (!defined("BASEPATH")) exit("No direct script access allowed");
    
/**
 * Class name : provider_model
 * 
 * Description :
 * This class contain functions to deal with the provider table (Add , Edit , Delete)
 * 
 * Created date ; 8-2-2014
 * Modification date : ---
 * Modfication reason : ---
 * Author : Mohanad Shab Kaleia
 * contact : ms.kaleia@gmail.com
 */    
    
    
class Provider_model extends CI_Model
{
	
	/**class variable**/
	
	//the id field of the 
	var $id;
	
	//the code of provider the frmat of the code is as follow:
	// xx-xxx-xxxxxx: the first two digit is for association the second three digit is for area and the last six digit for national id
	var $code;
	
	//full name of provider
	var $fname ="";
	var $lname ="";
	var $father_name ="";
	var $mother_name ="";
	
	//provider gender
	var $gender = "";
	
	//national id
	var $national_id;
	
	//birth date
	var $birth_date;
	
	//is emigrant
	var $is_emigrant;
	
	//family book number
	var $family_book_num;
	
	//family book letter
	var $family_book_letter;
	
	//family book family number
	var $family_book_family_number;
	
	//family book note
	var $family_book_note;
	
	//curent address
	var $current_address;
	
	//previuos address
	var $prev_address;
	
	//street 
	var $street;
	
	//point guide
	var $point_guide;
	
	//build number
	var $build;
	
	//floor	
	var $floor;
	
	//phone1,2
	var $phone1,$phone2;
	
	//mobile1,2
	var $mobile1,$mobile2;
	
	//note
	var $note;
	
	//relief_form_status {X: for unknown ; T: accepted ; F: not accepted}
	var $relief_form_status = "X";
	
	//created date
	var $created_date;
	
	//is_deleted
	var $is_deleted = "F";
	
	
	//the user id that create this settings
	var $user_id = 1;

	
	/**
     * Constructor
    **/	
	function __construct()
    {
        parent::__construct();
    }
	
	
	
	/**
	 * function name : addProvider
	 * 
	 * Description : 
	 * add provider values 
	 * 
	 * parameters:
	 * 	$association_id: the id of the association that the provider belong to
	 * 	$area_id: the area id that the provider belong to
	 * Created date ; 8-2-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function addProvider($association_code , $area_code )
	 {
	 	$query = "INSERT INTO  provider (				
				area_code,
				association_code ,
				code ,
				fname ,
				lname,
				father_name,
				mother_name ,
				gender,
				national_id ,
				birth_date,
				is_emigrant , 
				family_book_num ,
				family_book_letter ,
				family_book_family_number ,
				family_book_note ,
				current_address,
				prev_address,
				street,
				point_guide,
				build,
				floor,
				phone1,
				phone2,
				mobile1,
				mobile2,
				note,
				relief_form_status,
				created_date,
				creator_id,
				is_deleted				
				)
				VALUES (
				'{$area_code}',  
				'{$association_code}',  
				'{$this->code}',  
				'{$this->fname}',  
				'{$this->lname}',
				'{$this->father_name}',				
				'{$this->mother_name}',
				'{$this->gender}',
				'{$this->national_id}',
				'{$this->birth_date}',
				'{$this->is_emigrant}',   
				'{$this->family_book_num}',  
				'{$this->family_book_letter}',  
				'{$this->family_book_family_number}',  
				'{$this->family_book_note}',  
				'{$this->current_address}',
				'{$this->prev_address}',
				'{$this->street}',
				'{$this->point_guide}',
				'{$this->build}',
				'{$this->floor}',
				'{$this->phone1}',
				'{$this->phone2}',
				'{$this->mobile1}',
				'{$this->mobile2}',
				'{$this->note}',
				'{$this->relief_form_status}',
				'{$this->created_date}',
				{$this->user_id},
				'{$this->is_deleted}'
				);
					 	";	
		$this->db->query($query);
	 }
	 
	 
	 
	 
	 /**
	 * function name : modifyProvider
	 * 
	 * Description : 
	 * modify data of the provider specified by the id. 
	 * 
	 * parameters:
	 * 
	 * Created date ; 22-2-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Ahmad Mulhem Barakat
	 * contact : molham225@gmail.com
	 */
	 public function modifyProvider($association_code , $area_code)
	 {
	 	$query = "UPDATE provider 
				  SET 
					area_code = '{$area_code}',
					association_code  = '{$association_code}',
					code = '{$this->code}',
					fname = '{$this->fname}',
					lname = '{$this->lname}',
					father_name = '{$this->father_name}',
					mother_name = '{$this->mother_name}',
					gender = '{$this->gender}',
					national_id = '{$this->national_id}',
					birth_date = '{$this->birth_date}',
					is_emigrant = '{$this->is_emigrant}',
					family_book_num = '{$this->family_book_num}',
					family_book_letter = '{$this->family_book_letter}',
					family_book_family_number = '{$this->family_book_family_number}',
					family_book_note = '{$this->family_book_note}' ,
					current_address = '{$this->current_address}',
					prev_address = '{$this->prev_address}',
					street = '{$this->street}',
					point_guide = '{$this->point_guide}',
					build = '{$this->build}',
					floor = '{$this->floor}',
					phone1 = '{$this->phone1}',
					phone2 = '{$this->phone2}',
					mobile1 = '{$this->mobile1}',
					mobile2 = '{$this->mobile2}',
					note = '{$this->note}',					
					created_date = '{$this->created_date}',
					creator_id = {$this->user_id},
					is_deleted = '{$this->is_deleted}'			
				  WHERE 
					id =  {$this->id};
					 	";	
		$this->db->query($query);
	 }
	 
	 
	 /**
	 * function name : deleteProvider
	 * 
	 * Description : 
	 * delete database  to delete settings associated with a user id
	 * 		
	 * Created date ; 8-2-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function deleteProvider($association_code , $area_code)
	 {	 	
	 	$query = "update provider 
	 			  set
	 			  is_deleted = 'T'
	 			  where
	 			  id = {$this->id} and 
	 			  association_code = {$association_code} and 
	 			  area_code = {$area_code}";	 					 	
		$this->db->query($query);
	 }
	 
	 
	 /**
	 * function name : deleteProviderByCode
	 * 
	 * Description : 
	 * delete the provider specified with given code
	 * 		
	 * Created date ; 22-2-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Ahmad Mulhem Barakat
	 * contact : molham225@gmail.com
	 */
	 public function deleteProviderByCode()
	 {	 	
	 	$query = "update provider 
	 			  set
	 			  is_deleted = 'T'
	 			  where
	 			  code = '{$this->code}'
	 			;";
		$this->db->query($query);
	 }
	
	
	 /**
	 * function name : getAllProviders
	 * 
	 * Description : 
	 * get all providers from the database where they are active and accepted
	 * 		
	 * Created date ; 8-2-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function getAllProviders()
	 {	 	
	 	$query = "select * , CONCAT( fname,  ' ', father_name,  ' ', lname ) as full_name 
	 			  from provider
	 			  where 
	 			  is_deleted= 'F'
	 			  and
	 			  relief_form_status = 'T'";
		$query =  $this->db->query($query);
		return $query->result_array();
		//return $query->result(); 	
	 }
	 
	 
	 /**
	 * function name : getAllProvidersToExport
	 * 
	 * Description : 
	 * get all providers from the database even if they are not active or deleted
	 * 		
	 * Created date ; 26-3-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function getAllProvidersToExport()
	 {	 	
	 	$query = "select * 
	 			  from provider
	 			 ";
		$query =  $this->db->query($query);
		return $query->result_array();
		//return $query->result(); 	
	 }
	 
	/**
	 * function name : getProviderByCode
	 * 
	 * Description : 
	 * get provider information by code
	 * 		
	 * Created date ; 21-2-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function getProviderByCode()
	 {	 	
	 	$query = "select * ,  CONCAT( fname,  ' ', father_name,  ' ', lname ) as full_name
	 			  from provider
	 			  where 
	 			  code = '{$this->code}' and
	 			  is_deleted= 'F'";
	 			  		  
		$query =  $this->db->query($query);
		return $query->result_array();
		//return $query->result(); 	
	 } 
	
	
	/**
	 * function name : getProviderColumn
	 * 
	 * Description : 
	 * this function will get the provider column names and return it in an array
	 * ararry {field , type , null , key  ,default , extra}
	 * 		
	 * Created date ; 22-2-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function getProviderColumn()
	 {	 	
	 	$query = "SHOW COLUMNS FROM provider";
		$query =  $this->db->query($query);
		return $query->result_array();		
	 }
	 
	 
	 /**
	 * function name : acceptProvider
	 * 
	 * Description : 
	 * set proider relief form status to "T"
	 * 
	  * paramteres:
	  * 	$provider_code : provider code
	  * 		
	 * Created date ; 4-3-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function acceptProvider()
	 {
	 	//set provider releif status to be T	 	
	 	$query = "update provider
	 			  set
	 			  relief_form_status = 'T'
	 			  where 
	 			  code = '{$this->code}'";
	 			  		  
		$this->db->query($query);		
		//return $query->result(); 	
	 } 
	 
	 
	 /**
	 * function name : rejectProvider
	 * 
	 * Description : 
	 * set proider relief form status to "F"
	 * 
	  * paramteres:
	  * 	$provider_code : provider code
	  * 		
	 * Created date ; 4-3-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function rejectProvider()
	 {
	 	//set provider releif status to be F	 	
	 	$query = "update provider
	 			  set
	 			  relief_form_status = 'F'
	 			  where 
	 			  code = '{$this->code}'";
	 			  		  
		$this->db->query($query);
	 }
	 
	 
	 /**
	 * function name : importProvider
	 * 
	 * Description : 
	 * import provider
	  *  if the provider is exist then just update its info
	  *  if the provider does not exist then inster new one
	 * 
	 * parameters:
	 * 	$association_id: the id of the association that the provider belong to
	 * 	$area_id: the area id that the provider belong to
	 * Created date ; 7-3-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function importProvider($association_code , $area_code )
	 {
	 	
		//check if exist
		$query = "select * from provider where
				  code = '{$this->code}'";
	    
		
		
		$query =  $this->db->query($query);
		$provider =  $query->result_array();
		
		
		
		if(count($provider) == 0)
		{
			$provider_query = "INSERT INTO  provider (				
				area_code,
				association_code ,
				code ,
				fname ,
				lname,
				father_name,
				mother_name,
				national_id ,
				birth_date,
				is_emigrant ,
				family_book_num ,
				family_book_letter ,
				family_book_family_number ,
				family_book_note ,
				current_address,
				prev_address,
				street,
				point_guide,
				build,
				floor,
				phone1,
				phone2,
				mobile1,
				mobile2,
				note,
				relief_form_status,
				created_date,
				creator_id,
				is_deleted,
				gender				
				)
				VALUES (
				'{$area_code}',  
				'{$association_code}',  
				'{$this->code}',  
				'{$this->fname}',
				'{$this->lname}',
				'{$this->father_name}',
				'{$this->mother_name}',  
				'{$this->national_id}',
				'{$this->birth_date}',
				'{$this->is_emigrant}',    
				'{$this->family_book_num}',  
				'{$this->family_book_letter}',  
				'{$this->family_book_family_number}',  
				'{$this->family_book_note}',  
				'{$this->current_address}',
				'{$this->prev_address}',
				'{$this->street}',
				'{$this->point_guide}',
				'{$this->build}',
				'{$this->floor}',
				'{$this->phone1}',
				'{$this->phone2}',
				'{$this->mobile1}',
				'{$this->mobile2}',
				'{$this->note}',
				'{$this->relief_form_status}',
				'{$this->created_date}',
				'{$this->user_id}',
				'{$this->is_deleted}',
				'{$this->gender}'
				);	";
				
				$this->db->query($provider_query);
		}
		
		else if($provider[0]["created_date"] < $this->created_date)
		{
				$provider_query = "UPDATE provider 
				  SET 
					area_code = '{$area_code}',
					association_code  = '{$association_code}',
					code = '{$this->code}',
					fname = '{$this->fname}',
					lname = '{$this->lname}',
					father_name = '{$this->father_name}',
					mother_name = '{$this->mother_name}',
					national_id = '{$this->national_id}',
					birth_date = '{$this->birth_date}',
					is_emigrant = '{$this->is_emigrant}',
					family_book_num = '{$this->family_book_num}',
					family_book_letter = '{$this->family_book_letter}',
					family_book_family_number = '{$this->family_book_family_number}',
					family_book_note = '{$this->family_book_note}' ,
					current_address = '{$this->current_address}',
					prev_address = '{$this->prev_address}',
					street = '{$this->street}',
					point_guide = '{$this->point_guide}',
					build = '{$this->build}',
					floor = '{$this->floor}',
					phone1 = '{$this->phone1}',
					phone2 = '{$this->phone2}',
					mobile1 = '{$this->mobile1}',
					mobile2 = '{$this->mobile2}',
					note = '{$this->note}',
					relief_form_status = '{$this->relief_form_status}',
					created_date = '{$this->created_date}',
					creator_id = {$this->user_id},
					is_deleted = '{$this->is_deleted}'			
				  WHERE 
					code =  '{$this->code}';
					 	";
					 	
				$this->db->query($provider_query);
		}
			
					 	
		
	 }
	 
	 
	 
	 /**
	 * function name : detectProviderFraud
	 * 
	 * Description : 
	 * get provider that related to more than one association
	  * if more than national id is exist in more than one association then return it back
	 * 		
	 * Created date ; 8-3-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function detectProviderFraud()
	 {	 	
	 	$query = "SELECT p1.* , association.name as association_name
	 				FROM provider as p1 , provider as p2 , association
					where
					p1.national_id = p2.national_id 
					and
					p1.association_code <> p2.association_code
					and					
					p1.association_code = association.code					
				";
	 			  		  
		$query =  $this->db->query($query);
		return $query->result_array();		 
	 } 
	 
		
	/**
	 * function name : searchProvider
	 * 
	 * Description : 
	 * search provider
	 * 
	 * parameters:
	 * fname
	 * lname
	 * reg_date_less
	 * reg_date_bigger
	 * reg_date_equal
	 * 		
	 * Created date ; 8-2-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function searchProvider($fname ="", 
								   $lname ="", 
								   $national_id = "", 
								   $area = "", 
								   $family_book_num ="", 
								   $family_book_letter = "" , 
								   $family_book_family_num = "" , 
								   $family_num_less = "", 
								   $family_num_bigger = "", 
								   $family_num_equal = "", 
								   $reg_date_less = "", 
								   $reg_date_big  = "", 
								   $reg_date_equal = "")
	 {	 				 	
	 	$query = "select distinct * from provider_data";
	 	
	 	//if($area<> "all") {$query .= ", area ";}
		if($family_num_less <> "" || $family_num_bigger <> "" || $family_num_equal <> "") 
		{
			//$query.= ", family_member ";
		}
				
		$query .= " where is_deleted = 'F'";
				
		if($fname <> "") {$query.= " and fname = '{$fname}'";}
		if($lname <> "") {$query.= " and lname = '{$lname}'";}
		if($national_id <> "") {$query.= " and national_id = '{$national_id}'";}				
		
		if($family_book_num <> "") {$query.= " and family_book_num = '{$family_book_num}'";}
		if($family_book_letter <> "") {$query.= " and family_book_letter = '{$family_book_letter}'";}
		if($family_book_family_num <> "") {$query.= " and family_book_family_number = '{$family_book_family_num}'";}
		
		
		if($family_num_less <> "") {$query.= " and family_count < $family_num_less";}
		if($family_num_bigger <> "") {$query.= " and family_count > $family_num_bigger";}
		if($family_num_equal <> "") {$query.=	 " and family_count = $family_num_equal";}
				
		if($reg_date_less <> "") {$query.= " and created_date > '{$reg_date_less}'";}
		if($reg_date_big <> "") {$query.= " and created_date < '{$reg_date_big}'";}
		if($reg_date_equal <> "") {$query.=	 " and created_date = '{$reg_date_equal}'";}
		
		
		
		//echo $query;
				
		$query =  $this->db->query($query);
		return $query->result_array();
		//return $query->result(); 	
	 }	
		 
	
	/**
	 * function name : getProviderWithStatusX
	 * 
	 * Description : 
	 * get all unkown status of providers
	 * 		
	 * Created date ; 25-3-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function getProviderWithStatusX()
	 {	 	
	 	$query = "select * , CONCAT( fname,  ' ', father_name,  ' ', lname ) as full_name 
	 			  from provider
	 			  where 
	 			  is_deleted= 'F'
	 			  and
	 			  relief_form_status = 'X'";
		$query =  $this->db->query($query);
		return $query->result_array();
		//return $query->result(); 	
	 }


	/**
	 * function name : getProviderWithStatus
	 * 
	 * Description : 
	 * get all status of providers
	 * 		
	 * Created date ; 21-6-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function getProviderWithStatus()
	 {	 	
	 	$query = "select * , CONCAT( fname,  ' ', father_name,  ' ', lname ) as full_name 
	 			  from provider
	 			  where 
	 			  is_deleted= 'F'
	 			  ";
		$query =  $this->db->query($query);
		return $query->result_array();
		//return $query->result(); 	
	 }
	

	/**
	 * function name : chkExist
	 * 
	 * Description : 
	 * check if the provider is exist or not 
	 * if exist then return true
	 * else false
	 * 		
	 * Created date ; 29-3-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Shab Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function chkExist()
	 {	 	
	 	$query = "select * from provider 
	 			  where 
	 			  national_id = '{$this->national_id}' and
	 			  is_deleted = 'F'";
		$query =  $this->db->query($query);
		$providers =  $query->result_array();
		
		if(count($providers) > 0)
			return true;
		else 
			return false;				 
	 }
	 
	 
	 /**
	 * function name : getProviderByGender($gender)
	 * 
	 * Description : 
	 * Get all provider by gender
	 * 
	 * parameters:
	 * gender: 'F' for female 'M' for male
	 * Created date ; 22-6-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function getProviderByGender($gender)
	 {
		$query = "SELECT * 
				  FROM provider 
				  where 				  				 
				  gender = '{$gender}' and 
				  is_deleted = 'F' and 
				  relief_form_status = 'T' 
				  ";
		$query = $this->db->query($query);
		return $query->result_array();
	 }
	 
	 
	 
	 /**
	 * function name : emptyTable
	 * 
	 * Description : 
	 * empty the table
	 * 
	 * parameters:
	 * 
	 * Created date ; 6-7-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function emptyTable()
	 {
		$query = "delete
				  FROM provider 				 
				  ";
		$query = $this->db->query($query);		
	 }
	 
	 /**
	 * function name : getDuplicatedProvider
	 * 
	 * Description : 
	 * search for duplicated providers and return them in an array
	 * 
	 * parameters:
	 * 
	 * Created date ; 20-7-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function getDuplicatedProvider($providers)
	 {
	 	foreach ($providers as $provider) 
	 	{
			$query = "select * from  provider where code = '{$provider['code']}';";
			$query = $this->db->query($query);
			
			$founded_provider = $query->result_array();
			
			//if there is provider founded then return it in the result array
			if(count($founded_provider) > 0)
			{
				$result[] = $founded_provider[0];
			}		 
						
		}			 	
		return $result;		 					
	 }
	 
	 
	/**
	 * function name : generateCSVFile
	 * 
	 * Description : 
	 * search for duplicated providers and return them in an array
	 * 
	 * parameters:
	 * 
	 * Created date ; 20-7-2014
	 * Modification date : ---
	 * Modfication reason : ---
	 * Author : Mohanad Kaleia
	 * contact : ms.kaleia@gmail.com
	 */
	 public function generateCSVFile()
	 {
	 			 					
	 }	 
	 
	 	 
}    
   
?>
