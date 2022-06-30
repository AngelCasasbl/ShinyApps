
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
    output$single_checkbox <- renderPrint({
      print(input$single_checkbox_input)
      str(input$single_checkbox_input)
    })
    output$multiple_checkbox <- renderPrint({
      print(input$Multiple_checkbox_input)
      str(input$Multiple_checkbox_input)
    })
    output$RadioIO <- renderPrint({
      print(input$radio_input)
      str(input$radio_input)
    }) 
    output$btn_oki <- renderPrint({
      print(input$btn_ok)
      str(input$btn_ok)
    }) 
    output$btn_salida <- renderPrint({
      print(input$btn_salir)
      str(input$btn_salir)
    }) 
})
