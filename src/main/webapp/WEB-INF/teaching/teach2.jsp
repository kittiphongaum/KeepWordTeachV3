<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 col-md-12">

				<div class="card">
					<div class="card-header card-header-primary">
						<h3 class="card-title">บันทึกระยะเวลาที่สอน</h3>
						<!--      <p class="card-category">Complete your profile</p> -->
					</div>

					<div class="card-body">
						<form>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<label class="bmd-label-floating">สัปดาห์ที่สอน</label> <input
											type="number" class="form-control">
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label class="bmd-label-floating">วันเ/ดือน/ปี</label>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<input type="date" class="form-control">
									</div>
								</div>

							</div>

							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label class="bmd-label-floating">ระหัสวิชา</label> <input
											type="text" class="form-control">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label class="bmd-label-floating">ชื่อวิชา</label> <input
											type="text" class="form-control">
										<!-- disabled -->
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label class="bmd-label-floating">ภาคทฤษฎี</label> <input
											type="text" class="form-control">
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label class="bmd-label-floating">ภาคปัฏิบัติ</label> <input
											type="text" class="form-control">
									</div>
								</div>
							</div>



							<button type="submit" class="btn btn-primary pull-right">
								เพิ่ม
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
				<h4 class="card-title">ตารางบันทึกระยะเวลาที่สอนแต่ล่ะวิชา</h4>
				<p class="card-category">แสดงข้อมูลวิชาที่สอน</p>
			</div>

			<div class="card-body table-responsive">
				<table class="table table-hover">
					<thead class="text-warning">
						<tr>
							<th scope="col">#</th>
							<th scope="col">สัปดาห์</th>
							<th scope="col">รายวิชา</th>
							<th scope="col">วัน/เดือน/ปี</th>
							<th scope="col">ภาคทฤษฎี</th>
							<th scope="col">ภาคปฏิบัติ</th>
							<th scope="col">รวม</th>

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