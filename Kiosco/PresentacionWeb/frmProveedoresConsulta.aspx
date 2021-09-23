<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true" CodeBehind="frmProveedoresConsulta.aspx.cs" Inherits="PresentacionWeb.frmProveedoresConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Descripcion</th>
                    <th scope="col">Editar</th>
                    <th scope="col">Eliminar</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <th scope="row">1</th>
                <td>Coca</td>
                <td>$25</td>
                <td>Fía y económica. Ideal para volver mágica cualquier oportuniad!</td>
                <td>
                    <asp:Button class="btnEdit" Text="Editar" runat="server" OnCLick="btnEdit_Click"/>
                </td>
                <td>
                    <asp:Button class="btnEliminar" Text="Eliminar" runat="server" OnClick="btnEliminar_Click"/>
                </td>   
                </tr>
            </tbody>
            <tbody>
                <tr>
                <th scope="row">1</th>
                <td>Coca</td>
                <td>$25</td>
                <td>Fría y económica. Ideal para volver mágica cualquier oportuniad!</td>
                <td>
                    <asp:Button class="btnEdit" Text="Editar" runat="server" OnCLick="btnEdit_Click"/>
                </td>
                <td>
                    <asp:Button class="btnEliminar" Text="Eliminar" runat="server" OnClick="btnEliminar_Click"/>
                </tr>
            <tbody>
                <tr>
                <th scope="row">1</th>
                <td>Coca</td>
                <td>$25</td>
                <td>Fría y económica. Ideal para volver mágica cualquier oportuniad!</td>
                <td>
                    <asp:Button class="btnEdit" Text="Editar" runat="server" OnCLick="btnEdit_Click"/>
                </td>
                <td>
                    <asp:Button class="btnEliminar" Text="Eliminar" runat="server" OnClick="btnEliminar_Click"/>
                </tr>
        </table>
        
    </div>
</asp:Content>
