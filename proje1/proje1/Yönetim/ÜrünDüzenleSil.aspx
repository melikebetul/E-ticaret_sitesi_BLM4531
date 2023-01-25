<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="ÜrünDüzenleSil.aspx.cs" Inherits="proje1.Yönetim.ÜrünDüzenleSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Ürün Düzenle/Sil Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div runat="server">
   <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
          ConnectionString="<%$ ConnectionStrings:dboAhsapMarketConnectionString%>"
          SelectCommand="SELECT Adi, Fiyat, Sure, Resim, Detay FROM tblUrun"
        UpdateCommand="Update tblUrun set Adi = @Adi , Fiyat = @Fiyat,
               Sure = @Sure, Resim = @Resim, Detay=@Detay WHERE id = @id" 
        DeleteCommand="DELETE from tblUrun WHERE id=@id">
        <DeleteParameters>
		    <asp:Parameter Name="id" Type="Int32" />
	</DeleteParameters>
       <UpdateParameters>
                            
                            <asp:Parameter Name="Adi" Type="String" />
                            <asp:Parameter Name="Fiyat" Type="Int32" />
                            <asp:Parameter Name="Sure" Type="Int32" />
                            <asp:Parameter Name="Resim" Type="String" />
                            <asp:Parameter Name="Detay" Type="String" />
               </UpdateParameters>
       </asp:SqlDataSource>
    <asp:GridView ID="GridView1"  CssClass="table table-borderless" runat="server"   AutoGenerateColumns="False"
            DataKeyNames="id" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True"   OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            
            <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
            <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
            <asp:BoundField DataField="Sure" HeaderText="Sure" SortExpression="Sure" />
            <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
            <asp:BoundField DataField="Detay" HeaderText="Detay" SortExpression="Detay" />
            <asp:TemplateField>
			<ItemTemplate>
				<asp:LinkButton ID="DeleteBtn" runat="server" CommandName="Delete"
				OnClientClick="return isDelete();">Sil
				</asp:LinkButton>
               <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#Eval("id","ÜrünDüzenleSecilen.aspx?id={0}") %>' runat="server">
                            Düzenle
                        </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
			</ItemTemplate>
            
		</asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

    </asp:GridView>
   </div>
</asp:Content>

