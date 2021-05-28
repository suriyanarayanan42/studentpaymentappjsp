<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/css/style.css">
<%
String loggedInStudent=(String)session.getAttribute("LOGGED_IN_STUDENT");
String tempLoginStudent=(String)session.getAttribute("TEMP_LOGIN_STUDENT");

%>

<header>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp">Home</a>
  <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
      aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
    <div class="collapse navbar-collapse" id="collapsibleNavId">
     <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
       <!-- <li class="nav-item active">
        <a class="nav-link" href="stafflogin.jsp?role=Staff"><span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="studentlogin.jsp?role=student"></a>
      </li>
      -->
      
      <%if(tempLoginStudent!=null){ %>
       <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Features</a>
        <div class="dropdown-menu" aria-labelledby="dropdownId">
          <a class="dropdown-item" href="#">PayFees</a>
          <a class="dropdown-item" href="#">Personal Details</a>
        </div>
      </li> 
        <%} %>
    </ul>
    
    
    <ul class="navbar-nav ml-auto mt-2 mt-lg-0"> 
  	    <% if(tempLoginStudent!= null){  %>
  	           <li class="nav-item active">
                 <a class="nav-link">Welcome<%=loggedInStudent %></a>
               </li>
              <li class="nav-item active">
                 <a class="nav-link" href="StudentLogoutServlet">Logout</a>
               </li>
          <% } else { %>
               <li class="nav-item active">
                 <a class="nav-link" href="studentlogin.jsp?">Login</a>
               </li>
         <% } %>
      
      </ul>
       
      
       
   
  </div>
</nav>
</header>