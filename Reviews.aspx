<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="LoStylz_Salon.Reviews" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Customer Reviews - Lo Stylz Hair Salon</title>
    <link href="Styles/styles.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">

            <h1>Customer Reviews</h1>

            <asp:Panel runat="server" ID="panelForm">
                <h2>Leave a Review</h2>

                <asp:Label runat="server" ID="lblMessage" CssClass="text-success" />
                <asp:Label runat="server" ID="lblError" CssClass="text-danger" />

                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtName" Text="Name" />
                    <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="valName" ControlToValidate="txtName"
                        ErrorMessage="Name is required." Display="Dynamic" CssClass="text-danger" />
                </div>
                <br />

                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtEmail" Text="Email (optional)" />
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="SingleLine" />
                    <asp:RegularExpressionValidator runat="server" ID="valEmail" ControlToValidate="txtEmail"
                        ValidationExpression="^$|^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ErrorMessage="Enter a valid email or leave blank." Display="Dynamic" CssClass="text-danger" />
                </div>
                <br />

                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ddlRating" Text="Rating" />
                    <asp:DropDownList runat="server" ID="ddlRating" CssClass="form-control">
                        <asp:ListItem Text="Select rating" Value="" />
                        <asp:ListItem Text="5 - Excellent" Value="5" />
                        <asp:ListItem Text="4 - Very Good" Value="4" />
                        <asp:ListItem Text="3 - Good" Value="3" />
                        <asp:ListItem Text="2 - Fair" Value="2" />
                        <asp:ListItem Text="1 - Poor" Value="1" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="valRating" ControlToValidate="ddlRating"
                        InitialValue="" ErrorMessage="Rating is required." Display="Dynamic" CssClass="text-danger" />
                </div>
                <br />
               
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtComment" Text="Comment" />
                    <asp:TextBox runat="server" ID="txtComment" CssClass="form-control" TextMode="MultiLine" Rows="5" />
                    <asp:RequiredFieldValidator runat="server" ID="valComment" ControlToValidate="txtComment"
                        ErrorMessage="Comment is required." Display="Dynamic" CssClass="text-danger" />
                </div>
                <br />
                <br />

                <asp:Button runat="server" ID="btnSubmit" Text="Submit Review" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
            </asp:Panel>

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

        </form>
    </div>

</body>
</html>