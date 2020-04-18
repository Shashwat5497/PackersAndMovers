<!DOCTYPE html>
<html lang="en">
<head>
<title>Pakers And Movers</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">Pakers And Movers</a></h1>
</div>
<!--close-Header-part--> 
<%
String email="";
try
{
    email=session.getAttribute("email").toString();
}
catch(Exception e)
{
    response.sendRedirect("login.jsp");
}

%>

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="logout.jsp"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span>  <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    <li class=""><a title="" href="login.jsp"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li class="active"><a href="index.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li> <a href="add_branch.jsp"><i class="icon icon-signal"></i> <span>Add Branch</span></a> </li>
<li> <a href="add_admin.jsp"><i class="icon icon-signal"></i> <span>Add Admin</span></a> </li>
    
    <li> <a href="add_employee.jsp"><i class="icon icon-inbox"></i> <span>Add Employee</span></a> </li>
    <li><a href="add_vehicle.jsp"><i class="icon icon-th"></i> <span>Add Vehicle</span></a></li>
     <li><a href="add_state.jsp"><i class="icon icon-th"></i> <span>Add State</span></a></li>
     <li><a href="add_city.jsp"><i class="icon icon-th"></i> <span>Add City</span></a></li>
       <li><a href="vehicle_assign.jsp"><i class="icon icon-th"></i> <span> Vehicle_Assign</span></a></li>
    <li><a href="report.jsp"><i class="icon icon-fullscreen"></i> <span>Reports</span></a></li>
    
    
    
  </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
      <ul class="quick-actions">
        <li class="bg_lb"> <a href="index.jsp"> <i class="icon-dashboard"></i>  My Dashboard </a> </li>
        <li class="bg_lg "> <a href="add_branch.jsp"> <i class="icon-signal"></i> Add Branch</a> </li>
        <li class="bg_ls"> <a href="add_admin.jsp"><i class="icon icon-signal"></i> <span>Add Admin</span></a> </li>

        <li class="bg_ly"> <a href="add_employee.jsp"> <i class="icon-user"></i> Add Employee </a> </li>
        <li class="bg_lo"> <a href="add_vehicle.jsp"> <i class="icon-truck"></i> Add Vehicle</a> </li>
         <li class="bg_ls"><a href="add_state.jsp"><i class="icon-globe"></i> <span>Add State</span></a></li>
          <li class="bg_lv"><a href="add_city.jsp"><i class="icon-road"></i> <span>Add City</span></a></li>
           <li class="bg_lr"><a href="vehicle_assign.jsp"><i class="icon-signin"></i> <span>Vehicle_Assign</span></a></li>
        <li class="bg_dy"> <a href="report.jsp"> <i class="icon-fullscreen"></i> Reports</a> </li>
        

      </ul>
    </div>
<!--End-Action boxes-->    

    
<!--end-Footer-part-->

<script src="js/excanvas.min.js"></script> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.flot.min.js"></script> 
<script src="js/jquery.flot.resize.min.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/fullcalendar.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.dashboard.js"></script> 
<script src="js/jquery.gritter.min.js"></script> 
<script src="js/matrix.interface.js"></script> 
<script src="js/matrix.chat.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.form_validation.js"></script> 
<script src="js/jquery.wizard.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.popover.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script> 

<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();            
          } 
          // else, send page to designated URL            
          else {  
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
</body>
</html>
