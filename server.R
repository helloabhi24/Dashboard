#import shiny package
library(shiny)
#call shinyServer() fun. for server side
shinyServer(function(input,output){
  #call observe() fun. for actionButton Input
  observe({
    observeEvent(input$sel1,{output$table1<-renderTable(IInd)})
    observeEvent(input$sel2,{output$table2<-renderTable(train)})
    observeEvent(input$sel3,{output$table3<-renderTable(test)})
    observeEvent(input$sel,{output$plot1<-renderPlot({plot(pre_ctree)})
    output$plot2<-renderPlot(barplot(a))
    output$plot3<-renderPlot(barplot(m))})
  })
  #give output from renderTable for years
  output$putit<-renderTable({
    an<-subset(IInd_year_2013_14_15_,IInd_year_2013_14_15_$Year==input$years)
  })
  #give output from randerPlot for ploting subject Data
  output$sec<-renderPlot({ar<-aggregate(IInd_year_2013_14_15_[,input$inthis]~Year,IInd_year_2013_14_15_,mean)
  barplot(ar[,2],names.arg =  ar$Year)})
  #k-mean clusting
  #take input from xcol and ycol
  selectedData <- reactive({
  IInd[, c(input$xcol, input$ycol)]
  })
  #call reactive() fun. for retriving input,apply kmeans()fun. with data and size of cluster
  clusters <- reactive({
    kmeans(na.omit(selectedData()), input$clusters)
  })
  #call renderplot() fun. for ploting clusting data 
  output$plot4 <- renderPlot({
    #call palette() fun. for define colors for clusters
    palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
             "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
    
   # par(mar = c(5.1, 4.1, 0, 1))
    #call plot() fun. with parameter data,and cluster
    plot(selectedData(),
         col = clusters()$cluster,
         pch = 20, cex = 3,xlab = input$xcol,ylab = input$ycol)
    points(clusters()$centers, pch = 4, cex = 2, lwd = 6)
  })
  })
