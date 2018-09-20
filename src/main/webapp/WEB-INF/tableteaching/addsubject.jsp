<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 col-md-12">

				<div class="card">
					<div class="card-header card-header-primary">
						<h3 class="card-title">ลงทะเบียนสอน</h3>
						<!--      <p class="card-category">Complete your profile</p> -->
					</div>

					<div class="card-body">
						<form>

							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<label class="bmd-label-floating">section</label>
										<input type="text" class="form-control" id="section">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="bmd-label-floating">จำนวนนักศึกษา</label> <input type="number" class="form-control" id="studenNumber">
									</div>
								</div>

							</div>

							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label class="bmd-label-floating">ระหัสวิชา</label> <input type="text" class="form-control" id="subjectId"
										    name="subjectId">
									</div>
								</div>

								<button type="button" class="btn btn-white btn-round btn-just-icon" onclick="subjectSec()">
									<i class="material-icons">search</i>
									<div class="ripple-container"></div>
								</button>

								<div class="col-md-6">
									<div class="form-group">
										<label class="bmd-label-floating">ชื่อวิชา</label> <input type="text" class="form-control" id="subjectName"
										    disabled>
									</div>
								</div>

							</div>

							<div class="row">
								<div class="col-md-2">
									<div class="form-group">
										<label class="bmd-label-floating">จำนวนหน่วยกิจ</label>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label class="bmd-label-floating">นก.
										</label> <input type="text" class="form-control" id="credit" disabled>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label class="bmd-label-floating">ชม.</label> <input type="text" class="form-control" id="creditHour"
										    disabled>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label class="bmd-label-floating">ภาคทฤษฎี</label> <input type="text" class="form-control" id="tudsadee"
										    disabled>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label class="bmd-label-floating">ภาคปัฏิบัติ</label> <input type="text" class="form-control" id="prtibad"
										    disabled>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-2">
									<div class="form-group">
										<label class="bmd-label-floating">วันเวลาสอน</label>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label class="bmd-label-floating">เริ่มการสอน</label>
									</div>
								</div>
								<div class="col-md-1">
									<div class="form-group">
										<input type="time" class="form-control" id="startTime">
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label class="bmd-label-floating">สิ้นสุดการสอน</label>
									</div>
								</div>
								<div class="col-md-1">
									<div class="form-group">
										<input type="time" class="form-control" id="stopTime">
									</div>
								</div>
								<div class="col-md-1">
									<div class="form-group">
										<label class="bmd-label-floating">ห้อง</label>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<input type="text" class="form-control" id="room">
									</div>
								</div>
							</div>
							<button type="submit" class="btn btn-primary pull-right" onclick="insertTeachingfrom()">
								<h4>เพิ่มวิชาสอน</h4>
							</button>
							<div class="clearfix"></div>
						</form>
					</div>

				</div>
			</div>

		</div>
	</div>
	<div class="col-lg-12 col-md-12">
		<div class="card">
			<div class="card-header card-header-warning">
				<h4 class="card-title">ตารางวิชาที่สอน</h4>
				<p class="card-category">แสดงข้อมูลวิชาที่สอน</p>
			</div>

			<div class="card-body table-responsive">
				<table id="customerTable" class="table table-bordered table-hover">
					<thead class="text-warning">
						<tr>

							<th rowspan="2">รหัสวิชา</th>
							<th rowspan="3">ชื่อวิชา</th>
							<th rowspan="2">section</th>
							<th rowspan="2">หน่วยกิต</th>
							<!-- <th colspan="2">หน่วยกิต</th> -->
							<th rowspan="2">จำนวนนักศึกษา</th>
							<th rowspan="2">ผู้สอน</th>
							<th rowspan="2">วันเวลาสอน</th>
							<th rowspan="2">ห้อง</th>
							<th rowspan="2">หมายเหตู</th>

						</tr>
						<!-- <tr>
							<th scope="col">นก.</th>
							<th scope="col">ชก.</th>

						</tr> -->
					</thead>
					<tbody>
					</tbody>

				</table>
			</div>
		</div>
	</div>
	<div class="col-lg-12 col-md-12">
		<div class="card">
			<div class="card-header card-header-danger">
				<h4 class="card-title">ตารางวิชาที่สอน</h4>
				<p class="card-category">แสดงข้อมูลวิชาที่สอน</p>

			</div>
			<hr>
			<table id="customerTable" class="table table-bordered">
				<thead class="table-secondary">
					<tr>
						<th>Day/time</th>
						<td>8.00-9.00</td>
						<td>9.00-10.00</td>
						<td>10.00-11.00</td>
						<td>11.00-12.00</td>

						<td>12.00-13.00</td>
						<td>13.00-14.00</td>
						<td>14.00-15.00</td>
						<td>15.00-16.00</td>
						<td>16.00-17.00</td>
						<td>17.00-18.00</td>.
						<td>18.00-19.00</td>
					</tr>
				</thead>
				<thead class="text-warning">
					<tr>
						<th>จันทร์</th>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<th>อังคาร</th>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<th>พุธ</th>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<th>พฤหัสบดี</th>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<th>ศุกร์</th>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<th>เสาร์</th>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<th>อาทิศ</th>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</thead>

			</table>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function () {
		buttons: [{
			extend: 'collection',
			text: 'Export',
			buttons: ['csv-flash', 'xls-flash', 'pdf-flash']
		}]
		var table = $('#subTable1').DataTable({

			"sAjaxSource": "/sub",
			"sAjaxDataProp": "",
			"searching": false,
			/* "ordering":false, */
			"info": false,
			"paging": false,

			"iengthChange": false,
			"order": [
				[1, "asc"]
			],
			"aoColumns": [{
					"mData": "id"
				},
				{
					"mData": "name"
				},
				{
					"mData": "subjectId"
				},
				{
					"mData": "subjectName"
				},
				{
					"mData": "credit"
				},
				{
					"mData": "creditHour"
				},
				{
					"mData": "tudsadee"
				},
				{
					"mData": "prtibad"
				}


			]


		})
	});
