﻿<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.master" AutoEventWireup="True" Inherits="exam" CodeFile="question.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="heardcontentplaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontentplaceholder" runat="Server">
    
    <center>
<div>
<asp:ScriptManager ID= "SM1" runat="server"></asp:ScriptManager>
<asp:Timer ID="timer1" runat="server"
Interval="1000" OnTick="timer1_tick"></asp:Timer>
</div>

<div>
<asp:UpdatePanel id="updPnl"
runat="server" UpdateMode="Conditional">
<ContentTemplate>
<asp:Label ID="lblTimer" runat="server" Font-Bold="True" Font-Names="Arial"
        Font-Size="X-Large" ForeColor="#df4759"></asp:Label>
</ContentTemplate>
<Triggers>
<asp:AsyncPostBackTrigger ControlID="timer1" EventName ="tick" />
</Triggers>
</asp:UpdatePanel>
</div>
</center>

    
    <br />
    <h2 class="m-4">Answer all the questions</h2>
    <hr />
    <asp:TextBox ID="getstringuser" runat="server" Visible="false"></asp:TextBox>
    <asp:GridView ID="gridview_examquestion" runat="server" AutoGenerateColumns="False" GridLines="None">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("question_id") %>' Visible="false"></asp:Label>
                    <asp:Label ID="lbl_question" runat="server" Text='<%# Eval("question_name") %>'></asp:Label>
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("option_one") %>' ID="option_one" runat="server" />
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("option_two") %>' ID="option_two" runat="server" />
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("option_three") %>' ID="option_three" runat="server" />
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("option_four") %>' ID="option_four" runat="server" />
                    <hr />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btn_submit_Click" />
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <asp:Panel ID="panel_questshow_warning" runat="server" Visible="false">
                    <br />
                    <div class="alert alert-danger text-center">
                        <asp:Label ID="lbl_questshowwarning" runat="server" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>

</asp:Content>