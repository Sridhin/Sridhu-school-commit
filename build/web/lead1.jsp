<%@page import="java.sql.*"%>


<html lang="en">
  <head>
    <title>School Management</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
      crossorigin="anonymous"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
      rel="stylesheet"
    />

    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link rel="stylesheet" href="css/bootstrap/styleLeadEnquiry.css" />
  </head>



<body > 
      
    
    <div class="wrapper d-flex align-items-stretch">
      <nav id="sidebar">
        <div class="custom-menu">
          <button type="button" id="sidebarCollapse" class="btn btn-primary">
            <i class="fa fa-bars"></i>
            <span class="sr-only">Toggle Menu</span>
          </button>
        </div>
        <div class="p-4">
          <h1>
            <a href="index.html" class="logo"
              >School Management<span>Administration</span></a
            >
          </h1>
          <ul class="list-unstyled components mb-5">
            <li>
              <a href="#"><span class="fa fa-home mr-3"></span> Home</a>
            </li>
            <li class="active">
              <a href="http://127.0.0.1:5500/leadenquiry.html#"
                ><span class="fa fa-user mr-3"></span> About</a
              >
            </li>
            <li>
              <a href="http://127.0.0.1:5500/admissionModule.html"
                ><span class="fa fa-briefcase mr-3"></span> Works</a
              >
            </li>
            <li>
              <a href="#"><span class="fa fa-sticky-note mr-3"></span> Blog</a>
            </li>
            <li>
              <a href="#"><span class="fa fa-suitcase mr-3"></span> Gallery</a>
            </li>
            <li>
              <a href="#"><span class="fa fa-cogs mr-3"></span> Services</a>
            </li>
            <li>
              <a href="#"
                ><span class="fa fa-paper-plane mr-3"></span> Contacts</a
              >
            </li>
          </ul>

          <div class="mb-5">
            <h3 class="h6 mb-3">Subscribe for newsletter</h3>
            <form action="#" class="subscribe-form">
              <div class="form-group d-flex">
                <div class="icon"><span class="icon-paper-plane"></span></div>
                <input
                  type="text"
                  class="form-control"
                  placeholder="Enter Email Address"
                />
              </div>
            </form>
          </div>

          <div class="footer">
            <p>
              Copyright &copy;
              <script>
                document.write(new Date().getFullYear());
              </script>
              All rights reserved
            </p>
          </div>
        </div>
      </nav>

      <!-- Page Content  -->

      <div id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">Lead Enquiry Management</h2>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Library</a></li>
            <li class="breadcrumb-item active" aria-current="page">Data</li>
          </ol>
        </nav>
        <!--Bootstrap Form starts-->

        <!--studentsname and gender starts-->
        <form action="val.jsp" method="post">
          <div class="form-group mb-3">
            <label for="studentsname" class="form-label">Student's Name</label>
            <input
              type="text"
              class="form-control"
              id="studentsname"
              aria-describedby="studentsname"
              name="name"
            />

            <div class="form-check">
              <input
                class="form-check-input"
                type="radio"
                name="gender"
                id="male"
                value="male"
                checked
              />
              <label class="form-check-label" for="male"> Male </label>
            </div>
            <div class="form-check">
              <input
                class="form-check-input"
                type="radio"
                name="gender"
                id="female"
                value="female"
              />
              <label class="form-check-label" for="female"> Female </label>
            </div>
          </div>
          <!--studentsname and gender ends-->

          <!--Standard for starts-->
          <label for="form-select-standard">Standard Enquired</label>

          <select
            class="form-select"
            id="form-select-standard"
            name="leadSelect"
            aria-label="Default select example"
          >
            <option selected>Select Standard</option>
            <option value="Pre-KG">Pre-KG</option>
            <option value="LKG">LKG</option>
            <option value="UKG">UKG</option>
            <option value="1st">1st</option>
            <option value="2nd">2nd</option>
            <option value="3rd">3rd</option>
            <option value="4th">4th</option>
            <option value="5th">5th</option>
            <option value="6th">6th</option>
            <option value="7th">7th</option>
            <option value="8th">8th</option>
            <option value="9th">9th</option>
            <option value="10th">10th</option>
            <option value="11th">11th</option>
            <option value="12th">12th</option>
          </select>

          <!--Standard for ends-->

          <div class="mb-3">
            <label for="parentsname" class="form-label">Parents Name</label>
            <input
              type="text"
              class="form-control"
              id="parentsname"
              name="leadParentsname"
              aria-describedby="parentsname"
            />
          </div>

          <div class="mb-3">
            <label for="parentsname" class="form-label">Contact Number</label>
            <input
              type="text"
              class="form-control"
              name="leadContact"
              id="contactnumber"
              aria-describedby="contactnumber"
            />
          </div>

          <!--Periodic status update-->
          <label for="form-select-statusupdate">Status & Reference</label>
          <select
            class="form-select"
            id="form-select-statusupdate"
            name="leadStatusAndReference"
            aria-label="Default select example"
          >
            <option selected value="Not Interested">Not Interested</option>
            <option value="Interested">Interested</option>
            <option value="RNR">RNR</option>
            <option value="Callback Requested">Callback Requested</option>
          </select>
          <!--Periodic status update-->

          <!--Reference-->
          <select class="form-select form-select-sm" name="leadSelectReference" aria-label="Reference">
            <option selected>Select Reference</option>
            <option value="Existing Parents">Existing Parents</option>
            <option value="TV advertisement">TV advertisement</option>
            <option value="Justdial">Justdial</option>
            <option value="Direct Visit">Direct Visit</option>
            <option value="Paper Advertisement">Paper Advertisement</option>
            <option value="Others">Others</option>
          </select>
          <!--Reference ends-->
          <!--Comments start-->
          <div class="form-group">
            <label for="exampleFormControlTextarea1">Comments</label>
            <textarea
              class="form-control"
              id="exampleFormControlTextarea1"
              name="leadComments"
              placeholder="Remarks if any"
              rows="3"
            ></textarea>
          </div>
          <!--Comments ends-->
          <div mb-3>
            <button type="submit" class="btn btn-primary">Submit</button>
          </div>
        </form>
      </div>
    </div>
    <script
      src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
      integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
      integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
      crossorigin="anonymous"
    ></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>

