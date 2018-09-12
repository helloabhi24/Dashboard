#import shiny package
library(shiny)
#import shinydashboard package
library(shinydashboard)
#call shinyUI() fun. for make UI
shinyUI(
  #call dashboradPage() fun.
  dashboardPage(
    #call dashboarHeader() fun. for dashboard hearder
        dashboardHeader(title = h2(strong("PREDICTING ACADEMIC TRENDS AND PATTERNS IN EDUCATIONAL DATABASE"),align="center"),titleWidth = 1300),
        #call dashboardsidebar() fun.for dashboard sidbar
        dashboardSidebar(
                         selectInput("years","Data of Years",choices = IInd_year_2013_14_15_$Year),
                         actionButton('sel1',label = "DATA SET"),
                         actionButton('sel2',label = "Train DataSet"),
                         actionButton('sel3',label = "Test DataSet"),
                         h2("CLASSIFICSTION"),
                         actionButton('sel',label = "Show Data"),
                         h2("CLUSTERING"),
                         selectInput('xcol', 'Choose One', names(IInd)),
                         selectInput('ycol', 'Choose One', names(IInd),
                                     selected=names(IInd)[[2]]),
                         numericInput('clusters', 'Cluster count', 3,
                                      min = 1, max = 9),
                         selectInput("inthis","Subject Data ",choices = names(IInd_year_2013_14_15_[,5:11]))
                        ),
        #call dashboardBody() fun. for dashboard Body
        dashboardBody(
          
                    br(),
                  #call tabsetPanel() fun. for main panel output
                  tabsetPanel(
                    tabPanel("Results Year wise",tableOutput("putit")),
                    tabPanel("FULL DATA SET",tableOutput("table1")),
                    tabPanel("Train DATA",tableOutput("table2")),
                    tabPanel("Test DATA",tableOutput("table3")),
                    tabPanel("Decision Tree of Train Data",plotOutput("plot1")),
                    tabPanel("Bar Ploting of Train Data",plotOutput("plot2")),
                    tabPanel("Bar Ploting of Test Data",plotOutput("plot3")),
                    tabPanel("Clustering of Data",plotOutput("plot4")),
                    tabPanel("Bar ploting subject Wise",plotOutput("sec"))
                    )
        )
        )
        
)
