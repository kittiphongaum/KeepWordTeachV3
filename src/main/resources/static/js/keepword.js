
	
	

	


	//..
	// $(document).ready(function () {
	// 	var tableTeachingById = {
	// 		teaching: $('#userRoleid').val()
	// 	};
	// 	$.ajax({
	// 		type: "GET",
	// 		url: "/TableTeachingOne",
	// 		contentType: "application/json; charset=utf-8",
	// 		data: JSON.stringify(tableTeachingById),
	// 		dataType: "json",
	// 		success: function (result) {
	// 			if (result.userRoleid != null) {
	// 				$.each(result, function (index, msg) {

	// 					var SubjectRow = '<tr>' +

	// 						'<td>' + msg.subject.subjectId + '</td>' +
	// 						'<td>' + msg.subject.subjectName + '</td>' +
	// 						'<td>' + msg.section + '</td>' +
	// 						'<td>' + msg.subject.credit + "(" + msg.subject.creditHour + ")" + '</td>' +
	// 						'<td>' + msg.studenNumber + '</td>' +
	// 						'<td>' + msg.user.userFname + '</td>' +
	// 						'<td>' + msg.startTime + '-' + msg.stopTime + '</td>' +
	// 						'<td>' + msg.room + '</td>' +
	// 						'<td class="text-center">' +
	// 						'<input type="hidden" value=' + msg.user.userId + '>' +
	// 						'<a>' +
	// 						'<span class="glyphicon glyphicon-remove"></span>' +
	// 						'</a>' +
	// 						'</td>' +
	// 						'</tr>';

	// 					$('#customerTable tbody').append(SubjectRow);

	// 				});

	// 			} else if (msg.userRoleid == null) {
	// 				$('#alert').append('<center>ไม่มีข้อมูล</center>');
	// 			}
	// 		}
	// 	});

	//  });