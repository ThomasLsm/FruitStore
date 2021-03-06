﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FruitStore.DAL;

namespace FruitStore.WebMembers
{
    public partial class mainmemu : System.Web.UI.Page
    {
       static  private int curPage=1;

       static  private int sumPage = 0;


        protected void Page_Load(object sender, EventArgs e)
        {
            //FruitList.DataSource = DALFruits.SelectAllInfo();
            //FruitList.DataBind();
            if (!IsPostBack)
            {
                txtCurPage.Text = "1";
                pageload();
                txtSumPage.Text = sumPage.ToString();
            }
        }
        public void pageload()
        {
            FruitList.DataSource = DALFruits.SelectAllInfo(curPage, out sumPage);

            this.btnDownPage.Enabled = true;
            this.btnUpPage.Enabled = true;
            
            if (curPage == 1)
            {
                this.btnUpPage.Enabled = false;
            }
            if (curPage == sumPage)
            {
                this.btnDownPage.Enabled = false;
            }
            
            FruitList.DataBind();
        
        }

        protected void btnUp_Click(object sender, EventArgs e)
        {
            curPage -= 1;
            txtCurPage.Text = Convert.ToString(curPage);
            pageload();

        }

        protected void btnDown_Click(object sender, EventArgs e)
        {
            curPage += 1;
            txtCurPage.Text = Convert.ToString(curPage);
            pageload();
        }

        protected void btnHeadPage_Click(object sender, EventArgs e)
        {
            curPage = 1;
            txtCurPage.Text = Convert.ToString(curPage);
            pageload();
        }

        protected void btnRealPage_Click(object sender, EventArgs e)
        {
            curPage = sumPage;
            txtCurPage.Text = Convert.ToString(curPage);
            pageload();
        }
    }
}