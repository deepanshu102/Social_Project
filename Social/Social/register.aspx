<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="register.aspx.cs" Inherits="Social.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style_login.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <div class="main1" style="background-image:url('../img/body-bg.jpg')" >

        <div class="container1">
            <div  class="appointment-form" id="appointment-form">
                <h2>education appointment form</h2>
                <div class="form-group-1">
                    <asp:TextBox ID="name" placeholder="Enter your name" MaxLength="30"  runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="name_val" ControlToValidate="name" runat="server"  ErrorMessage="name_blank" ForeColor="Red" ValidationGroup="Registration_validation" SetFocusOnError="True" Text="Name Should Not be Blank" Display="Dynamic"></asp:RequiredFieldValidator>
        
                    <asp:TextBox ID="email" TextMode="email" placeholder="Enter your Email"  MaxLength="50" runat="server"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="email_val" ControlToValidate="email" runat="server"  ErrorMessage="Email_blank" ForeColor="Red" ValidationGroup="Registration_validation" SetFocusOnError="True" Text="Email Should Not be Blank" Display="Dynamic"></asp:RequiredFieldValidator>
                    
                    <asp:TextBox ID="phone" TextMode="Number" MaxLength="10"  placeholder="Enter your Phone"  runat="server"></asp:TextBox><br />
                    
                   <asp:RequiredFieldValidator ID="phone_val" ControlToValidate="phone" runat="server"  ErrorMessage="Phone_blank" ForeColor="Red" ValidationGroup="Registration_validation" SetFocusOnError="True" Text="Phone Number Should Not be Blank" Display="Dynamic"></asp:RequiredFieldValidator>
                  
                    <asp:TextBox ID="Address"  placeholder="Enter your Address"  runat="server"></asp:TextBox><br />
                     
                   <asp:RequiredFieldValidator ID="add_val" ControlToValidate="Address" runat="server"  ErrorMessage="address_balnk"  ForeColor="Red"  ValidationGroup="Registration_validation" SetFocusOnError="True" Text="Address Should Not be Blank" Display="Dynamic" ValidateRequestMode="Enabled"></asp:RequiredFieldValidator>
                     <asp:TextBox ID="pass" TextMode="password" placeholder="Enter your password"  runat="server"></asp:TextBox><br />
                      <asp:RequiredFieldValidator ID="pass_val" ControlToValidate="pass" runat="server" ErrorMessage="pass_blank"  ForeColor="Red"  ValidationGroup="Registration_validation" SetFocusOnError="True" Text="Password Should Not Blank" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="re_pass" TextMode="password" placeholder="RE-Enter your password"  runat="server"></asp:TextBox><br />
                      <asp:RequiredFieldValidator ID="re_pass_val" ControlToValidate="re_pass" runat="server" ErrorMessage="re_pass_blank"  ForeColor="Red"  Text="Enter your password" Display="Dynamic" ValidationGroup="Registration_validation" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="re_pass_com_val" runat="server" ErrorMessage="Password Mismatch" ControlToCompare="pass" ControlToValidate="re_pass" Display="Dynamic" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="Registration_validation">Password MisMatch</asp:CompareValidator>
                    <div class="select-list">

                        <asp:DropDownList ID="role" runat="server">
                            <asp:ListItem Value="NU">Normal User</asp:ListItem>
                            <asp:ListItem Value="OR">Organisation</asp:ListItem>
                            <asp:ListItem Value="NG">NGO</asp:ListItem>
                      
                        </asp:DropDownList>
                     
                            
                        
                    </div>
                </div>
                <div class="form-group-2">
                  <div class="form-submit">
                      <asp:Button ID="Login_button" OnClick="Login_button_Click"  class="submit" Text="Register" runat="server" />
                    
                </div>
                </div>
              
            </div>
        </div>

    </div>
    <script src="vendors/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</asp:Content>
