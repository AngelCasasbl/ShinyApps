library(shiny)

shinyUI(fluidPage(

    
    titlePanel("Ejemplo de cargar un archivo"),

     sidebarLayout(
        sidebarPanel(
            fileInput("file_upload", "Cargar un archivo")
        ),

 
        mainPanel(
            DT::dataTableOutput("contenido_archivo")
        )
    )
))
