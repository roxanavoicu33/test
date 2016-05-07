<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ReservationPage.aspx.cs" Inherits="_Default" %>


<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Where you want to go, <strong><%: User.Identity.GetUserName() %></strong>?</h1>
        <p class="lead">We can take you...</p>
        <p>
            <asp:Image ID="Image1" runat="server"  Width="1050px" Height="350" ImageAlign="Middle" ImageUrl="~/Images/Dawn.jpg"/>
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>From airport</h2>
            <p>
                <asp:ListBox ID="FromAirport" runat="server" DataSourceID="SqlDataSource3" DataMember="DefaultView" DataTextField="Airport" DataValueField="Airport" Height="250px" Width="250px" OnSelectedIndexChanged="FromAirport_SelectedIndexChanged">
                    <asp:ListItem>Otopeni</asp:ListItem>
                    <asp:ListItem>Iasi</asp:ListItem>
                    <asp:ListItem>Fiumicino</asp:ListItem>
                    <asp:ListItem>Milan</asp:ListItem>
                    <asp:ListItem>Cluj</asp:ListItem>
                </asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Airport] FROM [FromAirport]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Airport" DataValueField="Airport" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Airport] FROM [FromAirport]"></asp:SqlDataSource>
            </p>

        </div>
        <div class="col-md-4">
            <h2>To airport</h2>
            <p>
                <asp:ListBox ID="ToAirport" runat="server" DataMember="DefaultView" DataSourceID="SqlDataSource4" DataTextField="Airport" DataValueField="Airport" Height="250px" Width="250px" OnSelectedIndexChanged="ToAirport_SelectedIndexChanged">
                    <asp:ListItem>Otopeni</asp:ListItem>
                    <asp:ListItem>Iasi</asp:ListItem>
                    <asp:ListItem>Cluj</asp:ListItem>
                    <asp:ListItem>Milan</asp:ListItem>
                    <asp:ListItem>Fiumicino</asp:ListItem>
                </asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Airport] FROM [FromAirport]"></asp:SqlDataSource>
            </p>
            <p>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Airport" DataValueField="Airport" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Airport] FROM [FromAirport]"></asp:SqlDataSource>
            </p>

        </div>
        <div class="col-md-4">
            <h2>When you want to go?</h2>
            <p>
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar> 
                </p>

        </div>
        
    </div>
    <div class="row">
        <div class="col-md-6">
            <h2>You have selected</h2>
            <p>
                <asp:TextBox ID="Message" runat="server" Height="150px" Width="550px"></asp:TextBox>
            </p>

        </div>
        <div class="col-md-6">
            <h2>Button</h2>
            <p>
                
                            </p>

        </div>
        
    </div>
</asp:Content>
