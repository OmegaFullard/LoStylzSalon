using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web.UI;
using System.Xml.Serialization;

namespace LoStylz_Salon
{
    public partial class Reviews : Page
    {
        private static readonly object _fileLock = new object();
        private const string ReviewsFileName = "~/App_Data/Reviews.xml";

        [Serializable]
        public class Review
        {
            public string Name { get; set; }
            public string Email { get; set; }
            public int Rating { get; set; }
            public string Comment { get; set; }
            public DateTime Date { get; set; }
        }

        protected global::System.Web.UI.WebControls.Label lblMessage;
protected global::System.Web.UI.WebControls.Label lblError;
protected global::System.Web.UI.WebControls.TextBox txtName;
protected global::System.Web.UI.WebControls.TextBox txtEmail;
protected global::System.Web.UI.WebControls.DropDownList ddlRating;
protected global::System.Web.UI.WebControls.TextBox txtComment;
protected global::System.Web.UI.WebControls.Repeater reviewsRepeater;
protected global::System.Web.UI.WebControls.Label lblAverageRating;
protected global::System.Web.UI.WebControls.Panel panelStats;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadReviews();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMessage.Text = string.Empty;
            lblError.Text = string.Empty;

            if (!Page.IsValid)
            {
                return;
            }

            int rating;
            if (!int.TryParse(ddlRating.SelectedValue, out rating))
            {
                lblError.Text = "Invalid rating.";
                return;
            }

            var review = new Review
            {
                Name = txtName.Text.Trim(),
                Email = txtEmail.Text.Trim(),
                Rating = rating,
                Comment = txtComment.Text.Trim(),
                Date = DateTime.UtcNow
            };

            try
            {
                SaveReview(review);
                lblMessage.Text = "Thank you — your review has been submitted.";
                ClearForm();
                LoadReviews();
            }
            catch (Exception)
            {
                // Simple error surface; in production log the exception
                lblError.Text = "Unable to save review. Please try again later.";
            }
        }

        private void ClearForm()
        {
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            ddlRating.SelectedIndex = 0;
            txtComment.Text = string.Empty;
        }

        private string GetFilePath()
        {
            return Server.MapPath(ReviewsFileName);
        }

        private List<Review> ReadReviewsFromFile()
        {
            var path = GetFilePath();
            if (!File.Exists(path))
            {
                return new List<Review>();
            }

            lock (_fileLock)
            {
                using (var stream = File.OpenRead(path))
                {
                    var serializer = new XmlSerializer(typeof(List<Review>));
                    try
                    {
                        return (List<Review>)serializer.Deserialize(stream) ?? new List<Review>();
                    }
                    catch
                    {
                        // If file is corrupt, return empty list
                        return new List<Review>();
                    }
                }
            }
        }

        private void SaveReview(Review review)
        {
            var path = GetFilePath();
            List<Review> reviews;

            lock (_fileLock)
            {
                reviews = ReadReviewsFromFile();
                reviews.Add(review);

                var directory = Path.GetDirectoryName(path);
                if (!Directory.Exists(directory))
                {
                    Directory.CreateDirectory(directory);
                }

                using (var stream = File.Create(path))
                {
                    var serializer = new XmlSerializer(typeof(List<Review>));
                    serializer.Serialize(stream, reviews);
                }
            }
        }
        private void LoadReviews()
        {
            var reviews = ReadReviewsFromFile()
              .OrderByDescending(r => r.Date)
              .ToList();

            reviewsRepeater.DataSource = reviews;
            reviewsRepeater.DataBind();
        }
    }
}