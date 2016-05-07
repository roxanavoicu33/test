<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p>
            <asp:Image ID="Image1" runat="server"  Width="1050px" Height="350" ImageAlign="Middle" ImageUrl="~/Images/Airplain.jpg"/>
        </p>
        <h1>Welcome</h1>
        <p class="lead">This is the website that sends you everywhere...</p>
        <p><asp:Button runat="server" OnClick="GetTicket" Text="Get the ticket &raquo;" CssClass="btn btn-primary btn-lg" />
            </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Be amazed</h2>
            <p>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Airport.jpg" Width="350px" Height="300"/>
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Flights</h2>
            <p>
                You can easily go from one country to another just by one click.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
