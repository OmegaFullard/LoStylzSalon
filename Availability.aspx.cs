using Microsoft.VisualBasic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoStylz_Salon
{
	public partial class Availability : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		//Gridview removed 10/8/24
		private string ConvertSortDirection(System.Web.UI.WebControls.GridViewSortEventArgs e)
		{
			ViewState.Add("columnname", e.SortExpression);

			if ((ViewState["direction"] == null))
				ViewState.Add("direction", "asc");
			else
				ViewState["direction"] = Interaction.IIf(ViewState["direction"].ToString().ToLower() == "desc", "asc", "desc");

			return ViewState["direction"].ToString();
		}
		//protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
		//{
		//	try
		//	{
		//		DataView m_Dataview = (DataView)GridView1.DataSource;

		//		if (m_Dataview == null)
		//		{
		//			m_Dataview.Sort = e.SortExpression + " " + ConvertSortDirection(e);
		//			this.GridView1.DataSource = m_Dataview;
		//			this.GridView1.DataBind();
		//		}
		//	}
		//	catch (Exception)
		//	{
		//		throw;
		//	}
		//}

		//protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
		//{
		//	try
		//	{
		//		if (!(Information.IsNothing(ViewState["columnname"]) | Information.IsNothing(ViewState["direction"])))
		//		{
		//			DataView m_DataView = (DataView)this.GridView1.DataSource;

		//			if (m_DataView == null)
		//			{
		//				m_DataView.Sort = ViewState["columnname"].ToString() + " " + ViewState["direction"].ToString();
		//				this.GridView1.DataSource = m_DataView;
		//			}
		//		}

		//		this.GridView1.PageIndex = e.NewPageIndex;
		//		this.GridView1.DataBind();
		//	}
		//	catch (Exception)
		//	{
		//		throw;
		//	}
		//}
	}
}
