library(shiny)
data("ToothGrowth")
shinyServer(function(input, output) {
    
    model1 <- lm(formula = len ~ dose , data = ToothGrowth)

    
    model1pred <- reactive({
        LenInput <- input$sliderDose
        predict(model1, newdata = data.frame(dose = LenInput))
    })
    
    
    output$plot1 <- renderPlot({
        LenInput <- input$sliderDose
        
        plot(ToothGrowth$len, ToothGrowth$dose, xlab = "Dosage of Vitamin C (mg per day)", 
             ylab = "Tooth Length (mm)", bty = "n", pch = 16,
             xlim = c(0, 3), ylim = c(5,40))
        {
            abline(model1, col = "red", lwd = 2)
        }
        
        points(LenInput, model1pred(), col = "red", pch = 16, cex = 2)
        
    })
    
    output$pred1 <- renderText({
        model1pred()
    })
    
})