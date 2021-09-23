<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frmLogIn.aspx.cs" Inherits="PresentacionWeb.frmLogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>
<asp:Content ID="Cuerpo" ContentPlaceHolderID="cphUno" runat="server">
    <div class="d-flex justify-content-center">

        <div class="card my-5" style="width: 22rem;">
            <div class="card-body mx-3 my-4">
              <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">User</label>
                  <asp:TextBox ID="txtUsuario" class="form-control" runat="server" aria-describedby="emailHelp"></asp:TextBox>
              </div>
              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>      
                  <asp:TextBox ID="txtPassword" class="form-control" runat="server" aria-describedby="emailHelp"></asp:TextBox>
                  <div style="width: 100%;margin-top: .25rem;font-size: .875em;color: #dc3545;">
                  <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                  </div>
              </div>
                <asp:Button ID="btnEntrar" class="btn btn-primary" runat="server" Text="Entrar"  OnClick="btnEntrar_Click"/>
                </div>
            </div>
    
        </div>


</asp:Content>
