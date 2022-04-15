<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<title>Home</title>
</head>
<body>

	<div class="container-fluid">

		<div class="row flex-nowrap ">

			<!-- Menu Col -->
			<div class="col col-md-3 col-xl-2 px-sm-2 px-0 bg-dark">

				<div
					class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100 "
					style="position: fixed;">

					<a class="navbar-brand"
						href="${pageContext.request.contextPath}/actionhome"><img
						src="JalaLogo.png" alt="logo" class="bi me-2" width="140"
						height="70"></img></a><br>

					<ul
						class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start"
						id="menu">

						<!-- HOME  -->
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/actionhome"
							class="nav-link align-middle px-0"> <i class="fs-4 bi-house"></i>
								<span class="ms-1 d-none d-sm-inline"> Home </span>
						</a></li>

						<li><a href="#submenu2" data-bs-toggle="collapse"
							class="nav-link px-0 align-middle "> <i
								class="fs-4 bi-people"></i> <span
								class="ms-1 d-none d-sm-inline"> Users <i
									class="bi bi-caret-down-fill"></i>
							</span></a>
							<ul class="collapse nav flex-column ms-1" id="submenu2"
								data-bs-parent="#menu">
								<li class="w-100"><a
									href="${pageContext.request.contextPath}/democreatestudent"
									class="nav-link px-0"><span class="d-none d-sm-inline">
											<i class="bi bi-caret-right-fill"></i> Create
									</span> <i class="bi bi-person-plus-fill"></i> </a></li>
								<li><a
									href="${pageContext.request.contextPath}/demostudentdetails0"
									class="nav-link px-0"> <span class="d-none d-sm-inline"><i
											class="bi bi-caret-right-fill"></i> Search </span> <i
										class="bi bi-search"></i>
								</a></li>
							</ul></li>
					</ul>

				</div>
			</div>

			<!-- Main Content Section -->
			<div class="col py-3">

				<!-- header -->
				<!-- <div class="row mx-5 py-5"> -->

				<div class="row  sticky-top bg-light">
					<div class="col-10 py-3 px-5 ">

						<h3>
							<i class="bi bi-person-lines-fill"></i> CRUD Operations
						</h3>
					</div>
					<!-- COL 2 -->
					<div class="col">

						<button class="btn btn-danger shadow my-3 px-3"
							data-bs-toggle="modal" data-bs-target="#myModal">
							<i class="fs-4 bi-speedometer2 mx-1"></i> DashBoard
						</button>

					</div>
				</div>

				<!-- The Modal for Confirming before save -->
				<div class="modal fade" id="myModal">
					<div class="modal-dialog">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">Confirmation</h4>
								<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
							</div>

							<!-- Modal body -->
							<div class="modal-body">
								<p class="text-danger">The Data You Created Will be Deleted.</p>
								<i>Are you sure you wish to go to DashBoard ?</i>
							</div>

							<!-- Modal footer -->
							<div class="modal-footer">
								<a href="${pageContext.request.contextPath}/demojobseekershome"
									class="btn btn-outline-success shadow mx-2">Confirm</a>
								<button type="button" class="btn btn-outline-danger shadow"
									data-bs-dismiss="modal">Cancel</button>
							</div>
						</div>
					</div>
				</div>
				<!-- Modal Closed -->

				<hr>

				<div class="alert alert-danger alert-dismissible fade show mx-5">
					<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
					The User Data Created here is temporary, go back to <b>DASHBOARD</b>
					after doing <b>CRUD operatons.</b>
				</div>



				<div class="col mx-3 my-5">

					<div
						class="container-fluid p-5 shadow-lg bg-light border border-secondary">

						<!-- CRUD IMAGE -->
						<img src="CRUD.png" class="mx-auto d-block" width="300"
							height="150">
						<hr>
						<br>

						<div>

							<h4>What is the CRUD operation?</h4>
							<p>The CRUD stands for Create, Read/Retrieve, Update, and
								Delete. These are the four basic functions of the persistence
								storage.</p>

							<p>The CRUD operation can be defined as user interface
								conventions that allow view, search, and modify information
								through computer-based forms and reports. CRUD is data-oriented
								and the standardized use of HTTP action verbs. HTTP has a few
								important verbs.</p>

							<ul>
								<li><b>POST :</b> Creates a new resource</li>
								<li><b>GET :</b> Reads a resource</li>
								<li><b>PUT :</b> Updates an existing resource</li>
								<li><b>DELETE :</b> Deletes a resource</li>
							</ul>

							<p>Within a database, each of these operations maps directly
								to a series of commands. However, their relationship with a
								RESTful API is slightly more complex.</p>
							<br>
							<div class="w-75">
								<hr>
							</div>

							<br>
							<h4>Standard CRUD Operation</h4>
							<br>
							<ul>
								<li><b>CREATE Operation :</b> It performs the INSERT
									statement to create a new record.</li>
								<li><b>READ Operation :</b> It reads table records based on
									the input parameter.</li>
								<li><b>UPDATE Operation :</b> It executes an update
									statement on the table. It is based on the input parameter.</li>
								<li><b>DELETE Operation :</b> It deletes a specified row in
									the table. It is also based on the input parameter.</li>
							</ul>
						</div>
					</div>
					<br> <br> <br> <br> <br>
					<hr>
					<footer class=" bg-light bg-gradient border">

						<!-- Grid container -->
						<div class="container p-3">
							<!-- Section: Social media -->
							<section class="my-3 text-center">

								<!-- Telegram -->
								<a class="btn btn-secondary  rounded-circle shadow m-1"
									style="background-color: #1AB7EA;"
									href="https://t.me/JalaTechnologies" role="button"><i
									class="bi bi-telegram"></i></a>

								<!-- WhatsApp -->
								<a class="btn btn-secondary rounded-circle shadow m-1"
									style="background-color: #25D366;"
									href="https://chat.whatsapp.com/HbvNO5rFiG3Fp3bEepBmVk"
									role="button"><i class="bi bi-whatsapp"></i></a>

								<!-- Linkedin -->
								<a class="btn btn-secondary rounded-circle shadow m-1"
									style="background-color: #0A66C2;"
									href="https://www.linkedin.com/company/jala-academy/about/"
									role="button"><i class="bi bi-linkedin"></i></a>

								<!-- Github -->
								<a class="btn btn-secondary rounded-circle shadow m-1"
									style="background-color: #333333;" href="#!" role="button"><i
									class="bi bi-github"></i></a>

								<!-- Facebook -->
								<a class="btn btn-secondary rounded-circle shadow m-1"
									style="background-color: #1877F2;"
									href="https://www.facebook.com/groups/417261270176416/"
									role="button"><i class="bi bi-facebook"></i></a>
							</section>
							<hr>

							<section>
								<div class="row mt-3">
									<!-- Grid column -->
									<div class="col-6  px-5 ">
										<!-- Content -->
										<a href="${pageContext.request.contextPath}/adminhome"><img
											src="JalaLogo.png" alt="logo" class="bi me-2" width="140"
											height="70"></img></a><br>

										<p>We are helping the Job seekers to find the best
											opportunities available across India in Top MNCs. Request you
											to join the below groups.</p>
										<p>5 Jobs every day, Interview tips, Technology updates.</p>
									</div>

									<!-- Grid column -->
									<div class="col-6 px-5 ">
										<!-- Links -->
										<h6 class="text-uppercase fw-bold my-3">Contact</h6>
										<p>
											<i class="bi bi-house-door-fill me-2"></i> 3rd Floor, Kaya
											Building, Besides SBI NRI Branch, KPHB Colony, Road. Number:
											1, Kukatpally, Hyderabad, Telangana -500072
										</p>
										<p>
											<i class="bi bi-envelope-fill me-2"></i> hr@jalaacademy.com
										</p>
										<p>
											<i class="bi bi-whatsapp me-2"></i> +91 970-490-7458
										</p>

									</div>
								</div>
							</section>
						</div>

						<!-- Copyright -->
						<div class="text-center text-white p-3 bg-dark bg-gradient">
							© 2022 Copyright : <a class="text-white"
								href="https://jalaacademy.com/"> JALA Academy Pvt. Ltd.</a> <i
								class="mx-3"> All Rights Reserved.</i>
						</div>
						<!-- Copyright -->
					</footer>
					<hr>
				</div>
			</div>
		</div>
	</div>
</body>
</html>