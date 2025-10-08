<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Availability.aspx.cs" Inherits="LoStylz_Salon.Availability" %>

        
<!DOCTYPE html>

  <link rel="icon" href="images/favicon/favicon.ico" type="image/x-icon"/>
  <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
         <link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-touch-icon.png"/>
<link rel="icon" type="image/png" sizes="32x32" href="images/favicon/favicon-32x32.png"/>
<link rel="icon" type="image/png" sizes="16x16" href="images/favicon/favicon-16x16.png"/>
<link rel="manifest" href="/site.webmanifest"/>
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5"/>

                  <%--Logo--%>

            <a href="#" class="logo">
                <img src="images/LogoLoStylz.png" alt="site logo" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
                  <h4 style="font-size: xx-large; font-weight: bold; font-style: italic; text-align: center;">Lo Stylz Hair Salon</h4>
<html lang="en" data-bs-theme="auto">
    <head>
<script src="../assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Omega Fullard, Web Designer">
    <meta name="generator" content="">
    <title>Stylist Availibility</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/checkout/">

    

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
 <link href="Styles/styles.css" rel="stylesheet" />
            <script src="Scripts/jquery-3.4.1.slim.min.js"></script>      
<script src="http://localhost:64954/Scripts/popper.min.js"></script>
<script src="http://localhost:64954/Scripts/bootstrap.min.js"></script>

         <link href="http://localhost:64954/css/bootstrap.min.css" rel="stylesheet" />
 <link href="http://localhost:64954/Content/DataTables/css/dataTables.jqueryui.min.css" rel="stylesheet" />
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #2e2e2e;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #f2c2f2;
        --bs-btn-hover-border-color: #E673FF;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #FF80AA;
        --bs-btn-active-border-color: #2e2e2e;
      }

      .bd-mode-toggle {
        z-index: 1500;
      }

      .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
      }
    </style>


    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
   
     <style>



/* For mobile phones: */
[class*="col-"] {
  width: 100%;
}

@media only screen and (min-width: 600px) {
  /* For tablets: */
  .col-s-1 {width: 8.33%;}
  .col-s-2 {width: 16.66%;}
  .col-s-3 {width: 25%;}
  .col-s-4 {width: 33.33%;}
  .col-s-5 {width: 41.66%;}
  .col-s-6 {width: 50%;}
  .col-s-7 {width: 58.33%;}
  .col-s-8 {width: 66.66%;}
  .col-s-9 {width: 75%;}
  .col-s-10 {width: 83.33%;}
  .col-s-11 {width: 91.66%;}
  .col-s-12 {width: 100%;}
}
@media only screen and (min-width: 768px) {
  /* For desktop: */
  .col-1 {width: 8.33%;}
  .col-2 {width: 16.66%;}
  .col-3 {width: 25%;}
  .col-4 {width: 33.33%;}
  .col-5 {width: 41.66%;}
  .col-6 {width: 50%;}
  .col-7 {width: 58.33%;}
  .col-8 {width: 66.66%;}
  .col-9 {width: 75%;}
  .col-10 {width: 83.33%;}
  .col-11 {width: 91.66%;}
  .col-12 {width: 100%;}
}
</style>
</head>

<body>
    <form runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
              
            </Scripts>
        </asp:ScriptManager>
                    <%--Site Scripts--%>
        <link href="Styles/styles.css" rel="stylesheet" />
            <script src="Scripts/jquery-3.4.1.slim.min.js"></script>      
<script src="http://localhost:64954/Scripts/popper.min.js"></script>
<script src="http://localhost:64954/Scripts/bootstrap.min.js"></script>

         <link href="http://localhost:64954/css/bootstrap.min.css" rel="stylesheet" />
 <link href="http://localhost:64954/Content/DataTables/css/dataTables.jqueryui.min.css" rel="stylesheet" />

 <link href="http://localhost:64954/css/font-awesome.css" rel="stylesheet" />
        
        	  <script>
    $(document).ready(function(){
    $('#pw').keypress(function(e){
      if(e.keyCode==13)
      $('#GoBtn').click();
    });
});
              </script>

               <!-- Main Nav -->

     <div class="topnav menu">
            <asp:Menu ID="NavigationMenu" runat="server" CssClass="topnav" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal" EnableScreenBoundaryDetection="true">
               <Items>
              
                    <asp:MenuItem NavigateUrl="Home.aspx" Text="Home" />
                    
                   
        
                   <asp:MenuItem Text="Lo Stylz">
                
               <asp:MenuItem Text="Contact Us" NavigateUrl="Contact.aspx"></asp:MenuItem>
               <asp:MenuItem Text="Availability" NavigateUrl="Availability.aspx"></asp:MenuItem>
               <asp:MenuItem Text= "Book Appt" NavigateUrl="BookAppt.aspx"></asp:MenuItem>
               <asp:MenuItem Text="Gallery" NavigateUrl="Gallery.aspx"></asp:MenuItem>
			 
             </asp:MenuItem>

           
            </Items>
            </asp:Menu>
</div>
    <h1>Stylist Availability</h1>
    
        <label for="stylist">Choose a Stylist:</label>
        <select id="stylist" name="stylist" required>
          <option value="stylist1">Lola James</option>
    <option value="stylist2">Bill Gully</option>
	<option value="stylist3">Nicole Rappenport</option>
    <option value="stylist4">Jessie Baker</option>
	<option value="stylist5">Lilith Carlton</option>
    <option value="stylist6">Kannady Linberg</option>
	<option value="stylist7">Skylar Olstein</option>
    <option value="stylist8">Pauline Nickerson</option>
            <!-- Add more stylists as needed -->
        </select>

        <label for="date">Choose a Date:</label>
        <input type="date" id="date" name="date" required>

        <label for="time">Choose a Time:</label>
       <input type="time" id="time" name="time" required>
            <!-- Time slots will be populated here -->
     
        <br />
                <label for="deposit">Deposit Amount:</label>
        <input type="number" id="deposit" name="deposit" value="40" readonly> <!-- Example deposit amount -->
        <br />
        <button type="button" onclick="window.location.href='BookAppt.aspx'">Book Appointment</button>
 

    <div id="confirmation" style="display:none;">
        <h2>Appointment Confirmed</h2>
        <p id="confirmationDetails"></p>
    </div>
        <div>
     <script src="https://js.stripe.com/v3/"></script>
    <script src="availability.js"></script>
       <hr />
            <footer>
                <p>&copy; <%: DateTime.Now.Year %> -Lo Stylz Hair Salon</p>
            </footer>
        </div>
    </form>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/Scripts/bootstrap.js") %>
    </asp:PlaceHolder>
  <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
         <script src="availability.js"></script>
      <script src="appointment.js"></script>
    <script src="checkout.js"></script>
</body>
</html>      
 
