$(function() {
	$("#userList").click(function(){
		fetchList("user");
	});
	
	$("#addressList").click(function(){
		fetchList("address");
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
		data: $("#email,#password").serialize(),
		success: function(result) {
		   console.log(result);
		}
    });
 }