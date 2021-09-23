<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true" CodeBehind="frmProductosAltaModificacion.aspx.cs" Inherits="PresentacionWeb.frmProductosAltaModificacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Productos
    </h1>
    <div>

    </div>
    <div class="d-flex justify-content-center">
        <div class="card my-5" style="border-color: #FFFFFF; width: 22rem;">
            
             <div class="input-group mb-3" >
                <span class="input-group-text" id="Producto">Producto</span>
                <asp:TextBox ID="txtProductoNombre" class="form-control" runat="server"></asp:TextBox> 
             </div>
              <div class="input-group mb-3">
                <span class="input-group-text">$</span>
                <asp:TextBox ID="txtProductoValor" class="form-control" runat="server"></asp:TextBox>
              </div> 
            <div class="input-group mb-3" >
                <%--<span class="input-group-text" id="IDProveedor">ID del proveedor</span>
                <asp:TextBox ID="txtProveedorID" class="form-control" runat="server"></asp:TextBox> --%>

                <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#buscarProveedor">
                    Seleccionar Proveedor
                </button>

                <%--<asp:Button ID="btnSeleccionProveedor" class="btn btn-warning" runat="server"  style="margin-left: 5px" Text="Seleccionar Proveedor" OnClick="btnSeleccionProveedor_Click"/>--%>

             </div>
            <div class="input-group mb-3" >
                <span class="input-group-text" id="inputGroup-sizing-default2">Codigo de barras</span>
                <asp:TextBox ID="txtCodigoBarras" class="form-control" runat="server"></asp:TextBox> 
             </div>
             <div class="d-flex justify-content-center">
                <asp:Button ID="btnCancelar" class="btn btn-danger"  runat="server" OnClick="btnCancelar_Click" Text="Cancelar"/>
                <asp:Button ID="btnAlta" class="btn btn-primary" runat="server"  style="margin-left: 5px" Text="Alta" OnClick="btnAlta_Click"/>
             </div>
           </div>
         </div>
     </div>

    <!-- Button trigger modal -->
    

    <!-- Modal -->
    <div class="modal fade" id="buscarProveedor" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            ...
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>
        </div>
      </div>
    </div>


</asp:Content>

