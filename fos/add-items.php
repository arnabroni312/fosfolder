<?php
	session_start();
	$foodId=$_POST["food_id"];
	$foodQuantity=$_POST["item_quantity"];

	if(!isset($_SESSION['cart_details'])){
		$_SESSION['cart_details']=array();
	}

	$cartDetails=$_SESSION['cart_details'];

	if($foodQuantity == 0) {
		unset($_SESSION['cart_details'][$foodId]);
	}
	else {
		$_SESSION['cart_details'][$foodId]=$foodQuantity;
	}
	print_r($_SESSION['cart_details']);
?>