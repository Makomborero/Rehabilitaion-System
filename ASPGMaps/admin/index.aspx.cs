﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class admin_Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        gettotalexam();
        gettotalquestion();
        gettotalstudents();
        gettotalcourses();
    }

    string s = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString; //calling the connection string
    
    //method for getting all the exam 
    public void gettotalexam()
    {
        using (SqlConnection con = new SqlConnection(s))
        {
            SqlCommand cmd = new SqlCommand("select count(exam_id) from exam", con);
            try
            {
                con.Open();
                int i  = Convert.ToInt32(cmd.ExecuteScalar());
                lbltotalexam.Text = i.ToString();
             
            }
            catch (Exception ex)
            {
                panel_index_warning.Visible = true;
                lbl_indexwarning.Text = "Something went wrong. Please try after sometime later</br> Contact you developer for this problem" + ex.Message;
            }
        }
    }

    //method for getting all the question 
    public void gettotalquestion()
    {
        using (SqlConnection con = new SqlConnection(s))
        {
            SqlCommand cmd = new SqlCommand("select count(category_id) from category", con);
            try
            {
                con.Open();
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                lbltotalquestion.Text = i.ToString();

            }
            catch (Exception ex)
            {
                panel_index_warning.Visible = true;
                lbl_indexwarning.Text = "Something went wrong. Please try after sometime later</br> Contact you developer for this problem" + ex.Message;
            }
        }
    }

    //method for getting all the students 
    public void gettotalstudents()
    {
        using (SqlConnection con = new SqlConnection(s))
        {
            SqlCommand cmd = new SqlCommand("SELECT COUNT(usrID) FROM usrdata where usercategory = 'Recruit'", con);
            try
            {
                con.Open();
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                lbltotalstudents.Text = i.ToString();

            }
            catch (Exception ex)
            {
                panel_index_warning.Visible = true;
                lbl_indexwarning.Text = "Something went wrong. Please try after sometime later</br> Contact you developer for this problem" + ex.Message;
            }
        }
    }

    //method for getting all the courses 
    public void gettotalcourses()
    {
        using (SqlConnection con = new SqlConnection(s))
        {
            SqlCommand cmd = new SqlCommand("select count(subject_id) from subject", con);
            try
            {
                con.Open();
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                Label1.Text = i.ToString();

            }
            catch (Exception ex)
            {
                panel_index_warning.Visible = true;
                lbl_indexwarning.Text = "Something went wrong. Please try after sometime later</br> Contact you developer for this problem" + ex.Message;
            }
        }
    }

}