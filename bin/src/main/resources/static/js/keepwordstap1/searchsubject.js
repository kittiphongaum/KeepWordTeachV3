
	//seachSubject
	function subjectSec() {
		

		$('#subjectName').empty();
		$('#credit').empty();
		$('#creditHour').empty();
		$('#tudsadee').empty();
		$('#prtibad').empty();
		$('#subjectId').empty();
		var subjectsach = {
			subjectBean: $('#subjectId').val()
		};
		$.ajax({
			type: "POST",
			url: "/subjectSeach",
			contentType: "application/json; charset=utf-8",
			data: JSON.stringify(subjectsach),
			dataType: "json",
			success: function (msg) {
			
				if (msg.subjectId != null) {
					$('#subjectName').val(msg.subjectName);
					// $('#credit').val(msg.credit);
					// $('#creditHour').val(msg.creditHour);
					$('#tudsadee').val(msg.tudsadee);
					$('#prtibad').val(msg.prtibad);

					var creditS = msg.credit
					var creditHourS = msg.creditHour
					var cre = creditS+"("+ creditHourS +")";
					$("#creditsum").val(cre);
				} else if (msg.subjectId == null) {
					$('#alert').append('<center>ไม่มีข้อมูล</center>');
				}
			}

		});

	}