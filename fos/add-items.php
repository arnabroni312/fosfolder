<?php
	session_start();
	$foodId=$_POST["food_id"];
	$foodQuantity=$_POST["item_quantity"];
	$foodName=$_POST["food_name"];
	$foodPrice=$_POST["food_price"];

	$details = array(
		'id' => $foodId,
		'name' => $foodName,
		'price' => $foodPrice,
		'quantity' => $foodQuantity
	);

	if(!isset($_SESSION['cart_details'])){
		$_SESSION['cart_details']=array();
	}

	$cartDetails=$_SESSION['cart_details'];

	if($foodQuantity == 0) {
		unset($_SESSION['cart_details'][$foodId]);
	}
	else {
		$_SESSION['cart_details'][$foodId]=$details;
	}
	print_r($_SESSION['cart_details']);
?>