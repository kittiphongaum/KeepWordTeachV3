$(document).ready(function() {
	
	
	//UserShowID
	$.ajax({
		type : "GET",
		url : "/UserById",
		contentType : "application/json; charset=utf-8",
		dataType : "json",
		success : function(msg) {
			console.log('Success')
			 for(var i=0; i<msg.length; i++) {
				$('#personnelId').append('<option value="' + msg[i].personnelId+ '">' + msg[i].facultyName + ' / ' + msg[i].departmentName + ' / ' + msg[i].positionName + ' / ' + msg[i].subPositionName +'</option>');
        if (msg.userId != null) {
                    $('#userFname').val(msg.userFname);
                    // $('#userLname').val(msg.userLname);
                    // $('#positionTeach').val(msg.positionTeach);
                    // $('#faculty').val(msg.faculty);
                    // $('#mojor').val(msg.mojor);
                    // $('#baseHour').val(msg.baseHour);
                    // $('#baseKrm').val(msg.baseKrm);
                   
                    
                } else if (msg.userId == null) {
                    $('#alert').append('<center>ไม่มีข้อมูล</center>');
                }
		}
	});
})