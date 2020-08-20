library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Predict tooth length based on Vitamin C dosage"),
    
    sidebarLayout(
        
            sidebarPanel(
            
                sliderInput("sliderDose", "What is the dose of the Vitamin C (mg per day)?", 0, 3, value = 1, step = 0.1),
                
                ),
        
            mainPanel(
            
                plotOutput("plot1"),
                h3("Predicted tooth length (mm):"),
                textOutput("pred1"),
                    )
        
                )
))
