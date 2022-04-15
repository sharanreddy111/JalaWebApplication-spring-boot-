<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<style>
body {
	background-image: url(bgGradient.png);
}

#sub-heading {
	color: #011b30;
	padding: 20px;
	font-family: 'trebuchet ms';
	font-style: italic;
	font-weight: bold;
	font-size: 13px;
	text-shadow: 0px 0px 3px #FFFFFF;
}
</style>

<title>Admin Login</title>
<!-- This is Admin Login, Where Admin enter username and password in respective columns and after submitting it will process in UserController -->
</head>
<body>

	<section>
		<div class="row">
			<div class="col-lg-5"></div>
			<div class="col-lg-5">
				<a href="https://jalaacademy.com/"> <img src="JalaLogo.png"
					alt="logo" width="180" height="90"></img>
				</a>

			</div>
			<div class="col-lg-2">
				<a type="button" href="${pageContext.request.contextPath}/login"
					class="btn btn-outline-dark my-4 mx-3">Job-Seeker Login</a>

			</div>
		</div>

		<div class="container px-2 py-1 text-center text-lg-start my-5">
			<div class="row ">
				<div class="col-lg-6">

					<hr>
					<h1 class="my-5 px-5 py-5 fw-bold shadow border"
						style="color: rgb(255, 255, 255);">
						Training without Trainers <br />
					</h1>
					<hr>
					<p id="sub-heading">JALA Academy offers Job Guaranteed Training
						Programs for Software Engineers. Anyone from Fresher to 12 years'
						experience is eligible. Qualification, Year of Passing, and
						experience do not really matter for those who want to become a
						software Engineer. JALA Academy also offers Income Earning
						opportunities for those who have backlogs, no qualification, and
						working in NON IT Jobs.</p>
				</div>
				<div class="col-lg-5 my-5 mx-4">
					<div class="card bg-light shadow">
						<div class="card-body px-4 py-5 px-md-5">
							<!-- form tag is used to get input and send value to respective bean class getters through modelAttribute -->
							<form action="${pageContext.request.contextPath}/homepage"
								modelAttribute="adminBean" method="post">
								<h4>Admin Login</h4>
								<hr>
								<!-- Email input -->
								<div class="form-floating mb-3 mt-3">

									<div class="form-floating mb-3 mt-3">
										<input type="text" class="form-control" id="username"
											placeholder="Enter UserName" name="username"> <label
											for="username">UserName</label>
									</div>
								</div>
								<!-- Password input -->
								<div class="form-floating mt-3 mb-3">
									<input type="password" class="form-control" id="pwd"
										placeholder="Enter password" name="password"> <label
										for="pwd">Password</label>
								</div>
								<!-- Submit button -->
								<input type="submit" class="btn btn-outline-primary px-4"
									value="Login">

							</form>
							<hr>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>