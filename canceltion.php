<?php
if (isset($_GET['uname']) && isset($_GET['uid'])) {
	?>
	<!DOCTYPE html>
	<html>

	<head>
		<title>Đã Huỷ | COHA RESORT</title>
		<link rel="stylesheet" href="resort.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

		<link rel="stylesheet" href="bootstrap.min.css">

	</head>

	<body>
		<div class="hero-wrap" style="background-image:url('resort details photos/banner.jpg');height:100%;
		width: 100%;
		background-size: 100% 100%
		background-position:center;
		background-attachment: fixed;
		background-repeat: no-repeat;
		position: relative;
		margin-top:-20px;
		padding-top:4%"><!--bg-image-->
			<section class="hero-wrap hero-wrap-2 js-fullheight" data-stellar-background-ratio="0.5">

				<div class="backimage">
					<div class="overlay"></div>
					<div class="container">
						<div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
							<div class="col-md-9 ftco-animate pb-5">

								<font face="Rockwell" size="50px">
									<p class="mb-3 bread tc" style="color:#f1f1f1; margin-top:60%; "><b>Đã Huỷ</b>
									</p>
								</font>
							</div>
						</div>
					</div>
				</div>
				<div class="container-fluid-my-4">
					<div class="container">
						<div class="row">
							<?php
							include 'db.php';
							$u_id = $_GET['uid'];
							$u_name = $_GET['uname'];

							$sel_sql = "SELECT * from book WHERE userid='$u_id' AND status='cancel'";
							$can_run = mysqli_query($con, $sel_sql);
							if (mysqli_num_rows($can_run) > 0) {
								while ($tempr = mysqli_fetch_assoc($can_run)) {

									echo '<div class="col-md-12" style="width: 100%; border:solid; border-width: 3px;border-color:black; margin-top:20px; margin-left:20px;margin-bottom:20px">';

									echo '<div class="col-md-8"><br>';
									echo ' 
				<table class="table table-striped">
			
				<tr>
				<th>Ngày Nhận :</th>
				<td>' . $tempr['checkin'] . '</td>
				</tr>
				<tr>
				<th>Ngày Huỷ :</th>
				<td>' . $tempr['checkout'] . '</td>
				</tr>
				<th>Tổng Số Tiền :</th>
				<td>' . $tempr['total_price'] . '/Ngày</td>
				</tr>
				<th>Số Điện Thoại Đặt:</th>
				<td>' . $tempr['book_mob'] . '</td>
				</tr>
				<th>Email Đặt :</th>
				<td>' . $tempr['book_email'] . '</td>
				</tr>
				<td><b>Thời Gian Thanh Toán</b> : ' . $tempr['pay_date'] . '</td>
				<td><b>Thời Gian Huỷ:</b> ' . $tempr['status_time'] . '</td>
				</tr>
				
				</table>
				';

									echo '</div>';
									$c_id = $tempr['place_id'];
									//$b_id=$tempr['id'];
									$can_select = "SELECT * from place WHERE id='$c_id'";

									$can_run2 = mysqli_query($con, $can_select);
									echo '<div class="col-md-4">';
									while ($row = mysqli_fetch_assoc($can_run2)) {

										echo '<div class="row">';

										echo '<div class="col-md-1"></div>
						
						<img class="class-img-top thumbnail" src="' . $row['img'] . '" style="margin-top: 20px; height:35vh;width:32rem" >
							<div class="card-body">
							  <h3 class="card-title panel panel-default" style="margin-top: -10px;" align="center"><b>' . $row['name'] . '</b></h3>
							  <p>' . $row['price'] . '/ngày</p>
							  <a href="bookingform.php?p_name=' . $row['name'] . '&p_id=' . $row['id'] . '" class="btn pull-left" style="background-color: DodgerBlue; color:white;">Book Again</a>
							 
							  <a href="Resort Detail/' . $row['name'] . '.html" target="blank" class="btn pull-right" style="background-color: DodgerBlue; color:white;">Details</a>
							
						   </div>';

										echo '</div>';

									}
									echo '</div>';
									echo '</div>';


								}
							} else
								echo '<div class="panel panel-lg " style="margin:70px 310px;"><h1>Không có đơn đã huỷ</h1></div>';

							?>
						</div>
					</div>

	</body>

	</html>
	<?php
}
?>