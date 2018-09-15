<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Coding_Challenge_William_Wang._Default" %>
<%@ Import Namespace="Coding_Challenge_William_Wang.Class.Helper" %>
<%@ Import Namespace="Coding_Challenge_William_Wang.Class" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div>
            <span class='mainHeadingTextStyle'>Thanks for visiting Coding Challenges</span>
            <br /><u> Task Description</u>
            <p class="lead">
                Use a design principal to layout 3 images vertically with an option to delete. In the end at least one image should be present
                <br />Criteria 
                <ul>
                    <li>Performance 
                        <ul>
                            <li>loading of images via javascript</li>
                            <li>The page has purely been built 100% with Javascript/Jquery framework</li>
                        </ul>
                    </li>
                    <li>Light weight 
                        <ul>
                            <li> Bootstrap</li>
                            <li> Picnics</li>
                            <li> Beauter </li>
                        </ul>
                    </li>
                    <li>Minimum unit test - Please refer to [Unit_Test_Project]<br /><img src="../Image/TestResult.PNG" /></li>
                </ul>
        </div>
        
        <p><%=HTMLHelperExtensions.CreatePageLink("Image_Manager_App.aspx","See it in Action") %></p>
    </div>  

</asp:Content>
