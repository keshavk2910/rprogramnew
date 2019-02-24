
function(input, output, session) {
 shinyjs::addClass(id = "menus", class = "navbar-right")
 message("Running Server")
}
function(input, output, session) {
 
 result <- callModule(recaptcha, "test", secret = "6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe")
 
 output$humansOnly <- renderUI({
  req(result()$success)
  textOutput("Its Confirm you're Human")
 })
 
}
