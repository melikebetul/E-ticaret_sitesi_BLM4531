<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogDüzenleSil.aspx.cs" Inherits="proje1.Yönetim.BlogDüzenleSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3 class="page-title">Blog Düzenle/Sil Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
     <div runat="server">
   <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
          ConnectionString="<%$ ConnectionStrings:dboAhsapMarketConnectionString%>"
          SelectCommand="SELECT Baslik, Ozet, KategoriID, Resim, Detay, Tarih FROM tblBlog"
        UpdateCommand="Update tblBlog set Baslik = @Baslik , Ozet = @Ozet,
               KategoriId = @KategoriId, Resim = @Resim, Detay=@Detay, Tarih=@Tarih WHERE id = @id" 
        DeleteCommand="DELETE from tblBlog WHERE id=@id">
        <DeleteParameters>
		    <asp:Parameter Name="id" Type="Int32" />
	</DeleteParameters>
       <UpdateParameters>
                            
                            <asp:Parameter Name="Baslik" Type="String" />
                            <asp:Parameter Name="Ozet" Type="Int32" />
                            <asp:Parameter Name="KategoriId" Type="Int32" />
                            <asp:Parameter Name="Resim" Type="String" />
                            <asp:Parameter Name="Detay" Type="String" />
                            <asp:Parameter Name="Tarih" Type="String" />
               </UpdateParameters>
       </asp:SqlDataSource>
    <asp:GridView ID="GridView1"  CssClass="table table-borderless" runat="server"   AutoGenerateColumns="False"
            DataKeyNames="id" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True"   OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            
            <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
            <asp:BoundField DataField="Ozet" HeaderText="Ozet" SortExpression="Ozet" />
            <asp:BoundField DataField="KategoriId" HeaderText="KategoriId" SortExpression="KategoriId" />
            <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
            <asp:BoundField DataField="Detay" HeaderText="Detay" SortExpression="Detay" />
            <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
            <asp:TemplateField>
			<ItemTemplate>
				<asp:LinkButton ID="DeleteBtn" runat="server" CommandName="Delete"
				OnClientClick="return isDelete();">Sil
				</asp:LinkButton>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#Eval("id","BlogDüzenleSecilen.aspx?id={0}") %>' runat="server">
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
