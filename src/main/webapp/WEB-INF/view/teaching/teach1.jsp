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
											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">ระหัสวิชา</label> <input
														type="text" class="form-control">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">ชื่อวิชา</label> <input
														type="text" class="form-control" > <!-- disabled -->
												</div>
											</div>

										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">ภาคทฤษฎี</label> <input
														type="text" class="form-control">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">ภาคปัฏิบัติ</label> <input
														type="text" class="form-control">
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
														type="text" class="form-control">
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<label class="bmd-label-floating">ชม.</label> <input
														type="text" class="form-control">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<label class="bmd-label-floating">จำนวนนักศึกษา</label> <input
														type="number" class="form-control">
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
							<table class="table table-hover">
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