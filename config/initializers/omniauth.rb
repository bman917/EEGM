Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "1042987663486.apps.googleusercontent.com", "2LN_Yl1hKTHQpcXUSeJaMZfW",
	  {
	  	:scope => "userinfo.email, https://www.google.com/m8/feeds/"
	  }
end