<?php
    session_start();
    ini_set("display_errors", "1");
    include_once('includes/dbconnection.php');
    if (strlen($_SESSION['fosuid']==0)) {
        header('location:logout.php');
    } else { 
    //placing order

        if(isset($_POST['placeorder'])){
        //getting address
            $fnaobno=$_POST['flatbldgnumber'];
            $street=$_POST['streename'];
            $area=$_POST['area'];
            $lndmark=$_POST['landmark'];
            $city=$_POST['city'];
            $userid=$_SESSION['fosuid'];
            //genrating order number
            $orderno= mt_rand(100000000, 999999999);
            $query="update tblorders set OrderNumber='$orderno',IsOrderPlaced='1' where UserId='$userid' and IsOrderPlaced is null;";
            $query.="insert into tblorderaddresses(UserId,Ordernumber,Flatnobuldngno,StreetName,Area,Landmark,City) values('$userid','$orderno','$fnaobno','$street','$area','$lndmark','$city');";

            $result = mysqli_multi_query($con, $query);
            if ($result) {

                echo '<script>alert("Your order placed successfully. Order number is "+"'.$orderno.'")</script>';
                echo "<script>window.location.href='my-order.php'</script>";

            }
        }
    }   

    //Code deletion
    if(isset($_GET['delid'])) {
    $rid=$_GET['delid'];
    $query=mysqli_query($con,"delete from tblorders where ID='$rid'");
    echo '<script>alert("Food item deleted")</script>';
    echo "<script>window.location.href='cart.php'</script>";

    }

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>Food Ordering System</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet"> 
</head>

