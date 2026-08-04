library(shiny)

ui <- fluidPage(
  titlePanel("Addition of Two Numbers"),
  
  numericInput("num1", "Enter First Number", value = 0),
  numericInput("num2", "Enter Second Number", value = 0),
  
  actionButton("add", "Add"),
  
  br(), br(),
  
  verbatimTextOutput("result")
)

server <- function(input, output) {
  
  result <- eventReactive(input$add, {
    input$num1 + input$num2
  })
  
  output$result <- renderPrint({
    paste("Sum =", result())
  })
}

shinyApp(ui = ui, server = server)