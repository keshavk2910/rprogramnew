library(shinyCAPTCHA)
fluidPage(id='fluidPage_top_id', 
  tags$head(
    tags$script(src = "js.cookies.js"),
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
  ),
  shinyjs::useShinyjs(),
  shinyalert::useShinyalert(),
  navbarPage(id='navbarPage_top_id', "IDS Tools", collapsible=TRUE,
    tabPanel("Campaigns"),
    navbarMenu("Surveys",
      tabPanel("Take"),
      tabPanel("Manage Responses")
    ), 
    navbarMenu("Explore",
      tabPanel("Campaigns Monitoring"),
      tabPanel("Interactive Dashboard"),
	  tabPanel("PlotApp"),
	  tabPanel("RStudio"),
	  tabPanel("Demo Data")
    ), 
    tabPanel("Documents"),
    tabPanel("Classes"),    
     navbarMenu("Log in",
      tabPanel("Log in",
               tags$div(tags$img(src = "/ids-height-80.png", class="pull-center"), id = "login_logo", class="row text-center"
               ),
               tags$a(href="#", "Login", class="active"),
               tags$hr(),
               textInput("username", NULL,placeholder = "Username"),
               passwordInput("password", NULL, placeholder = "Password"),
               actionButton("log_in", "Log In", class="login-btn"),
               actionLink("no_account", "No Account? Register"),
               actionLink("forgot_pass", "Forgot Password?")
      ),
      tabPanel("Register",
               tags$div(tags$img(src = "/ids-height-80.png", class="pull-center"), id = "login_logo", class="row text-center"
               ),
        tags$a(href="#", "Create Account", class="active"),
        tags$hr(),
        textInput("username", NULL,placeholder = "Username"),
        textInput("useremail", NULL,placeholder = "Email Address"),
        passwordInput("password", NULL, placeholder = "Password"),
        passwordInput("confirm_password", NULL, placeholder = "Confirm Password"),
        tags$div(class="well pre-scrollable",
                tags$span(id="tos", "We will collect as much data as is required by our system and that you offer to our system, no more, no less.
                          ")),
        checkboxInput("agree_register", "I agree to the terms above.", value = FALSE, width = NULL),
        recaptchaUI("test", sitekey = "6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI"),
        uiOutput("humansOnly"),
        actionButton("register_now", "Register Now", class="register-btn"),
        actionLink("back_login", "Back lo Login")
      ),
      tabPanel("Forgot Password?",
      tags$div(tags$img(src = "/ids-height-80.png", class="pull-center"), id = "login_logo", class="row text-center"
      ),
      tags$a(href="#", "Password Recovery", class="active"),
      tags$hr(),
      textInput("username_rec", NULL,placeholder = "Username (case Sensitive"),
      textInput("useremail_rec", NULL,placeholder = "Email Address"),
      actionButton("pass_recbtn", "Reset Password", class="register-btn"),
               tags$a(href="#tab-9672-1", "Back lo Login", class="active")
      ),
      tabPanel("Admin"),
      HTML('<a href="http://curriculum.idsucla.org/" target="_blank">Curriculum</a>'),
      HTML('<a href="#" id="passchange-trigger">Change Password</a>'),
      HTML('<a href="#" id="accountd-trigger">Account Details</a>'),
      HTML('<a href="#" id="resetr-trigger">Resetting RStudio</a>'),
  	   tabPanel("Log out")
     ),
	  navbarMenu("Help",
	             HTML('<a href="https://ids-wiki.mobilizingcs.org" target="_blank">WIKI</a>'),
	             HTML('<a href="#" id="contact-trigger">Contact</a>')
	  )
	 ),
  tags$div(id="myModal1", class="modal1",
           tags$div(class="modal-content",
                    tags$span(class="close1",
                              tags$span("X")),
                    tags$div(
                             tags$span(style="font-size:22px; font-weight:700; margin-right:15px;", "E-mail address:"),
                             tags$span(style="font-size:19px; font-weight:500;", "support@mobilizingcs.org")))),
  tags$div(id="myModal2", class="modal2",
           tags$div(class="modal-content",
                    tags$span(class="close2",
                              tags$span("X")),
                    tags$div(
                     tags$span(style="font-size:22px; font-weight:700; margin-right:15px;", "ANYTHING FOR CHANGE PASS")))),
  tags$div(id="myModal3", class="modal3",
           tags$div(class="modal-content",
                    tags$span(class="close3",
                              tags$span("X")),
                    tags$div(
                     tags$span(style="font-size:22px; font-weight:700; margin-right:15px;", "ANYTHING FOR ACCOUNT DETAILS")))),
  tags$div(id="myModal4", class="modal4",
           tags$div(class="modal-content",
                    tags$span(class="close4",
                              tags$span("X")),
                    tags$div(
                     tags$span(style="font-size:22px; font-weight:700; margin-right:15px;", "ANYTHING FOR RESETTING RSTUDIO")))),
  tags$script(src = "footer.js")
 )
