<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Image_Manager_App.aspx.cs" Inherits="Coding_Challenge_William_Wang.WebPages.Image_Manager_App" %>
<%@ Import Namespace="Coding_Challenge_William_Wang.Class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <head>
        <script src="../Scripts/PageScript/Image_Manager_App.js" type="text/javascript"></script>
        <script src="../Scripts/PageScript/ImageClass.js" type="text/javascript"></script>
        <link href="../Content/PageStyle/Image_Manager_App.css" rel="stylesheet" />

        <link href="../Content/picnic.min.css" rel="stylesheet" />
    </head>   

    <h1><%=" Welcome to Australian Unity " + App_Constants.APP_NAME %></h1>
    <br /> 


    <label>
      <input type="checkbox" id="ckoffConfirm" name="ckoffConfirm">
      <span class="checkable">Turn off pop up confirmation box </span>
    </label>


    <div class="container">
        <table id="imageBarTable" class="table order-list">
            <thead>
                <tr></tr>
            </thead>
            <tbody></tbody>
            <tfoot></tfoot>
        </table>
    </div>
    <div id="statusMsg" class="alert alert-info"></div>
    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#surpriseBoxDiv">Surprise here</button>
    <div id="surpriseBoxDiv" class="collapse">        
        <div class="row">
            <div class="col-sm-6 col-md-6 col-lg-6">
                <h3>Thanks for visiting Coding Challenge project - Develop by William Wang</h3>
            </div>            
        </div>
    </div>

</asp:Content>
