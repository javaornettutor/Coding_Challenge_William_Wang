<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Image_Manager_UI_Design.aspx.cs" Inherits="Coding_Challenge_William_Wang.Image_Manager_UI_Design" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="row">
        <div class="col-md-12">
            <h2> Here are some of the points of my design</h2>
            <ol>
               <li>
                   The website will reading config variable from the web.config file (appSettings), so UI text can be modified easily.
               </li>
               <li>
                    The website is mobile enabled using bootstrap library
               </li>
               <li>
                    I have include other weight light library (Beauter,
                   picnics) to indicates that i am capable of learning some new knowledge
               </li>
               <li>
                    I've the mindset to create the code so that it can be reused or easier to maintained
               </li>
               <li>
                    I have not done the website testing through automatic/Unit Test.
               </li>
            </ol>

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
                    <li>Minimum unit test - Please refer to [Unit_Test_Project]<br />
                        <img src="../Image/TestResult.PNG" />
                    </li>    
                </ul>
            
            
            
        </div>
        <div class="col-md-6">
           Thanks for viewing my coding challenge website
        </div>
        
    </div>

</asp:Content>
