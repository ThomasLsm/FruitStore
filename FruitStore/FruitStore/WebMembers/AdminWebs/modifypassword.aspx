﻿<%@ Page Language="C#" MasterPageFile="~/WebMembers/AdminWebs/admin.Master" AutoEventWireup="true" CodeBehind="modifypassword.aspx.cs" Inherits="FruitStore.WebMembers.AdminWebs.modifypassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderNav" runat="server">
    修改密码
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <fieldset>
        <legend>修改密码</legend>
        <table class="formtable" style="width: 50%">
             <tr>
                <td>原密码：</td>
                <td>
                    <asp:TextBox ID="txtOldPsw" runat="server" MaxLength="20" TextMode="Password" placeholder="请输入6位以上的密码"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtOldPsw" ErrorMessage="*" CssClass="error" Display="Dynamic"/>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="txtOldPsw" ValidationExpression="\w{6}\w*" 
                        ErrorMessage="密码不能少于6位" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
               
            <tr>
                <td>新密码：</td>
                <td>
                    <asp:TextBox ID="txtNewPsw" runat="server" MaxLength="20" TextMode="Password" placeholder="请输入6位以上的密码"/>
                    <asp:RequiredFieldValidator ID="valPassword1" runat="server" 
                        ControlToValidate="txtNewPsw" ErrorMessage="*" CssClass="error" Display="Dynamic"/>
                    <asp:RegularExpressionValidator ID="valPassword2" runat="server"
                        ControlToValidate="txtNewPsw" ValidationExpression="\w{6}\w*" 
                        ErrorMessage="密码不能少于6位" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>确认密码：</td>
                <td>                    
                    <asp:TextBox ID="txtConfirm" runat="server" MaxLength="20" TextMode="Password" />
                    <asp:CompareValidator ID="valConfirm" runat="server"
                        ControlToValidate="txtConfirm" ControlToCompare="txtNewPsw"
                        ErrorMessage="两次密码输入不一致" CssClass="error" Display="Dynamic" />
                </td>
            </tr>
         
            <tr>
                <td colspan="6" class="command">
                    <asp:Button ID="btnSubmit" runat="server" Text="提交" CssClass="clickbutton" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>


