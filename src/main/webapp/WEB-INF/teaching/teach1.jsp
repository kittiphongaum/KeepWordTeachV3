<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
	<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12">

							<div class="card">
								<div class="card-header card-header-primary">
									<h3 class="card-title">เพิ่มรายวิชาที่สอน</h3>
									<!--      <p class="card-category">Complete your profile</p> -->
								</div>
								
								<div class="card-body">
									<form>
									<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<label class="bmd-label-floating">แบบเบิกค่าสอบประจำเดือน</label> 
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
												<label class="bmd-label-floating">เดือน</label>
												 <input
														type="text" class="form-control" > 
												</div>
											</div>
											<div class="col-md-1">
												<div class="form-group">
												<label class="bmd-label-floating">ถึง</label> 
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
												<label class="bmd-label-floating">เดือน</label>
												 <input
														type="text" class="form-control" > 
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
												<label class="bmd-label-floating">พ.ศ.</label> 
												 <input
														type="text" class="form-control" > 
												</div>
											</div>

										</div>
									<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<label class="bmd-label-floating">ระดับการสอน</label> 
													 <input
														type="text" class="form-control" > 
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label class="bmd-label-floating">จำนวนนักศึกษา</label> <input
														type="number" class="form-control">
												</div>
											</div>

										</div>
										
										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">ระหัสวิชา</label> <input
														type="text" class="form-control"id="subjectID">
												</div>
											</div>
											<button type="button" class="btn btn-white btn-round btn-just-icon" onclick="subject()">
												<i class="material-icons">search</i>
												<div class="ripple-container"></div>
											  </button>
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">ชื่อวิชา</label> <input
														type="text" class="form-control"  id="subjectName"> 
												</div>
											</div>

										</div>
										
										<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<label class="bmd-label-floating">จำนวนหน่วยกิจ</label>

												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="bmd-label-floating">นก.</label> <input
														type="text" class="form-control" id="credit">
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="bmd-label-floating">ชม.</label> <input
														type="text" class="form-control" id="creditHour">
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="bmd-label-floating">ภาคทฤษฎี</label> <input
														type="text" class="form-control" id="tudsadee">
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="bmd-label-floating">ภาคปัฏิบัติ</label> <input
														type="text" class="form-control" id="prtibad">
												</div>
											</div>
										</div>
										<div class="row">
										<div class="col-md-3">
												<div class="form-group">
													<label class="bmd-label-floating">เลือกสถานะวิชา</label>
													

												</div>
											</div>
										</div>


										<button type="submit" class="btn btn-primary pull-right"><h4>เพิ่มวิชาสอน</h4></button>
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
							<table id="customerTable" class="table table-hover" >
								<thead class="text-warning">
									<tr>
										<th rowspan="2">#</th>
										<th rowspan="2">รายวิชา</th>

										<th rowspan="2">section</th>
										<th colspan="2">จำนวนหนวยกิจ</th>
										<th rowspan="2">จำนวนนักศึกษา</th>
										<th rowspan="2">ใช้ป็นฐาน/คาบ</th>
										<th rowspan="2">ใช้เบิก/หน่วยชั่วโมง</th>
										<th rowspan="2">หมายเหตู</th>

									</tr>
									<tr>
										<th scope="col">นก.</th>
										<th scope="col">ชก.</th>

									</tr>
								</thead>
								<tbody>
								</tbody>
								<thead>
									<tr>
										<th colspan="6" class="text-center">รวม</th>
										<th rowspan="row"></th>
										<th rowspan="row"></th>
										<th rowspan="row"></th>



									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
			
	<script type="text/javascript">
	$(document).ready( function () {
		buttons: [
	        {
	            extend: 'collection',
	            text: 'Export',
	            buttons: [ 'csv-flash', 'xls-flash', 'pdf-flash' ]
	        }
	    ]
	    var table = $('#subTable1').DataTable({
	    	
	           "sAjaxSource": "/sub",
	           "sAjaxDataProp": "",
	           "searching":false,
	           /* "ordering":false, */
	           "info":false,
	           "paging": false,
	           
	           "iengthChange":false,
	           "order": [[ 1, "asc" ]], 
	           "aoColumns": [
	               { "mData": "id"},
	             { "mData": "name" },
	                 { "mData": "subjectId" },
	                 { "mData": "subjectName" },
	                 { "mData": "credit" },
	                 { "mData": "creditHour" },
	                 { "mData": "tudsadee" },
	                 { "mData": "prtibad" }
	                
	                 
	           ]
	          
	    
	    })
	});
	</script>
	<script>
	//insert
	function insertTeachfrom() {
		//	console.log(warranty)

		var insertTeachSub = {
				teachID: $("1").val(), //id,
			// subjectName: $('#subjectName').val(), //id
			startMonth: $('#startMonth').val(),
			stopMonth: $('#stopMonth').val(),
			buddhist: $('#buddhist').val(),
			teachRowSub: $('#teachRowSub').val(),
			teachRowDat:$('#teachRowDat').val()
		}

		$.ajax({
			type: "POST",
			url: "/insertTeach",
			contentType: "application/json; charset=utf-8",
			data: JSON.stringify(insertTeachSub),
			dataType: "json",
			success: function (msg) {
				console.log(msg)
				window.location.href = msg.page;
			},
			error: function () {			
				window.location.reload();
			}
		});
	}
	</script>
	
	<script>
	

		// Do DELETE a Customer via JQUERY AJAX
		$(document).on("click", "a", function () {

			var customerId = $(this).parent().find('input').val();
			var workingObject = $(this);

			$.ajax({
				type: "DELETE",
				url: window.location + "" + customerId,
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
					alert("ERROR: ", e);
					console.log("ERROR: ", e);
				}
			});
		});

	</script>
			
	