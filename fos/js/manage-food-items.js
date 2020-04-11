var quantity=[];
$(window).load(function(){
	function postData(foodId,foodQty){
		$.post("add-items.php",
		  {
			food_id: foodId,
			item_quantity: foodQty
		  },
		  function(data, status){
			console.log("Data: " + data + "\nStatus: " + status);
		});
	}
	$(".add-item").click(function(){
		var foodId=$(this).attr("data-row-id");
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
		postData(foodId,quantity[foodId]);
		return false;
	});
	$(".modify-qty").click(function(){
		var foodId=$(this).attr("data-row-id");
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
		postData(foodId,quantity[foodId]);
		return false;
	});
});