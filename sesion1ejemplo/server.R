
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$single_slider_IO <- renderPrint({
        print(input$Slider_input)
        str(input$Slider_input)
    })
    output$Single_range_IO <- renderPrint({
        print(input$Rango_slider)
        str(input$Rango_slider)
    })
    output$numeric_IO <- renderPrint({
        print(input$numeric_input)
        str(input$numeric_input)
    })
    output$date <- renderPrint({
        print(input$single_date_input)
        str(input$single_date_input)
    })
    output$date_range <- renderPrint({
        print(input$date_range_input)
        str(input$date_range_input)
    })
})
