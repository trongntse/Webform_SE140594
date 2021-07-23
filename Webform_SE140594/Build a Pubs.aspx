<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Build a Pubs.aspx.cs" Inherits="Webform_SE140594.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="font-size:medium; background-color: blueviolet">Use this Wizard to buil your plance</div>
     <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2" Height="174px" OnFinishButtonClick="Wizard1_FinishButtonClick" Width="420px">
         <WizardSteps>
             <asp:WizardStep runat="server" title="Location selection">
                 <asp:TextBox ID="txtLoca" runat="server"></asp:TextBox>
             </asp:WizardStep>
             <asp:WizardStep runat="server" Title="How much Cost">
                 <asp:ListBox ID="ListBox1" runat="server">
                     <asp:ListItem>200</asp:ListItem>
                     <asp:ListItem>300</asp:ListItem>
                 </asp:ListBox>
             </asp:WizardStep>
             <asp:WizardStep runat="server" Title="Contruction date">
                 <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
             </asp:WizardStep>
         </WizardSteps>
     </asp:Wizard>
     <asp:Label ID="txtlable" runat="server"></asp:Label>
    <br />

</asp:Content>
