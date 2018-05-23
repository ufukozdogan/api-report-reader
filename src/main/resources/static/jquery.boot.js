$(function() {
	$("#transactionList").click(function(){
		fetchList("transaction");
	});
	
	$("#clientList").click(function(){
		fetchList("clients");
	});
});

function addForm(type) {
	$.ajax({
		type : "GET",
		url : "/apireader/"+type+"/form",
		success : function(data) {
			$(".panel-body").html(data);
		}
	});	
}

function fetchList(type){
	$.ajax({
		type : "GET",
		url : "/apireader/"+type+"/list",
		success : function(data) {
			$(".panel-body").html(data);
		}
	});
}

function Login() {
    $.ajax({
		url: "https://sandbox-reporting.rpdpymnt.com/api/v3/merchant/user/login",// your api url
		headers: {
	        'Content-Type': 'application/x-www-form-urlencoded'
	    },
		type: "POST",
		dataType: 'json',
		data: $("#loginForm").serialize(),
		success: function(result) {
		   console.log(result);
		}
    });
 }