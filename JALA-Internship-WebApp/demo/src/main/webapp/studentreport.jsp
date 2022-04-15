<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<title>Job-Seekers Details</title>
<!-- In this file, we are displaying the records in database using data we got from UserController Class and adding user preference of update and delete record. 
 Here pop up is displayed if we want to update the data like ok or cancel, According to the user choice it will redirect to respective page and it is done 
 by using javascript. -->
<script>
var url = "http://localhost:8080/studentdetails0";
function remove(id){
	var s = confirm("Confirm Before Deleting Details");
	if(s==true){
		window.location="http://localhost:8080/deletestudent"+id;
	}
	else{
		window.location=url;
	}
}
function update(id){
	var s = confirm("Confirm Before Editing Details");
	if(s==true){
		window.location="http://localhost:8080/editstudent"+id;
	}
	else{
		window.location=url;
	}
}
function search(){
	var s = document.getElementById("searchstudent").value;
	window.location="http://localhost:8080/search"+s;
}

function page(){
	window.location="http://localhost:8080/studentdetail"+0;
}

function run(p){
var url ="http://localhost:8080/studentdetails";
window.location="http://localhost:8080/studentdetails"+p;
}

</script>
</head>
<body>

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
								class="ms-1 d-none d-sm-inline"> Job-Seekers <i
									class="bi bi-caret-down-fill"></i></span></a>
							<ul class="collapse show nav flex-column ms-1" id="submenu2"
								data-bs-parent="#menu">
								<li class="w-100"><a
									href="${pageContext.request.contextPath}/createstudent"
									class="nav-link px-0"><span class="d-none d-sm-inline">
											<i class="bi bi-caret-right-fill"></i> Create
									</span> <i class="bi bi-person-plus-fill"></i> </a></li>
								<li><a
									href="${pageContext.request.contextPath}/studentdetails0"
									class="nav-link active p-2"> <span class="d-none d-sm-inline">
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
									href="${pageContext.request.contextPath}/adminhome"> Home </a></li>

								<li class="breadcrumb-item active" aria-current="page">
									Job-Seekers</li>
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

				<hr>



				<div class="col mx-3 my-5">

					<!-- container  -->
					<div
						class="container-fluid shadow-lg p-5 bg-light border border-secondary">

						<div class="row">
							<div class="col-9">
								<h2>Enrolled Job-Seeker Details</h2>
							</div>
							<div class="col">
								<a href="${pageContext.request.contextPath}/createstudent"
									class="btn btn-outline-dark shadow" type="button"><i
									class="bi bi-person-plus-fill"></i> Add New Job-Seeker </a>
							</div>
						</div>
						<hr>
						<br> <br> <br>

						<!-- Search Box -->
						<div class="row ">

							<div class="col-3"></div>
							<div class="col-5">
								<form class="d-flex">
									<input class="form-control " type="text"
										placeholder="Enter Name or PhoneNumber" id="searchstudent">
									<button onclick="search()" class="btn btn-primary shadow mx-1"
										type="button">Search</button>
								</form>
							</div>
							<div class="col-2">
								<a href="${pageContext.request.contextPath}/studentdetails0"
									class="btn btn-outline-secondary shadow " type="button"><i
									class="bi bi-list-ul"></i> View All </a>
							</div>
						</div>
						<br> <br>


						<!-- Job-Seekers Table -->
						<div class="container">
							<div class="table-responsive">

								<table class="table table-striped table-bordered table-hover">
									<thead class="table-dark">
										<tr>
											<th>Id</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Skills</th>
											<th>Mobile</th>
											<th>Actions</th>
										</tr>
									</thead>


									<tbody>
										<c:forEach var="sb" items="${stubean}">
											<tr>
												<td>${sb.studentId}</td>
												<td>${sb.firstName}</td>
												<td>${sb.lastName}</td>
												<td>${sb.skills}</td>
												<td>${sb.mobileNumber}</td>
												<td><button onclick="update(${sb.studentId})"
														type="button" class="btn btn-outline-success shadow">
														<i class="bi bi-pencil-square"></i>
													</button>
													<button onclick="remove(${sb.studentId})" type="button"
														class="btn btn-outline-danger shadow">
														<i class="bi bi-trash-fill"></i>
													</button></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>

						<br>

						<!-- Records per page -->
						<!-- <div class="row "> -->
						<div class=" justify-content-center">

							<form:form
								action="${pageContext.request.contextPath}/studentdetail"
								modelAttribute="pcb" method="POST">
								<label><i>Records per page</i></label>
								<form:select path="count" value="">
									<form:option value="5" label="5"></form:option>
									<form:option value="10" label="10"></form:option>
									<form:option value="25" label="25"></form:option>
									<form:option value="50" label="50"></form:option>
									<form:option value="100" label="100"></form:option>
								</form:select>
								<input type="submit" class="btn btn-sm btn-outline-dark shadow"
									value="View">
							</form:form>
						</div>
						<!-- </div> -->
						<br>

						<!-- Pagination -->
						<ul class="pagination justify-content-center">
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									<span class="sr-only"></span>
							</a></li>

							<c:forEach var="i" begin="0" end="${total}">

								<li class="page-item" id="pageNo" onclick="run(${i})"><a
									class="page-link">${i+1}</a></li>

							</c:forEach>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
									class="sr-only"></span></a></li>
						</ul>

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