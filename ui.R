library(markdown)

shinyUI(fluidPage(
    
    titlePanel("What kind of car do you want?"),
    
    sidebarLayout(
        sidebarPanel(
            helpText("Specify what your desired characteristics are:"),
            numericInput('cost', 'What is the price of gas?', 2.41, min = 2, max = 4, step=0.01),
            numericInput('gas', 'How much do you want to spend on gas?:', 50, min=1, max=1000),
            numericInput('dis', 'How many miles will you drive?', 50, min = 1, max = 1000),
            checkboxGroupInput('cyl', 'How many cylinders do you want?', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
            sliderInput('hp', 'How many horsepower do you want?', min=50, max=340, value=c(50,340), step=10),
            checkboxGroupInput('am', 'Do you want a manual or automatic transmission?', c("Automatic"=0, "Manual"=1), selected = c(0,1))
        ),
        mainPanel(
            dataTableOutput('table')
        )
    )
    
))