<body>
    <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
        <!--header starts-->
        <header id="header" class="header-scroll top-header headrom">
            <!-- .navbar -->
            <?php include_once('includes/header.php');?>
            <!-- /.navbar -->
        </header>
  
        <div class="page-wrapper">
            <!-- top Links -->
            <div class="top-links">                
            </div>
            <!-- end:Top links -->

            <!-- start: Inner page hero -->
            <section class="inner-page-hero bg-image" data-image-src="images/decouvrez-l-experience-food-d-airbnb.jpg">
                <div class="profile">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12  col-md-4 col-lg-4 profile-img">
                                <div class="image-wrap">
                                    <figure><img src="images/decouvrez-l-experience-food-d-airbnb.jpg" alt="Profile Image"></figure>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 profile-desc">
                                <div class="pull-left right-text white-txt">
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            <!-- end:Inner page hero -->
            <div class="breadcrumb">
                <div class="container">
                    <ul>
                        <li><a href="index.php" class="active">Home</a></li>
                        <li><a href="cart.php">Cart</a></li>
                        <li>Detail Cart</li>
                    </ul>
                </div>
            </div>
            
            <div class="container m-t-30">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3">
                        <div class="sidebar clearfix m-b-20">
                            <div class="main-block">
                                <div class="sidebar-title white-txt">
                                    <h6>Food Categories</h6> <i class="fa fa-cutlery pull-right"></i> </div>
                                    <?php
      
                                        $query=mysqli_query($con,"select * from  tblcategory");
                                        while($row=mysqli_fetch_array($query))
                                        {
                                    ?>    
              
                                    <ul>        
                                        <li>
                                            <label class="custom-control custom-checkbox">
                                                <span class="custom-control-description"><a href="viewfood-categorywise.php?catid=<?php echo $row['CategoryName'];?>"><?php echo $row['CategoryName'];?></a></span> </label>
                                        </li>
                                
                                    
                                    </ul>
                                    <?php } ?>
                                <div class="clearfix"></div>
                            </div>
                            <!-- end:Sidebar nav -->
                        </div>
                        <!-- end:Left Sidebar -->
                    </div>

                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-9">
                        <div class="menu-widget m-b-30">
                            <div class="widget-heading">
                                <h3 class="widget-title text-dark">Your ORDERS Delicious hot food! 
                                    <a class="btn btn-link pull-right" data-toggle="collapse" href="#popular" aria-expanded="true">
                                        <i class="fa fa-angle-right pull-right"></i>
                                        <i class="fa fa-angle-down pull-right"></i>
                                    </a>
                                </h3>
                                
                                <div class="clearfix"></div>
                            </div>

                            <div class="collapse in" id="1">
                                <div class="food-item white cart-table">
                                    <?php 
                                        //$userid= $_SESSION['fosuid'];
                                    if(!empty($_SESSION["cart_details"]))
                                    {   
                                        echo '
                                        <div class="container">
                                            <div class="jumbotron">
                                                <h1>Your Shopping Cart</h1>
                                                <p>Looks tasty...!!!</p>
                                                
                                            </div>
                                        </div>
            
                                        <div class="table-responsive" style="padding-left: 100px; padding-right: 100px;">
                                            <table class="table table-striped">
                                                <thead class="thead-dark">
                                                    <tr>
                                                        <th width="30%">Food Name</th>
                                                        <th width="30%">Quantity</th>
                                                        <th width="15%">Price</th>
                                                        <th width="20%">Order Total</th>
                                                        <th width="5%">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>';

                                        $total = 0;
                                        foreach ($_SESSION['cart_details'] as $itemId=>$itemQuantity) {
											$query=mysqli_query($con,"select * from  tblfood where id=".$itemId);
											$itemDetails=mysqli_fetch_array($query);
											$item=array();
											$item["id"]=$itemId;
											$item['quantity']=$itemQuantity;
											$item["name"]=$itemDetails["ItemName"];
											$item["price"]=$itemDetails["ItemPrice"];
                                            echo '
                                            <tr>
                                                <td>'.$item["name"].'</td>
                                                <td class="pull-left">
                                                    <div class="order-control" id="order-control-'.$item['id'].'">
                                                        <button type="submit" name="submit" class="btn theme-btn-dash pull-right modify-qty" data-row-id="'.$item['id'].'" data-row-name="'.$item['name'].'" data-row-price="'.$item['price'].'" id="item-plus-'.$item['id'].'"><i class="fa fa-plus"></i></button>
                                                        <span class="pull-right" style="color:orange;font-weight:bold;padding:5px;" id="item-qty-'.$item['id'].'">'.$item['quantity'].'</span>
                                                        <button type="submit" name="submit" class="btn theme-btn-dash pull-right modify-qty" data-row-id="'.$item['id'].'" data-row-name="'.$item['name'].'" data-row-price="'.$item['price'].'" id="item-minus-'.$item['id'].'"><i class="fa fa-minus"></i></button>
                                                    </div>
                                                </td>
                                                <td>'.$item["price"].'</td>
                                                
                                                <td>'.number_format($item["quantity"] * $item["price"], 2).'</td>
                                                <td><a href="cart.php?action=delete&id='.$item["id"].'"><span class="text-danger">Remove</span></a></td>
                                            </tr>';

                                            $total = $total + ($item["quantity"] * $item["price"]);
                                        } 
                                            
                                        echo '
                                                    <tr>
                                                        <td colspan="3" align="right">Total</td>
                                                        <td align="right">'.number_format($total, 2).'</td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>';

                                        echo '<a href="cart.php?action=empty"><button class="btn btn-danger pull-right"><span class="glyphicon glyphicon-trash"></span> Empty Cart</button></a>';
                                        echo '</div>';
                                    }
                                    else
                                    {
                                        echo '
                                        <div class="container">
                                            <div class="jumbotron">
                                                <h1>Your Shopping Cart</h1>
                                                <p>Oops! We can\'t smell any food here. Go back and <a href="foodlist.php">order now.</a></p>
                                            </div>                            
                                        </div>';
                                    }
                                    ?>

                                </div>                           
                            </div>

                            <form method="post" id="address-form">
                                <div class="col-xs-12 col-md-12 col-lg-12" style="margin-top: 20px;">
                                    <div class="sidebar-wrap">
                                        <div class="widget widget-cart">
                                            <div class="widget-heading">
                                                <h3 class="widget-title text-dark">
                                                    Your Shopping Cart
                                                </h3>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="order-row bg-white">
                                                <div class="widget-body">                                
                                                    <div class="form-group row no-gutter">
                                                        <div class="col-lg-12">
                                                            <input type="text" name="flatbldgnumber"  placeholder="Flat or Building Number" class="form-control" required="true">
                                                            <input type="text" name="streename" placeholder="Street Name" class="form-control" required="true">       
                                                            <input type="text" name="area"  placeholder="Area" class="form-control" required="true">
                                                            <input type="text" name="landmark" placeholder="Landmark if any" class="form-control"> 
                                                            <input type="text" name="city" placeholder="City" class="form-control" required="true">           
															<input type="text" name="pincode" placeholder="Pincode" class="form-control" required="true">           
                                                    
                                                    </div>
                                                </div>
                                            </div>
                                            <hr />
                                        
                                    
                                            <div class="widget-body">
                                                <div class="price-wrap text-xs-center">
                                                    <p>TOTAL</p>
                                                    <h3 class="value"><strong><?php echo number_format($total,2);?></strong></h3>
                                                    <p>Free Shipping</p>
                                                    <button  type="submit" name="placeorder" class="btn theme-btn btn-lg">Place order</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- start: FOOTER -->
                <?php include('includes/footer.php'); ?>
            <!-- end:Footer -->
        </div>
        <!-- end:page wrapper -->
    </div>
    <!--/end:Site wrapper -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>

    <script>
		function geocode(address,callback){
			$.get("https://maps.googleapis.com/maps/api/geocode/json?address="+address+"&key=AIzaSyAXbeSXDpsYVcu3mgrRwkgaWG19CmcX40Q",function(data){
				var lat=data.results[0].geometry.location.lat;
				var lng=data.results[0].geometry.location.lng;
				return callback(lat,lng);
			});
		}
		$("#address-form").submit(function(){
			var inputs=$("#address-form :input");
			window.inputs=inputs;
			var address={};
			for(var i=0;i<inputs.length;i++){
				var element=$(inputs[i]);
				switch(element.attr("name")){
					case "flatbldgnumber":
						address.flatbldgnumber=element.val();
						break;
					case "streename":
						address.streename=element.val();
						break;
					case "area":
						address.area=element.val();
						break;
					case "landmark":
						address.landmark=element.val();
						break;
					case "city":
						address.city=element.val();
						break;
					case "pincode":
						address.pincode=element.val();
						break;
				}
			}
			var humanReadableAddress=address.flatbldgnumber+" "+address.streename+" "+", "+address.area+", "+address.city+" "+address.pincode;
			geocode(humanReadableAddress,function(lat,lng){
				address.latitude=lat;
				address.longitude=lng;
				address.placeorder=1;
				$.post("cart.php",address,
				function(data, status){
					location.reload();
				});
			});
			return false;
		});
		var quantity=[];
		function postData(foodId,foodQty,foodName,foodPrice){
			$.post("add-items.php",
			  {
				food_id: foodId,
				item_quantity: foodQty,
                food_name: foodName,
                food_price: foodPrice
			  },
			  function(data, status){
				console.log("Data: " + data + "\nStatus: " + status);
                location.reload();
			});
		}

        

		$(".add-item").click(function(){
			var foodId=$(this).attr("data-row-id");
            var foodName=$(this).attr("data-row-name");
            var foodPrice=$(this).attr("data-row-price");
			
            $("#add-item-"+foodId).hide();
			$("#order-control-"+foodId).show();
			if(quantity[foodId]==undefined){
				if($("#item-qty-"+foodId).html()==undefined){
					quantity[foodId]=0;
				} else{
					quantity[foodId]=$("#item-qty-"+foodId).html();
				}
			}
			quantity[foodId]++;
			$("#item-qty-"+foodId).html(quantity[foodId]);
			postData(foodId,quantity[foodId],foodName,foodPrice);
			return false;
		});
		$(".modify-qty").click(function(){
			var foodId=$(this).attr("data-row-id");
            var foodName=$(this).attr("data-row-name");
            var foodPrice=$(this).attr("data-row-price");

			if(quantity[foodId]==undefined){
				if($("#item-qty-"+foodId).html()==undefined){
					quantity[foodId]=0;
				} else{
					quantity[foodId]=$("#item-qty-"+foodId).html();
				}
			}
			if($(this).attr("id")=="item-plus-"+foodId){
				quantity[foodId]++;
			} else{
				quantity[foodId]--;
			}
			$("#item-qty-"+foodId).html(quantity[foodId]);
			if(quantity[foodId]==0){
				$("#order-control-"+foodId).hide();
				$("#add-item-"+foodId).show();
			}
			postData(foodId,quantity[foodId],foodName,foodPrice);
			return false;
		});
	</script>
</body>

</html>