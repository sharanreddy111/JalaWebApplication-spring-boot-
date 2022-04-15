<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.time.LocalDate,java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
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
<title>Student Creation</title>
<style type="text/css">
.error {
	color: red;
	font-style: italic;
}
</style>
</head>
<body>
	<!-- Using LocalDate library to restrict the dates and timespan for our needs. Its has many inbuilt methods to perform desired actions. 
 minusDays method -> Only above 18 years student only can apply 
 plusDays method-> THe student/jobseekers are able to access the portal for max of 90 days from today/applying date -->
	<%
	LocalDate today = LocalDate.now();
	LocalDate maxdate = today.minusDays(6570);
	LocalDate avaldate = today.plusDays(90);
	%>



	<div class="container-fluid">

		<div class="row flex-nowrap ">

			<!-- Menu Col -->
			<div class="col col-md-3 col-xl-2 px-sm-2 px-0 bg-dark">

				<div
					class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100"
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
							href="${pageContext.request.contextPath}/adminhome"
							class="nav-link align-middle px-0"> <i class="fs-4 bi-house"></i>
								<span class="ms-1 d-none d-sm-inline">Home</span>
						</a></li>

						<li><a href="#" class="nav-link px-0 align-middle"> <i
								class="fs-4 bi-speedometer2"></i> <span
								class="ms-1 d-none d-sm-inline">Dashboard</span></a></li>

						<li><a href="#submenu2" data-bs-toggle="collapse"
							class="nav-link px-0 align-middle "> <i
								class="fs-4 bi-people"></i> <span
								class="ms-1 d-none d-sm-inline">Job-Seekers <i
									class="bi bi-caret-down-fill"></i></span></a>
							<ul class="collapse show nav flex-column ms-1" id="submenu2"
								data-bs-parent="#menu">
								<li class="w-100"><a
									href="${pageContext.request.contextPath}/createstudent"
									class="nav-link active p-2"><span class="d-none d-sm-inline">
											<i class="bi bi-caret-right-fill"></i> Create
									</span> <i class="bi bi-person-plus-fill"></i> </a></li>
								<li><a
									href="${pageContext.request.contextPath}/studentdetails0"
									class="nav-link px-0"> <span class="d-none d-sm-inline">
											<i class="bi bi-caret-right-fill"></i> Search
									</span> <i class="bi bi-search"></i>
								</a></li>
							</ul></li>

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
							<li><a class="dropdown-item" href="#"><i
									class="bi bi-person-fill m-1"></i> Profile</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/logout"><i
									class="bi bi-box-arrow-right m-1"></i> Log out </a></li>
						</ul>
					</div>
				</div>
			</div>

			<!-- Main Content Section -->
			<div class="col py-3">

				<!-- header -->
				<!-- <div class="row mx-5 py-5"> -->

				<div class="row  sticky-top bg-light">
					<div class="col-9 pt-4 px-5 ">
						<nav aria-label="breadcrumb d-inline">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a
									href="${pageContext.request.contextPath}/adminhome">Home</a></li>
								<li class="breadcrumb-item"><a
									href="${pageContext.request.contextPath}/studentdetails0">Job-Seekers</a></li>
								<li class="breadcrumb-item active" aria-current="page">Create
									Job-Seeker</li>
							</ol>

						</nav>
					</div>
					<!-- COL 2 -->
					<div class="col pt-3">
						<h4 class="text-secondary">
							<i class="bi bi-gear-fill m-1"></i> ADMIN PANEL
						</h4>
					</div>
				</div>
				<!-- </div> -->
				<hr>



				<div class="col mx-3 my-5">


					<div
						class="container-fluid p-5 shadow-lg bg-light border border-secondary">

						<h2>Create New Job-Seeker</h2>
						<hr>
						<br> <br>
						<!-- Form tag is used to store the values in StudentBean by sending the bean "studentbean" to UserController through modelAttribute method and 
	storing the values is done by using path method inside form tag-->
						<form:form action="${pageContext.request.contextPath}/success"
							modelAttribute="studentbean" method="post">

							<div class="row">

								<!-- First Name -->
								<div class="col-4 px-4">
									<b>First Name :</b>
									<hr>
									<form:input path="firstName" type="text" class="form-control"
										placeholder="Enter First Name" />
									<form:errors path="firstName" cssClass="error" />
								</div>

								<!-- Last Name -->
								<div class="col-4 px-4">
									<b>Last Name :</b>
									<hr>
									<form:input path="lastName" type="text" class="form-control"
										placeholder="Enter Last Name" />
									<form:errors path="lastName" cssClass="error" />
								</div>

								<!-- E-mail -->
								<div class="col-4 px-4">
									<b>E-mail :</b>
									<hr>
									<form:input path="emailId" type="email" class="form-control"
										placeholder="@example.com" />
									<form:errors path="emailId" cssClass="error" />
								</div>


							</div>
							<br>
							<br>
							<br>


							<div class="row">

								<!-- Mobile Number -->
								<div class="col-4 px-4">
									<b>Mobile Number :</b>
									<hr>
									<form:input path="mobileNumber" type="text"
										class="form-control" placeholder="Enter Mobile" />
									<form:errors path="mobileNumber" cssClass="error" />
								</div>

								<!-- DOB -->
								<div class="col-4 px-4">
									<b>Date Of Birth :</b>
									<hr>
									<form:input path="date" type="date" max="<%=maxdate%>"
										class="form-control" />
									<form:errors path="date" cssClass="error" />
								</div>


								<!-- Gender -->
								<div class="col-4 px-4">
									<b>Gender :</b>
									<hr>
									<!-- Male -->
									<form:radiobutton path="gender" value="Male" label="Male"
										class="form-check-input mx-1" />
									<i class="mx-2"> or </i>
									<!-- Female -->
									<form:radiobutton path="gender" value="Female" label="Female"
										class="form-check-input mx-1" />
									<form:errors path="gender" cssClass="error" />
								</div>


							</div>
							<br>
							<br>
							<br>

							<div class="row">

								<!-- Qualification -->
								<div class="col-4 px-4">
									<b>Qualification :</b>
									<hr>
									<form:select path="qualification" class="form-select"
										value="---">
										<form:option value="----" label="----"></form:option>
										<form:option value="B.Tech" label="B.Tech"></form:option>
										<form:option value="MCA" label="MCA"></form:option>
										<form:option value="Graduation" label="Graduation"></form:option>
										<form:option value="Post-Graduation" label="Post-Graduation"></form:option>
										<form:option value="MBA" label="MBA"></form:option>
										<form:option value="Others" label="Others"></form:option>
									</form:select>
									<form:errors path="qualification" cssClass="error"></form:errors>
								</div>

								<!-- Skills -->
								<div class="col-4 px-4">
									<b>Skills :</b>
									<hr>

									<form:checkbox class="form-check-input mx-1" path="skills"
										value="Java" label="Java"></form:checkbox>

									<form:checkbox class="form-check-input mx-1" path="skills"
										value=".Net" label=".Net"></form:checkbox>

									<form:checkbox class="form-check-input mx-1" path="skills"
										value="Python" label="Python"></form:checkbox>
									<br>

									<form:checkbox class="form-check-input mx-1" path="skills"
										value="Database" label="Database" />

									<form:checkbox class="form-check-input mx-1" path="skills"
										value="cloud" label="Cloud"></form:checkbox>
									<br>

									<form:checkbox class="form-check-input mx-1" path="skills"
										value="Web-Development" label="Web-Development"></form:checkbox>


									<form:errors path="skills" cssClass="error"></form:errors>

								</div>
								<!-- Picture -->
								<div class="col-4 px-4">
									<b>Upload Picture :</b>
									<hr>
									<form:input path="image" type="file"></form:input>
									<form:errors path="image" cssClass="error"></form:errors>
								</div>


							</div>
							<br>
							<br>
							<br>

							<div class="row">

								<!-- Set Password -->
								<div class="col-4 px-4">
									<b>Set Password :</b>
									<hr>
									<form:input path="password" class="form-control"
										placeholder="Create Password"></form:input>
									<form:errors path="password" cssClass="error"></form:errors>
								</div>

								<div class="col-4 px-4">
									<b>Active till Date :</b>
									<hr>
									<form:input path="activeTill" type="date" class="form-control"
										max="<%=avaldate%>" min="<%=today%>"></form:input>
									<form:errors path="activeTill" cssClass="error"></form:errors>
								</div>
							</div>
							<br>
							<br>
							<br>

							<div class="row">
								<!-- Description -->
								<div class="col px-4">
									<b>Description :</b>
									<hr>
									<form:textarea path="description" class="form-control"
										maxlength="500" placeholder="Enter Description"></form:textarea>
								</div>
							</div>
							<br>
							<br>

							<!-- Save & Cancel buttons  -->
							<div class="mx-auto" style="width: 250px">

								<button type="button" class="btn btn-outline-success shadow"
									data-bs-toggle="modal" data-bs-target="#myModal">Save</button>

								<a href="${pageContext.request.contextPath}/studentdetails0"
									class="btn btn-outline-danger shadow mx-2">Cancel</a>

							</div>
							<br>
							<br>

							<!-- The Modal for Confirming before save -->
							<div class="modal fade" id="myModal">
								<div class="modal-dialog">
									<div class="modal-content">

										<!-- Modal Header -->
										<div class="modal-header">
											<h4 class="modal-title">Confirmation</h4>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal"></button>
										</div>

										<!-- Modal body -->
										<div class="modal-body">Are you sure you wish to create
											a New Job-Seeker ?</div>

										<!-- Modal footer -->
										<div class="modal-footer">
											<input type="submit"
												class="btn btn-outline-success shadow mx-2" value="Confirm"></input>
											<button type="button" class="btn btn-outline-danger shadow"
												data-bs-dismiss="modal">Cancel</button>
										</div>
									</div>
								</div>
							</div>
						</form:form>
					</div>
					<br> <br> <br> <br><br>
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
	<!-- </div> -->
</body>
</html>