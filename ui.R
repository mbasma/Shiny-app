library(shiny) 
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Body Mass Index (BMI) Calculator"),
                
                sidebarPanel(
                        numericInput('weight', 'Insert Person Weight in kilograms', 80) ,
                        numericInput('height', 'Insert Person Height in metres', 1, min = 0.2, max = 3, step = 0.01),
                        submitButton('Submit')
                ), 
                mainPanel(
                        p('Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.'),
                        p('BMI Categories:'),
                        tags$div(
                                tags$ul(
                                        tags$li('Underweight = <18.5'),
                                        tags$li('Normal weight = 18.5–24.9'),
                                        tags$li('Overweight = 25–29.9 '),
                                        tags$li('Obesity = BMI of 30 or greater')
                                )
                        ),
                     
                        h4('Based on your input of Height and Weight:'), 
                        p('weight:'), verbatimTextOutput("inputweightvalue"),
                        p('height:'), verbatimTextOutput("inputheightvalue"),
                        h4('Your BMI is:'),
                        verbatimTextOutput("estimation"),
                        p('Which means that you are:'),strong(verbatimTextOutput("diagnostic"))
                        
                        
                )
                
        )   
)