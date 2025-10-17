<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LoStylz_Salon._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:PlaceHolder runat="server">
      <%: Scripts.Render("~/bundles/modernizr") %>
  </asp:PlaceHolder>

  <webopt:bundlereference runat="server" path="~/Content/css" />
     <main>
        <center><h4 class="card-title">Home Page</h4>
       <br />
                                    <asp:Image ID="salonstation" runat="server" ImageUrl="~/images/station.jpg"  BorderColor="lightpink" BorderStyle="Solid" BorderWidth="1px" Height="300px" style="margin-top: 5px" Width="300px" />
                                                     
                                     </center>  
                                <div aria-dropeffect="move" style="padding-left:10px; padding-right:10px; height:850px;overflow: auto; background:#e1f0e9"> 
                                                          
                                    
        <br />
        <br />
   
        <center><h4>Welcome to Lo Stylz Hair Salon</h4>
            <p>Be sure to book your appointment and check out our gallery of styles!</p></center>
      
        
        <p><a class="btn btn-lg btn-primary" style="color: #ffffff; background-color: #E846CD ; border: medium solid #FF80AA" href="Gallery.aspx">Browse gallery</a></p><br />
             <br />
 
        <br />


        <div class="card-group">
  <div class="card">
    <img class="card-img-top" src="images/tools2.jpg" alt="stylist tools assorted" style="width:100px;height:100px; Border-Radius:25px;"/>
    <div class="card-body">
      <h5 class="card-title">Products and Services</h5>
      <p class="card-text">Set your appointment for a variety of services at <strong>"Lo Stylz Salon"</strong> with our experienced staff today.</p>
		<p><a href="BookAppt.aspx">Booking and Payment Options</a></p>
              
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="images/stylist.jpg" alt="hair stylist" style="width:100px;height:100px; Border-Radius:25px;"/ >
    <div class="card-body">
      <h5 class="card-title">Hair Stylist</h5>
      <p class="card-text">Check availibility of any of our many staff to complete any cut, style, and color of choice</p> 
	  <p><a href="Availability.aspx">Search Staff Availability</a></p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
			</div>
             <br />
        <br />


        <p><a class="btn btn-lg btn-primary" style="color: #ffffff; background-color: #E846CD ; border: medium solid #FF80AA" href="Social.aspx">Social Media</a></p>
        <br />
        <p>Please be sure to follow us on Social Media!, links to social media websites</p>
        <p><a class="btn btn-lg btn-primary" style="color: #ffffff; background-color: #E846CD ; border: medium solid #FF80AA" href="Reviews.aspx">Reviews</a></p>
		
   <p>Leave us a review and let us how we are doing and how we can improve. </p>
</div>
    </main>
      
       
</asp:Content>
