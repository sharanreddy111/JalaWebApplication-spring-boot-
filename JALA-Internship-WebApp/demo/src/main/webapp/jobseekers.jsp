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
<title>Dashboard</title>
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
						href="${pageContext.request.contextPath}/adminhome"><img
						src="JalaLogo.png" alt="logo" class="bi me-2" width="140"
						height="70"></img></a><br>

					<ul
						class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start"
						id="menu">

						<!-- HOME  -->
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/demojobseekershome"
							class="nav-link align-middle px-0"> <i class="fs-4 bi-house"></i>
								<span class="ms-1 d-none d-sm-inline">Home</span>
						</a></li>

						<li><a href="#" class="nav-link px-0 align-middle"> <i
								class="fs-4 bi-speedometer2"></i> <span
								class="ms-1 d-none d-sm-inline">Dashboard</span></a></li>

						<li><a
							href="${pageContext.request.contextPath}/demoforjobseekers"
							class="nav-link px-0 align-middle"> <i
								class="bi bi-person-lines-fill"></i> <span
								class="ms-1 d-none d-sm-inline">CRUD Operations</span></a></li>

					</ul>
					<hr>
					<div class="dropup pb-5 mx-2">
						<button class="btn btn-lg btn-danger dropdown-toggle px-5"
							id="dropdownUser1" data-bs-toggle="dropdown"
							aria-expanded="false">
							<span class="bi bi-person-circle"></span>
						</button>
						<ul class="dropdown-menu dropdown-menu-dark text-small shadow">
							<li><a class="dropdown-item" href="#"><i
									class="bi bi-gear-fill m-1"></i> Settings</a></li>
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/updatefromjobseekers"><i
									class="bi bi-person-fill m-1"></i> Profile</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/login"><i
									class="bi bi-box-arrow-right m-1"></i> Log out </a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="col py-3">
				<hr>
				<div class="text-center text-success fs-2 fw-bold">${message}
				</div>

				<!-- Side Content -->
				<div class="col mx-3 my-5">

					<div
						class="container-fluid p-5 shadow-lg bg-light border border-secondary">


						<!-- Carosel -->
						<div class="container p-2 shadow-lg bg-light ">

							<div id="carouselExampleFade"
								class="carousel slide carousel-fade" data-bs-ride="carousel">
								<div class="carousel-inner">
									<div class="carousel-item active" data-bs-interval="3000">
										<img src="cover1.png" class="d-block w-100" alt="...">
									</div>
									<div class="carousel-item" data-bs-interval="3000">
										<img src="cover2.png" class="d-block w-100" alt="...">
									</div>
									<div class="carousel-item" data-bs-interval="3000">
										<img src="cover3.png" class="d-block w-100" alt="...">
									</div>
								</div>
								<button class="carousel-control-prev" type="button"
									data-bs-target="#carouselExampleFade" data-bs-slide="prev">
									<span class="carousel-control-prev-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Previous</span>
								</button>
								<button class="carousel-control-next" type="button"
									data-bs-target="#carouselExampleFade" data-bs-slide="next">
									<span class="carousel-control-next-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Next</span>
								</button>
							</div>

						</div>
						<br> <br> <br> <br>
						<!-- Carosel End -->



						<hr>
						<h2 class="text-success mx-auto" style="width: 250px">
							<b> LEARN TO EARN</b>
						</h2>
						<h6 class="text-secondary mx-auto" style="width: 520px">Become
							a computer programmer and secure a JOB in MNC in 60 Days</h6>
						<hr>
						<br> <br>

						<div class="row">
							<div class="col-sm-4">
								<div class="card" style="width: 18rem;">
									<img src="cardJava.png" class="card-img-top" alt="...">
									<div class="card-body py-4">
										<h5 class="card-title">Full Stack Developer</h5>
										<p class="card-text">Become a Full Stack JAVA Developer
											within 60 days by doing the real-world project.</p>
										<a href="https://java.jalaacademy.com/index.html"
											class="btn btn-outline-dark">Learn More</a>
									</div>
								</div>
							</div>

							<div class="col-sm-4">
								<div class="card" style="width: 18rem;">
									<img src="cardDotnet.png" class="card-img-top" alt="...">
									<div class="card-body py-4">
										<h5 class="card-title">Full Stack Developer</h5>
										<p class="card-text">Become a Full Stack .Net Developer
											within 60 days by doing the real-world project.</p>
										<a href="https://dotnet.jalaacademy.com/index.html"
											class="btn btn-outline-dark">Learn More</a>
									</div>
								</div>
							</div>

							<div class="col-sm-4">
								<div class="card" style="width: 18rem;">
									<img src="cardPython.png" class="card-img-top" alt="...">
									<div class="card-body py-4">
										<h5 class="card-title">Full Stack Developer</h5>
										<p class="card-text">Become a Full Stack python Developer
											within 60 days by doing the real-world project.</p>
										<a href="#" class="btn btn-outline-dark">Learn More</a>
									</div>
								</div>
							</div>

						</div>

						<br> <br>
						<div class="row">
							<div class="col-sm-6">
								<div class="card" style="width: 28rem;">
									<img src="cardQA.png" class="card-img-top" alt="...">
									<div class="card-body py-4">
										<h5 class="card-title">QA / SDET / Automation</h5>
										<p class="card-text">Learn Automation and Quality
											Assurance as a software engineer to get a high-paying job in
											MNC and product-based companies within 60 days.</p>
										<a href="https://dotnet.jalaacademy.com/index.html"
											class="btn btn-outline-dark">Learn More</a>
									</div>
								</div>
							</div>

							<div class="col-sm-6">
								<div class="card" style="width: 28rem;">
									<img src="cardDevops.png" class="card-img-top" alt="...">
									<div class="card-body py-4">
										<h5 class="card-title">DevOps and Cloud Technologies</h5>
										<p class="card-text">Learn the latest cloud technologies
											such as AWS, Azure, and how to by deploying real-world
											projects within 60 days.</p>
										<a href="#" class="btn btn-outline-dark">Learn More</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br> <br><br><br><br>
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