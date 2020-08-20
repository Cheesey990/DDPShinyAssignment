library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Predict tooth length based on Vitamin C dosage"),
    
    sidebarLayout(
        
            sidebarPanel(
            
                h3("Documentation instructions:"),
                h4("This model estimates how long teeth in guinea pigs could grow if you add dosages of Vitamin C. 
                   Use the slider to state the dosage amount and see the estimated tooth length."),
                
                sliderInput("sliderDose", "What is the dose of the Vitamin C (mg per day)?", 0, 3, value = 1, step = 0.1),
                
                ),
        
            mainPanel(
            
                plotOutput("plot1"),
                h3("Predicted tooth length (mm):"),
                textOutput("pred1"),
                    )
        
                )
))
