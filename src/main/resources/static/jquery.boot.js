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