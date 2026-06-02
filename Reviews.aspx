<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Reviews.aspx.cs" Inherits="LoStylz_Salon.Reviews" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <div aria-dropeffect="move" style="padding-left:10px; padding-right:10px; height:850px;overflow: auto; background:#e1f0e9"> 
    <main aria-labelledby="title">
        <h2 id="Lo Stylz Hair Salon"><%: Title %></h2>


        
                <h2>Customer Reviews</h2>

                <asp:Label runat="server" ID="lblMessage" CssClass="text-success" />
                <asp:Label runat="server" ID="lblError" CssClass="text-danger" />

                   <asp:ValidationSummary ID="vsContact" runat="server" ForeColor="Red" HeaderText="Please correct the following:" />
  <table style="max-width:700px; width:100%;">
      <tr>
          <td style="width:160px;"><strong>Name:</strong></td>
          <td>
              <asp:TextBox ID="txtName" runat="server" Width="100%"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." ForeColor="Red" Display="Dynamic" />
          </td>
      </tr>
      <tr>
          <td><strong>Email:</strong></td>
          <td>
              <asp:TextBox ID="txtEmail" runat="server" Width="100%"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." ForeColor="Red" Display="Dynamic" />
              <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ErrorMessage="Enter a valid email address." ForeColor="Red" Display="Dynamic" />
          </td>
      </tr>
      <tr>
          <td><strong>Comment:</strong></td>
          <td>
              <asp:TextBox ID="txtComment" runat="server" Width="100%"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ControlToValidate="txtComment" ErrorMessage="Comment is required." ForeColor="Red" Display="Dynamic" />
          </td>
      </tr>
      <tr>
          <td style="vertical-align:top;"><strong>Message:</strong></td>
          <td>
              <select class="form-select" aria-label="Rating">
  <option selected>Select Rating</option>
  <option value="5">Excellent</option>
  <option value="4">Very Good</option>
  <option value="3">Good</option>
    <option value="2">Fair</option>
  <option value="1">Poor</option>
</select>
      </tr>
      <tr>
          <td></td>
          <td>
              <asp:Button ID="btnSubmit" runat="server" Text="Send Review" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
          </td>
      </tr>
  </table>
  <br />
  <asp:Label ID="lblContactStatus" runat="server" ForeColor="Green"></asp:Label>
              
            <hr />

            <h2>Recent Reviews</h2>
            <asp:Repeater runat="server" ID="reviewsRepeater">
                <HeaderTemplate>
                    <div class="reviews-list">
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="review-item" style="border-bottom:1px solid #ddd; padding:10px 0;">
                        <strong><%# Eval("Name") %></strong>
                        &nbsp; <span class="text-muted">(<%# Eval("Rating") %> / 5)</span>
                        <div class="text-muted small"><%# Eval("Date", "{0:yyyy-MM-dd HH:mm}") %></div>
                        <p><%# Eval("Comment") %></p>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                    </div>
                </FooterTemplate>
            </asp:Repeater>

            <br />
            <a href="Home.aspx">&lt;&lt; Back to Home</a>
            </main>
      </div> 
</asp:Content>
       
