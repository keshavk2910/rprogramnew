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
               tags$div(class="container",
               tags$div(class="row",
               tags$div(class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3",
               tags$div(tags$img(src = "https://tools.idsucla.org/assets/ids-height-80.png", class="pull-center"), id = "login_logo", class="row text-center"
               ),
               tags$div(class="row", id="login",
               tags$div(class="panel panel-login", id="login-panel",
               tags$div(class="panel-heading",
               tags$div(class="row",
               tags$div(class="col-xs-12",
               tags$a(href="#", "Login", class="active"),
               tags$hr()
               ))),
               tags$div(class="panel-body",
               tags$div(class="row",
               tags$div(class="col-lg-12 errordiv login")
               ),
               tags$div(class="row",
               tags$div(class="col-lg-12",
               textInput("username", NULL,placeholder = "Username"),
               passwordInput("password", NULL, placeholder = "Password"),
               tags$div(class="form-group", style="text-align: center;",
               tags$div(class="row",
               tags$div(class="col-sm-6 col-sm-offset-3",
               actionButton("log_in", "Log In", class="login-btn")
               ))),
               tags$div(class="form-group", style="text-align: center;",
                        tags$div(class="row",
                                 tags$div(class="col-lg-12",
                                          tags$a(href="#forgot-password", "Forgot Password?", class="active")
                                 )))
                        )))
               )
               )
               )
               )
               )
      ),
      tabPanel("Register",
               tags$div(class="container",
               tags$div(class="row",
               tags$div(class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3",
               tags$div(tags$img(src = "https://tools.idsucla.org/assets/ids-height-80.png", class="pull-center"), id = "login_logo", class="row text-center"
               ),
        tags$div(class="row", id="register",
        tags$div(class="panel panel-login", id="register-panel",
        tags$div(class="panel-heading",
        tags$div(class="row",
        tags$div(class="col-xs-12",
        tags$a(href="#", "Create Account", class="active"),
        tags$hr()
        ))),
        tags$div(class="panel-body",
        tags$div(class="row",
        tags$div(class="col-lg-12 errordiv register")
        ),
        tags$div(class="row",
        tags$div(class="col-lg-12",
        textInput("username", NULL,placeholder = "Username"),
        textInput("useremail", NULL,placeholder = "Email Address"),
        passwordInput("password", NULL, placeholder = "Password"),
        passwordInput("confirm_password", NULL, placeholder = "Confirm Password"),
        tags$div(class="row",
        tags$div(class="col-lg-12",
        tags$div(class="well pre-scrollable",
                tags$span(id="tos", "We will collect as much data as is required by our system and that you offer to our system, no more, no less. We will keep the data as secure as possible, but you recognize that unforeseeable incidents may happen that cause data to be lost or stolen. We make every effort to keep our systems as secure as possible.

                          Any website collects information about its users. This typically includes data about the device being used (for example, a web browser or a smartphone application), the IP address of the system making requests, HTTP cookies, request timestamps and timezones, and any data (including images) being provided to interact with the various application functions. In addition to the standard HTTP headers and payloads just described, ohmage also collects location information, system analytics regarding smartphone usage, personal data streams, and your email address, if provided. By using the ohmage smartphone application, you acknowledge that this information is being collected about you and your activities. If you are a software developer, the ohmage server APIs are fully documented on GitHub [1].
                          
                          Why We Collect This Data
                          
                          ohmage is designed for the analysis of scripted self-report (survey) data, smartphone analytics data, and personal data streams such as user activity data. All of these data streams can be combined together to provide useful information to end users, researchers, clinicians and students from a wide variety of application domains. If you are a participant in a study in a domain of research around health behaviors, you will be given a very thorough explanation about the study and the information collected. This process is handled by the IRB (Institutional Review Board) from various institutions [2]. Each research study has its own IRB application that is thoroughly vetted and approved by an IRB before the study can begin.
                          
                          If you are a participant in a research study, you always have the option to opt-out and discontinue your participation.
                          
                          Your Privacy
                          
                          In cases where you have self-registered with ohmage, it is up to you to choose a username and password. You are also asked to provide your email address. We will only use your email address to contact you to complete the registration process and reset your password should it be necessary. CENS-MobilizeLabs does not share or sell your email address or personal information with any third-party.
                          
                          In ohmage, you have control over the privacy settings of your self-report data. Each self-report may be marked as 'shared' or 'private'. When a self-report is marked as private, only you, system administrators, and research supervisors can view that data. A research supervisor is a person who is managing a population of participants in order to perform research. As a participant, you may also delete your self-report responses.
                          
                          For passively collected data such as smartphone analytics and personal data streams, the data is private to you, system administrators and research supervisors. This information is used to analyze self-report data along different axes. For example, your activity may be compared to your self-reports about sleep in a sleep study.
                          
                          One of our goals is to put you in control of your data. It is also important for system administrators and research supervisors to have access to your data in order to interpret patterns, perform research, and fix system problems. The ohmage team will put your privacy first and we will never share your data with a third-party.
                          
                          Final Notes
                          
                          We are constantly striving to build a great software and a pleasing experience to our end users. We think our app is awesome and we hope you enjoy using it!
                          
                          1. https://github.com/cens/ohmageServer/wiki
                          2. The UCLA IRB information can be found here: http://ohrpp.research.ucla.edu/pages/about-irb
                          
                          ")))),
        tags$div(class="form-group", style="text-align: center;",
        tags$div(class="row",
        tags$div(class="col-lg-12",
        checkboxInput("agree_register", "I agree to the terms above.", value = FALSE, width = NULL)))),
        tags$div(class="form-group", style="text-align: center;",
        tags$div(class="row",
        tags$div(style="text-align:center;", class="col-sm-6 col-sm-offset-3",
        recaptchaUI("test", sitekey = "6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI"),
        uiOutput("humansOnly"),
        actionButton("register_now", "Register Now", class="register-btn")
        ))),
        tags$div(class="form-group", style="text-align: center;",
        tags$div(class="row",
        tags$div(class="col-lg-12",
        tags$a(href="#tab-9672-1", "Back lo Login", class="active")
        )))
        )))
        )
        )
        )
        )
        )
      ),
      tabPanel("Forgot Password?",
      tags$div(class="container",
      tags$div(class="row",
      tags$div(class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3",
      tags$div(tags$img(src = "https://tools.idsucla.org/assets/ids-height-80.png", class="pull-center"), id = "login_logo", class="row text-center"
      ),
      tags$div(class="row", id="pass-rec",
      tags$div(class="panel panel-login", id="passrec-panel",
      tags$div(class="panel-heading",
      tags$div(class="row",
      tags$div(class="col-xs-12",
      tags$a(href="#", "Password Recovery", class="active"),
      tags$hr()
      ))),
      tags$div(class="panel-body",
      tags$div(class="row",
      tags$div(class="col-lg-12 errordiv")
      ),
      tags$div(class="row",
      tags$div(class="col-lg-12",
      textInput("username_rec", NULL,placeholder = "Username (case Sensitive"),
      textInput("useremail_rec", NULL,placeholder = "Email Address"),
      tags$div(class="form-group", style="text-align: center;",
      tags$div(class="row",
      tags$div(class="col-sm-6 col-sm-offset-3",
      actionButton("pass_recbtn", "Reset Password", class="register-btn")
      ))),
      tags$div(class="form-group", style="text-align: center;",
      tags$div(class="row",
      tags$div(class="col-lg-12",
               tags$a(href="#tab-9672-1", "Back lo Login", class="active")
      )))
      )))
      )
      )
      )
      )
      )
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
