<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Siparislerim.aspx.cs" Inherits="proje1.Siparislerim"  MasterPageFile="~/AltSayfa.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> Siparisleriniz
    </h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
     <div runat="server">
   <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
          ConnectionString="<%$ ConnectionStrings:dboAhsapMarketConnectionString%>"
          SelectCommand="SELECT * FROM tblSiparis"
       
        DeleteCommand="DELETE from tblBlog WHERE id=@id">
        <DeleteParameters>
		    <asp:Parameter Name="id" Type="Int32" />
	</DeleteParameters>
       
       </asp:SqlDataSource>
    <asp:GridView ID="GridView1"  CssClass="table table-borderless" runat="server"   AutoGenerateColumns="False"
            DataKeyNames="id" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True"   OnRowDeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            
            <asp:BoundField DataField="urun_id" HeaderText="urun_id" SortExpression="urun_id" />
            <asp:BoundField DataField="urun_adi" HeaderText="urun_adi" SortExpression="urun_adi" />
            <asp:BoundField DataField="urun_fiyati" HeaderText="urun_fiyati" SortExpression="urun_fiyati" />
            
            <asp:TemplateField>
			<ItemTemplate>
				<asp:LinkButton ID="DeleteBtn" runat="server" CommandName="Delete"
				OnClientClick="return isDelete();">Sil
				</asp:LinkButton>
               
             
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