

### ejemplo de prediccion de la potencia de un coche dado su consumo

#setwd("~/3. Personal/JHU/9. Developing Data Products/Prediction_example")

library(shiny)
shinyUI(fluidPage(
    titlePanel("Predict Horsepower from MPG"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderMPG", "What is the MPG of the car?", 10, 35, value = 20),
            checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
            checkboxInput("showModel2", "Show/Hide Model 2", value = TRUE),
            actionButton("Submit", "Submit")
            #submitBotton("Submit")
        ),
        
        
        mainPanel(
            plotOutput("plot1"),
            h3("Predicted Horsepower from Model 1:"),
            textOutput("pred1"),
            h3("Predicted Horsepower from Model 2:"),
            textOutput("pred2")
            
        )
    )
))
