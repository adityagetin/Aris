﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrateScientist.aspx.cs" Inherits="Project_Aris.CrateScientist" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Scientist | Project Aris</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

         * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            height: 100vh;
            display:block;
            justify-content: center;
            align-items: center;
            padding: 10px 10px 10px 10px;
            background-image: radial-gradient(circle at 30% 86%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 8%, transparent 8%, transparent 92%), radial-gradient(circle at 55% 100%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 8%, transparent 8%, transparent 92%), radial-gradient(circle at 40% 75%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%), radial-gradient(circle at 7% 99%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%), radial-gradient(circle at 69% 76%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%), radial-gradient(circle at 2% 35%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%), radial-gradient(circle at 14% 48%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%), radial-gradient(circle at 28% 87%, rgba(255, 255, 255, 0.04) 0%, rgba(255, 255, 255, 0.04) 4%, transparent 4%, transparent 96%), radial-gradient(circle at 65% 14%, rgba(255, 255, 255, 0.04) 0%, rgba(255, 255, 255, 0.04) 4%, transparent 4%, transparent 96%), radial-gradient(circle at 51% 36%, rgba(255, 255, 255, 0.04) 0%, rgba(255, 255, 255, 0.04) 4%, transparent 4%, transparent 96%), radial-gradient(circle at 6% 93%, rgba(255, 255, 255, 0.04) 0%, rgba(255, 255, 255, 0.04) 4%, transparent 4%, transparent 96%), linear-gradient(135deg, #17e9ad, #1d18d0);
  
        }

        .container {
            margin-top:30px;
            max-width: 700px;
            margin-left:auto;
            margin-right:auto;
            width: 100%;
            background-color: #fff;
            padding: 25px 30px;
            border-radius: 5px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
        }

        .container .title {
          font-size: 25px;
          font-weight: 500;
          position: relative;
          color: #fff;
          margin-bottom: 20px;
        }

        .container .title::before {
          content: "";
          position: absolute;
          left: 0;
          bottom: -3px;
          height: 3px;
          width: 30px;
          border-radius: 5px;
          background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }


        .content form .user-details {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 20px 0 12px 0;
        }

        form .user-details .input-box {
            margin-bottom: 15px;
            width: calc(100% / 2 - 20px);
        }

        form .input-box span.details {
            display: block;
            font-weight: 500;
            margin-bottom: 5px;
        }

        .user-details .input-box input {
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 15px;
            border: 1px solid #ccc;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        }

        .user-details .input-box input:focus,
        .user-details .input-box input:valid {
            border-color: #9b59b6;
        }
        form .user-details .dropdown{
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 15px;
            border: 1px solid #ccc;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        }

        form .category {
            display: flex;
            width: 80%;
            margin: 14px 0;
            justify-content: space-between;
        }

        form .category label {
            display: flex;
            align-items: center;
            cursor: pointer;
        }

        form .category label .dot {
            height: 18px;
            width: 18px;
            border-radius: 50%;
            margin-right: 10px;
            background: #d9d9d9;
            border: 5px solid transparent;
            transition: all 0.3s ease;
        }

        form .button {
            height: 45px;
            margin: 35px 0;
        }

        form .button input {
            height: 100%;
            width: 100%;
            border-radius: 5px;
            border: none;
            color: #fff;
            font-size: 18px;
            font-weight: 500;
            letter-spacing: 1px;
            cursor: pointer;
            transition: all 0.3s ease;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }

        form .button input:hover {
            background: linear-gradient(-135deg, #71b7e6, #9b59b6);
        }

       

        @media (max-width: 584px) {
            .container {
                max-width: 100%;
            }

            form .user-details .input-box {
                margin-bottom: 15px;
                width: 100%;
            }

            form .category {
                width: 100%;
            }

            .content form .user-details {
                max-height: 300px;
                overflow-y: scroll;
            }

            .user-details::-webkit-scrollbar {
                width: 5px;
            }
        }
            
                
        @media (max-width: 459px) {
            .container .content .category {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Create Scientist</h2>
        <asp:Panel ID="pnlCreateScientist" runat="server">
            <div class="content">
                <form action="#" runat="server">
                    <div class="user-details">
                        <div class="input-box">
                            <asp:Label ID="lblFname" runat="server" AssociatedControlID="txtFname">First Name:</asp:Label>
                            <asp:TextBox ID="txtFname" runat="server" CssClass="input-field" placeholder="Enter your name" required="true"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblLname" runat="server" AssociatedControlID="txtLname">Last Name:</asp:Label>
                            <asp:TextBox ID="txtLname" runat="server" CssClass="input-field" placeholder="Enter your last name" required="true"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblMname" runat="server" AssociatedControlID="txtMname">Middle Name:</asp:Label>
                            <asp:TextBox ID="txtMname" runat="server" CssClass="input-field" placeholder="Enter your middle name"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblDivID" runat="server" AssociatedControlID="ddlDivision">DivID:</asp:Label>
                                <asp:DropDownList ID="ddlDivision" runat="server" DataTextField="Division" DataValueField="ID" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged" AutoPostBack="true" CssClass="dropdown"></asp:DropDownList>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblDiscipline" runat="server" AssociatedControlID="txtDiscipline">Discipline:</asp:Label>
                            <asp:TextBox ID="txtDiscipline" runat="server" CssClass="input-field" placeholder="Enter the discipline" required="true"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblDesigID" runat="server" AssociatedControlID="txtDesigID">DesigID:</asp:Label>
                            <asp:TextBox ID="txtDesigID" runat="server" CssClass="input-field" placeholder="Enter the DesigID" required="true"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblDoB" runat="server" AssociatedControlID="txtDoB">Date of Birth:</asp:Label>
                            <asp:TextBox ID="txtDoB" runat="server" CssClass="input-field" TextMode="Date" required="true"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblDoJ" runat="server" AssociatedControlID="txtDoJ">Date of Joining:</asp:Label>
                            <asp:TextBox ID="txtDoJ" runat="server" CssClass="input-field" TextMode="Date" required="true"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblEmailICAR" runat="server" AssociatedControlID="txtEmailICAR">EmailICAR:</asp:Label>
                            <asp:TextBox ID="txtEmailICAR" runat="server" CssClass="input-field" TextMode="Email" required="true"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail">Email:</asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" TextMode="Email" required="true"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblMob1" runat="server" AssociatedControlID="txtMob1">Mobile 1:</asp:Label>
                            <asp:TextBox ID="txtMob1" runat="server" CssClass="input-field" required="true"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblMob2" runat="server" AssociatedControlID="txtMob2">Mobile 2:</asp:Label>
                            <asp:TextBox ID="txtMob2" runat="server" CssClass="input-field"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword">Password:</asp:Label>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" TextMode="Password" required="true"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblUSerId" runat="server" AssociatedControlID="txtUSerId">User ID:</asp:Label>
                            <asp:TextBox ID="txtUSerId" runat="server" CssClass="input-field" required="true"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:Label ID="lblRole" runat="server" Text="Role:" CssClass="gender-title"></asp:Label>
                            <asp:DropDownList ID="ddlRole" runat="server" CssClass="dropdown">
                                <asp:ListItem Value="1">Admin</asp:ListItem>
                                <asp:ListItem Value="2">Scientist</asp:ListItem>
                                <asp:ListItem Value="3">RMP</asp:ListItem>
                                <asp:ListItem Value="4">Guest</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                     
                    <div class="button">
                        <asp:Button ID="btnCreateScientist" runat="server" Text="Create Scientist" CssClass="register-btn" OnClick="btnCreateScientist_Click" />
                    </div>
                </form>
            </div>
        </asp:Panel>
    </div>
</body>
</html>

