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

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
    </main>
      </div> 
</asp:Content>