</script>
<script>
	//insert
	function insertTeachingfrom() {
		//	console.log(warranty)


		var insertTableTeaching = {
			tebleTeachId: $('#room').val(),
			studenNumber: $('#studenNumber').val(),
			section: $('#section').val(),
			startTime: $('#startTime').val(),
			stopTime: $('#stopTime').val(),
			room: $('#room').val(),
			userRoleid: $('#userRoleid').val(),
			subjectRoleid: $('#subjectId').val()
		}

		$.ajax({
			type: "POST",
			url: "/insertTableTeaching",
			contentType: "application/json; charset=utf-8",
			data: JSON.stringify(insertTableTeaching),
			dataType: "json",
			success: function (msg) {
				console.log(msg)
				// window.location.href = msg.page;
				window.location.reload();
			},
			error: function () {

			}
		});
	}
</script>

<script>
	$(document).ready(function () {

	

		$(function () {
			var userid= $("#userRoleid").val();

			$.ajax({
				type: "GET",
				contentType : "application/json",
				url: "/TableTeachingOne1/"+userid,
				dataType : 'json',
				success: function (result) {
					$.each(result, function (index, msg) {

						var SubjectRow = '<tr>' +

							'<td>' + msg.subject.subjectId + '</td>' +
							'<td>' + msg.subject.subjectName + '</td>' +
							'<td>' + msg.section + '</td>' +
							'<td>' + msg.subject.credit + "(" + msg.subject.creditHour + ")" + '</td>' +
							'<td>' + msg.studenNumber + '</td>' +
							'<td>' + msg.user.userFname + '</td>' +
							'<td>' + msg.startTime + '-' + msg.stopTime + '</td>' +
							'<td>' + msg.room + '</td>' +
							'<td class="text-center">' +
							'<input type="hidden" value=' + msg.user.userId + '>' +
							'<a>' +
							'<span class="glyphicon glyphicon-remove"></span>' +
							'</a>' +
							'</td>' +
							'</tr>';

						$('#customerTable tbody').append(SubjectRow);

					});

					$("#customerTable tbody tr:odd").addClass("info");
					$("#customerTable tbody tr:even").addClass("success");
				},
				error: function (e) {
					// alert("ERROR: 22", e);
					// console.log("ERROR: 22", e);
				}
			});
		});

		// Do DELETE a Customer via JQUERY AJAX
		$(document).on("click", "a", function () {

			var customerId = $(this).parent().find('input').val();
			var workingObject = $(this);

			$.ajax({
				type: "DELETE",
				url: "" + customerId,
				success: function (resultMsg) {
					$("#resultMsgDiv").html("<p style='background-color:#67597E; color:white; padding:20px 20px 20px 20px'>" +
						"Customer with Id=" + customerId + " is deleted successfully!" +
						"</p>");

					workingObject.closest("tr").remove();

					// re-css for table
					$("#customerTable tbody tr:odd").addClass("info");
					$("#customerTable tbody tr:even").addClass("success");
				},
				error: function (e) {
					// alert("ERROR: 11", e,);
					// console.log("ERROR: 11", e,);
				}
			});
		});
	})
</script>
<script>
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
					$('#credit').val(msg.credit);
					$('#creditHour').val(msg.creditHour);
					$('#tudsadee').val(msg.tudsadee);
					$('#prtibad').val(msg.prtibad);

				} else if (msg.subjectId == null) {
					$('#alert').append('<center>ไม่มีข้อมูล</center>');
				}
			}

		});

	}
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
</script>
<script>

</script>