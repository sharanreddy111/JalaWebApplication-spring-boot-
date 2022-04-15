<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Update Details</title>
<script type="text/javascript">
	function load() {
		alert("Updated Successfully! Please Login again!!!");
	}
</script>
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

			<!-- Main Content Section -->
			<div class="col py-3">

				<!-- header -->

				<div class="row  sticky-top bg-light">
					<div class="col-9 py-3 px-5 ">
						<nav aria-label="breadcrumb d-inline">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a
									href="${pageContext.request.contextPath}/demojobseekershome">
										Home </a></li>

								<li class="breadcrumb-item active" aria-current="page">
									Profile</li>
							</ol>

						</nav>
					</div>
					<!-- COL 2 -->
					<div class="col py-3">
						<h3>
							<i class="bi bi-person-circle"></i> Profile
						</h3>
					</div>
				</div>
				<!-- </div> -->
				<hr>

				<div class="col mx-3 my-5">

					<div
						class="container shadow-lg p-5 bg-light border border-secondary">


						<form:form
							action="${pageContext.request.contextPath}/jobseekeredited"
							modelAttribute="studentbean" method="post">
							<!-- Getting values from the UserController and using forEach method in form tag to display already entered values for easy updation -->
							<c:forEach var="sb" items="${stbean}">

								<h2>Update Your Details</h2>
								<hr>
								<br>


								<!-- Row-1 -->
								<div class="row">
									<!-- First Name -->
									<div class="col-4 px-4">
										<b>First Name :</b>
										<hr>
										<form:input path="firstName" value="${sb.firstName}"
											class="form-control" />
										<form:errors path="firstName" cssClass="error" />
									</div>

									<!-- Last Name -->
									<div class="col-4 px-4">
										<b>Last Name :</b>
										<hr>
										<form:input path="lastName" value="${sb.lastName}"
											class="form-control" />
										<form:errors path="lastName" cssClass="error" />
									</div>

									<!-- E-mail -->
									<div class="col-4 px-4">
										<b>E-mail :</b>
										<hr>
										<form:input path="emailId" value="${sb.emailId}"
											class="form-control" />
										<form:errors path="emailId" cssClass="error" />
									</div>
								</div>
								<br>
								<br>
								<br>

								<!-- Row-2 -->
								<div class="row">

									<!-- Mobile Number -->
									<div class="col-4 px-4">
										<b>Mobile Number :</b>
										<hr>
										<form:input path="mobileNumber" value="${sb.mobileNumber}"
											class="form-control" />
										<form:errors path="mobileNumber" cssClass="error" />
									</div>

									<!-- DOB -->
									<div class="col-4 px-4">
										<b>Date Of Birth :</b>
										<hr>
										<form:input path="date" type="date" value="${sb.date}"
											class="form-control" max="<%= maxdate %>" />
										<form:errors path="date" cssClass="error" />
									</div>

									<!-- Gender -->
									<div class="col-4 px-4">
										<b>Gender :</b>
										<hr>
										<form:select path="gender" value="${sb.gender}"
											max="<%= maxdate %>" class="form-select">
											<!-- Male -->
											<form:option value="Male" label="Male"></form:option>
											<!-- Female -->
											<form:option value="Female" label="Female"></form:option>
										</form:select>
										<form:errors path="gender" cssClass="error"></form:errors>
									</div>
								</div>
								<br>
								<br>
								<br>

								<!-- Row-3 -->
								<div class="row">
									<!-- Qualification -->
									<div class="col-3 px-4">
										<b>Qualification :</b>
										<hr>
										<form:select path="qualification" class="form-select"
											value="${sb.qualification}">
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
										<form:input path="skills" value="${sb.skills}"
											class="form-control"></form:input>
										<form:errors path="skills" cssClass="error"></form:errors>

									</div>

									<!-- Description -->
									<div class="col-5 px-4">
										<b>Description :</b>
										<hr>
										<form:textarea path="description" class="form-control"
											maxlength="500" placeholder="${sb.description}"></form:textarea>
									</div>


									<div class="col px-4">
										<form:hidden path="activeTill" value="${sb.activeTill}"
											max="<%= avaldate %>" min="<%= today %>"></form:hidden>

										<form:hidden path="password" value="${sb.password}"></form:hidden>
									</div>
								</div>
								<br>
								<br>

								<!-- Save & Cancel Buttons -->
								<div class="mx-auto" style="width: 250px">

									<button type="button" class="btn btn-outline-success shadow"
										data-bs-toggle="modal" data-bs-target="#myModal">Save</button>
									<a href="#" class="btn btn-outline-danger shadow mx-2">Cancel</a>
								</div>

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
											<div class="modal-body">Are you sure you wish to Update
												Your Details ?</div>

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
							</c:forEach>
						</form:form>
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