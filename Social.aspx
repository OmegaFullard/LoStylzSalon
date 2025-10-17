<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Social.aspx.cs" Inherits="LoStylz_Salon.Social" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Follow Us - Lo Stylz Hair Salon</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Styles/styles.css" rel="stylesheet" />
    <link href="http://localhost:64954/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome fallback for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .social-grid { display:flex; flex-wrap:wrap; gap:12px; margin-top:20px; }
        .social-card { flex: 1 1 200px; border:1px solid #e6e6e6; padding:18px; border-radius:8px; text-align:center; background:#fff; }
        .social-btn { margin-top:10px; }
        .icon-xl { font-size:28px; }
    </style>
</head>
<body>
    <form runat="server">
        <div class="container">
            <div class="py-4 text-center">
                <h1>Follow Lo Stylz Hair Salon</h1>
                <p class="lead">Stay connected for updates, promotions, and hairstyle inspiration.</p>
            </div>

            <div class="social-grid" role="list">
                <div class="social-card" role="listitem">
                    <div><i class="fab fa-facebook icon-xl" aria-hidden="true"></i></div>
                    <h4>Facebook</h4>
                    <p>Get news, promotions and event info.</p>
                    <a class="btn btn-primary social-btn" href="https://www.facebook.com/YourPage" target="_blank" rel="noopener noreferrer" aria-label="Follow us on Facebook">
                        <i class="fab fa-facebook me-2"></i> Follow
                    </a>
                </div>

                <div class="social-card" role="listitem">
                    <div><i class="fab fa-instagram icon-xl" aria-hidden="true"></i></div>
                    <h4>Instagram</h4>
                    <p>See our latest styles and before/after photos.</p>
                    <a class="btn btn-danger social-btn" href="https://www.instagram.com/YourProfile" target="_blank" rel="noopener noreferrer" aria-label="Follow us on Instagram">
                        <i class="fab fa-instagram me-2"></i> Follow
                    </a>
                </div>

                <div class="social-card" role="listitem">
                    <div><i class="fab fa-x-twitter icon-xl" aria-hidden="true"></i></div>
                    <h4>X / Twitter</h4>
                    <p>Quick updates and announcements.</p>
                    <a class="btn btn-info social-btn" href="https://twitter.com/YourProfile" target="_blank" rel="noopener noreferrer" aria-label="Follow us on X">
                        <i class="fab fa-x-twitter me-2"></i> Follow
                    </a>
                </div>

                <div class="social-card" role="listitem">
                    <div><i class="fab fa-tiktok icon-xl" aria-hidden="true"></i></div>
                    <h4>TikTok</h4>
                    <p>Short video tutorials and trends.</p>
                    <a class="btn btn-dark social-btn" href="https://www.tiktok.com/@YourProfile" target="_blank" rel="noopener noreferrer" aria-label="Follow us on TikTok">
                        <i class="fab fa-tiktok me-2"></i> Follow
                    </a>
                </div>

                <div class="social-card" role="listitem">
                    <div><i class="fab fa-youtube icon-xl" aria-hidden="true"></i></div>
                    <h4>YouTube</h4>
                    <p>Longer tutorials and salon walkthroughs.</p>
                    <a class="btn btn-danger social-btn" href="https://www.youtube.com/YourChannel" target="_blank" rel="noopener noreferrer" aria-label="Subscribe on YouTube">
                        <i class="fab fa-youtube me-2"></i> Subscribe
                    </a>
                </div>

                <div class="social-card" role="listitem">
                    <div><i class="fab fa-pinterest icon-xl" aria-hidden="true"></i></div>
                    <h4>Pinterest</h4>
                    <p>Save hairstyle ideas and inspiration boards.</p>
                    <a class="btn btn-outline-primary social-btn" href="https://www.pinterest.com/YourProfile" target="_blank" rel="noopener noreferrer" aria-label="Follow us on Pinterest">
                        <i class="fab fa-pinterest me-2"></i> Follow
                    </a>
                </div>
            </div>

            <hr />

            <div class="text-center mt-4">
                <p>Prefer email? <a href="Contact.aspx">Contact us</a> or subscribe to our newsletter on the Home page.</p>
                <a href="Home.aspx">&lt;&lt; Back to Home</a>
            </div>
        </div>
    </form>
</body>
</html>