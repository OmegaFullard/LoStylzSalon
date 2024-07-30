<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LoStylz_Salon._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <center><h4 class="card-title">Home Page</h4>
       <br />
                                    <asp:Image ID="salonstation" runat="server" ImageUrl="~/images/station.jpg"  BorderColor="lightpink" BorderStyle="Solid" BorderWidth="1px" Height="300px" style="margin-top: 5px" Width="300px" />
                                                     
                                     </center>  
                                <div aria-dropeffect="move" style="padding-left:10px; padding-right:10px; height:850px;overflow: auto; background:#e1f0e9"> 
                                                          
                                    
        <br />
        <br />
   
        <center><p><strong>Hello, and welcome to Lo Stylz Hair Salon. Be sure to book your appointment and check out our gallery of styles.</strong></p></center>
      
        
        <span class="k-button k-solid k-success" style="color: #ffffff; background-color: #E846CD ; border: medium solid #FF80AA ">Gallery</span>
        <br />
             <br />
        
                   <asp:Image ID="tools" runat="server" ImageUrl="~/images/tools2.jpg"  BorderColor="lightpink" BorderStyle="Solid" BorderWidth="1px" Height="250px" style="margin-top: 5px" Width="250px" />
             
                                    <br />
                     <asp:Image ID="hairstylist" runat="server" ImageUrl="~/images/stylist.jpg"  BorderColor="lightpink" BorderStyle="Solid" BorderWidth="1px" Height="250px" style="margin-top: 5px" Width="250px" />
               
  
             <br />
        <br />


        <span class="k-button k-solid k-success" style="color: #ffffff; background-color: #E846CD ; border: medium solid #FF80AA ">Social Media</span>
        <br />
        <p>Please be sure to follow us on Social Media!, links to social media websites</p>
        <span class="k-button k-solid k-success" style="color: #ffffff; background-color: #E846CD ; border: medium solid #FF80AA ">Reviews</span>
		
   <p>Leave us a review and let us how we are doing and how we can improve. </p>
</div>
    </main>

</asp:Content>
