<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LoStylz_Salon._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:PlaceHolder runat="server">
      <%: Scripts.Render("~/bundles/modernizr") %>
  </asp:PlaceHolder>

  <webopt:bundlereference runat="server" path="~/Content/css" />
     <main>
     
                                <div aria-dropeffect="move" style="padding-left:10px; padding-right:10px; height:850px;overflow: auto; background:#e1f0e9"> 
                                                          
                                    
        <br />
        <br />
   
        <center><h2>Welcome to Lo Stylz Hair Salon</h2>
              <center>
                               <asp:Image ID="salonstation" runat="server" ImageUrl="~/images/station.jpg"  BorderColor="lightpink" BorderStyle="Solid" BorderWidth="1px" Height="300px" style="margin-top: 5px" Width="300px" />
                                                
                                </center>  

            <!-- Insert the section below inside your main container (e.g., after the hero/banner) -->
<section id="about-mission-stylists" class="py-5">
  <div class="container">
    <div class="row mb-4">
      <div class="col-12 text-center">
        <h4 class="display-6">About Lo Stylz</h4>
        <p class="lead mb-0">Lo Stylz Hair Salon delivers modern, personalized hair care in a friendly, professional environment. We focus on healthy hair, great service, and styles that fit your life.</p>
      </div>
    </div>

    <div class="row mb-5 align-items-center">
      <div class="col-md-6">
        <h3>Our Mission</h3>
        <p>To empower clients by creating beautiful, healthy hair through expert technique, quality products, and an exceptional customer experience. We believe in honest advice, continual education, and sustainable salon practices.</p>
      </div>
      <div class="col-md-6">
        <h3>What to Expect</h3>
        <p>Personalized consultations, attentive service, and modern techniques — from precision cuts to advanced color work. We prioritize safety, comfort, and results that exceed expectations.</p>
      </div>
    </div>

    <div class="row mb-3">
      <div class="col-12 text-center">
        <h3>Meet Our Stylists</h3>
        <p class="text-muted small">Experienced professionals ready to help you look and feel your best.</p>
      </div>
    </div>

    <div class="row g-4">
      <div class="col-md-4">
        <article class="card h-100" aria-labelledby="stylist-lola">
          <img src="images/lola.png" class="card-img-top" alt="Lola James">
          <div class="card-body">
            <h5 id="stylist-lola" class="card-title">Lola James</h5>
            <p class="card-text small">Senior stylist with 12 years of experience in precision cutting and balayage. Passionate about customized cuts that flatter each client's face shape.</p>
            <p class="mb-0"><strong>Specialties:</strong> Precision cuts, balayage, curly hair care</p>
          </div>
        </article>
      </div>

      <div class="col-md-4">
        <article class="card h-100" aria-labelledby="stylist-bill">
          <img src="images/bill.png" class="card-img-top" alt="Bill Gully">
          <div class="card-body">
            <h5 id="stylist-bill" class="card-title">Bill Gully</h5>
            <p class="card-text small">Color specialist and creative stylist known for natural-looking color and seamless blends. Strong focus on hair health and long-term results.</p>
            <p class="mb-0"><strong>Specialties:</strong> Color correction, lived-in color, glossing treatments</p>
          </div>
        </article>
      </div>

      <div class="col-md-4">
        <article class="card h-100" aria-labelledby="stylist-nicole">
          <img src="images/nicole.png" class="card-img-top" alt="Nicole Rappenport">
          <div class="card-body">
            <h5 id="stylist-nicole" class="card-title">Nicole Rappenport</h5>
            <p class="card-text small">Expert in styling and bridal hair with a warm, client-first approach. Enjoys creating looks for special occasions and everyday confidence.</p>
            <p class="mb-0"><strong>Specialties:</strong> Bridal styling, event updos, finishing & styling</p>
          </div>
        </article>
      </div>
    </div>

    <div class="row mt-4">
      <div class="col-12 text-center">
           <p>Be sure to book your appointment and check out our gallery of styles!</p>
          <br />
            <p><a class="btn btn-lg btn-primary" style="color: #ffffff; background-color: #E846CD ; border: medium solid #FF80AA" href="Gallery.aspx">Browse gallery</a></p>
      
        <p><a class="btn btn-lg btn-primary" style="color: #ffffff; background-color: #E846CD ; border: medium solid #FF80AA" href="BookAppt.aspx">Book an Appointment</a></p>
     <br />
      </div>
    </div>
  </div>
</section>
            <br />  
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
