<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Support.aspx.cs" Inherits="LoStylz_Salon.Support" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <h1>Royal City Help Desk</h1>
	
    
<div class="b-example-divider"></div>

<div class="container my-5">
  <div class="position-relative p-5 text-center text-muted bg-body border border-dashed rounded-5">
    <button type="button" class="position-absolute top-0 end-0 p-3 m-3 btn-close bg-secondary bg-opacity-10 rounded-pill" aria-label="Close"></button>
    <svg class="bi mt-5 mb-3" width="48" height="48"><use href="#check2-circle"/></svg>
  
    <p class="col-lg-6 mx-auto mb-4">
        <center><img src="images/support.png" alt="support logo" style="width:150px;height:150px; Border-Radius:25px;" /></center>
        <br />

    Offering 24/7 Support to our clients through our partner "Royal City Help Desk".
               <br />
               Please feel free to contact us for addtional infromation.
        <br />       
       
    </p>
    <p><button type="button" class="btn btn-primary px-5 mb-5" onclick="window.location.href='Contact.aspx'">Contact Us</button></p>
  </div>
</div>

    <br />

               <h2>Contact Support</h2>
      <br />
      <img src="images/RCLogo.png" alt="company logo" />
      <br />
 <address>
           <strong>Royal City Inc.</strong>
     <br />
            13 Majesty Way 
            Royal City, PA 19106
     <br />
            <abbr title="Phone">P:</abbr>
            1.800.222.2222
     <br />
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a>
     <br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
              
               <br />  
		
        
    <br />

<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>
