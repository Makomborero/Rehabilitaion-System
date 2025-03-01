﻿<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.master" AutoEventWireup="True" Inherits="categoryitem" CodeFile="categoryitem.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="heardcontentplaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontentplaceholder" runat="Server">
        <h2 class="m-4">
            All <asp:Label ID="lbl_categorysubject" runat="server"></asp:Label> Assessment Courses</h2>
        <hr />
                
        <div class="row">
        <div style="position: relative;width: 100%;min-height: 1px;padding-right: 15px;padding-left: 15px;">
            <div class="card-header">
                <asp:Repeater ID="gridview_categoryitem" runat="server">
            <ItemTemplate>
                <div class="col-lg-3 mb-3">
                    <div class="card h-100 text-center">
                        <h4 class="card-header"><%# Eval("subject_name") %></h4>
                        <div class="card-footer">
                            <asp:HyperLink ID="btn_category" runat="server" CssClass="btn btn-primary" ForeColor="White" NavigateUrl='<%# "~/subjectexam.aspx?sid=" +  Eval("subject_id") %>'>Go to Exams</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
                    <asp:Panel ID="panel_subjectshow_warning" runat="server" Visible="false">
                        <br />
                        <div class="alert alert-danger text-center">
                            <asp:Label ID="lbl_subjectshowwarning" runat="server" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
         </div>
</asp:Content>