library(shiny)
library(lubridate)

# Definimos los tipos Inputs
shinyUI(fluidPage(

    # Titulo de la aplicación
    titlePanel("Catalogo de los imput de Shiny"),

    # Sidebar with a slider
    sidebarLayout(
        sidebarPanel(
            sliderInput("Slider_input",
                        "Seleccione un valor:",
                        min = 0,
                        max = 100,
                        value = 25, #Valor inicial
                        step = 1, #paso
                        animate = TRUE, #animación
                        post = "%"), #pre: Antes del indicador , post: Después del indicador #pre = "$"
            sliderInput("Rango_slider",
                        "Seleccione rango: ",
                        min = 0,
                        max = 100,
                        value = c(25,75)), #Valores inicial
            numericInput("numeric_input", #nombre del item
                         "Seleccione una edad: ", #Subtitulo
                         value = 15, min = 0, max = 120),
            dateInput("single_date_input", "selecciona una fecha: ",
                      value = today(), # today(), funcion de lubridate que te devuelve la fecha de hoy 
                      min = today()- 365, # -365 días
                      max = today(), 
                      language = "es", # cambia el lenguage del calendario 
                      weekstart = 1), # cambia el dia donde empieza la semana
            dateRangeInput("date_range_input", "seleccione el rango de fecha: ",
                           start = today() -30,
                           end = today(),
                           format = "dd/mm/yyyy",
                           language = "es",
                           weekstart = 1, 
                           separator = "a")
                        
        ),

        # gráfico principal
        mainPanel(
            # títulos (header: h1,h2,h3.....)
            h3("Salida de los imputs"),
            ("Salida con slider"),
            verbatimTextOutput("single_slider_IO"),
            ("Salida con slider range"),
            verbatimTextOutput("Single_range_IO"),
            ("Salida con numeric"),
            verbatimTextOutput("numeric_IO"),
            ("Salida con date"),
            verbatimTextOutput("date"),
            ("Salida con date_range"),
            verbatimTextOutput("date_range")
            
        )
    )
))
