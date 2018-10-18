	
	//insert
	function insertTeachingfrom() {
		//	console.log(warranty)
//		var teachIdS = $('#teachTerm').val();
//		var Year = $('#termYear').val();
//		var mm =Year+'-'+teachIdS;
	
// teachIdS = $('#teachTerm').val();
// Year = $('#termYear').val();
// mm =Year+'-'+teachIdS;
		

		var insertTableTeaching = {
				
			

		 	tebleTeachId: $('#tebleTeachId').val(),
			teachTerm: $('#teachTerm').val(),
	 		termYear: $('#termYear').val(),
			teachWeek: $('#teachWeek').val(),
			studenNumber: $('#studenNumber').val(),
			section: $('#section').val(),
			standardTeach: $('#standardTeach').val(),
			startMonth: $('#startMonth').val(),
			stopMonth: $('#stopMonth').val(),
			teachYear: $('#teachYear').val(),
			startTime: $('#startTime').val(),
			stopTime: $('#stopTime').val(),
			degreeStuden: $('#degreeStuden').val(),
			sumHour: $('#data_hour').val(),
			room:$('#room').val(),
			
			userRoleid: $('#userRoleid').val(),
			subjectRoleid: $('#subjectId').val(),
		// 	teach :{
		// 			teachId: $('#teachId').val(),
		// 			sumHourweek: $('#data_hour').val(),
		// 		sumHourterm: $('#data_hour').val(),
		// 		salaryTudsadee: $('#subjectId').val(),
		// 		salaryPrtibad: $('#subjectId').val(),
		// 		salarySum: $('#subjectId').val(),
		// 		tableteachFk: $('#subjectId').val(),
				
		// 			subjactFk : $('#subjectId').val(),
		// 			userFk :$('#userRoleid').val()
		// }
		}
		
		$.ajax({
			type: "POST",
			url: "/insertTableTeaching",
			contentType: "application/json; charset=utf-8",
			data: JSON.stringify(insertTableTeaching),
			dataType: "json",
			success: function (msg) {
				// console.log(msg)
				if(msg.subjectRoleid !=null){
					window.location.href = "http://localhost:1111/keepword"
				}else{

				}
				
				
			},
			
			error: function () {

			}
		});

	}