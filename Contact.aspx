<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="LoStylz_Salon.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <div aria-dropeffect="move" style="padding-left:10px; padding-right:10px; height:850px;overflow: auto; background:#e1f0e9"> 
    <main aria-labelledby="title">
        <h2 id="Lo Stylz Hair Salon"><%: Title %></h2>

    <h3>Mission:</h3>
        <p>
            "To empower individuals of all styles and backgrounds to embrace their unique confidence through expert hair artistry and a welcoming, inclusive environment."
        </p>

  <h3>Location:</h3>
        <p>Convenietly locaed in the heart of Royal City!</p>
        <address>
            Lo Stylz Hair Salon<br />
            6868 Cutz Way Royal City, FL 30039<br />
            <abbr title="Phone">Phone:</abbr>
            813.555.0100
        </address>
         <hr />
               <br />            
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d57193.09180205354!2d-80.15856521208183!3d26.37282350483545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88d91e8e657ad4b7%3A0xbb71680d67a486f!2sBoca%20West%20Country%20Club!5e0!3m2!1sen!2sus!4v1732289143189!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                <br />
        <br />    
        <a href="#" class="btn btn-primary">Directions</a>
           <br />
        <br />
        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
    </main>
      </div> 
</asp:Content>
