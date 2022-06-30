library(shiny)
library(DT)

shinyUI(fluidPage(

    
    titlePanel("Ejemplo de cargar un archivo"),

     sidebarLayout(
        sidebarPanel(
            fileInput("file_upload", "Cargar un archivo",
                    accept = ".csv")
        ),

 
        mainPanel(
            DT::dataTableOutput("contenido_archivo")
        )
    )
))
