shinyServer(function(input, output) {
  
  output$plot <- renderEcharts4r({
    liquid <- data.frame(val = c(0.912, 0.7, 0.6))
    
    liquid %>% 
      e_charts() %>% 
      e_liquid(val) 
  })
  
  
  
  output$sale <- renderValueBox({
    
    valueBox( '57', "Average Score", 
              icon = icon("info"),
              color = "blue"
    )
  })
  
  
  
  output$product <- renderValueBox({
   v= as.integer(input$dept)-57
    
    valueBox( v, "% Higher than Average Score", 
              icon = icon("list"),
              color = "yellow"
    )
  })
  
  output$o <- renderValueBox({
    
    
    valueBox( if(input$dept > 65){
      "Not Defaulted"
    } else {
      "Defaulted"
    }, "STATUS", 
              icon = icon("credit-card"),
              color = "red"
    )
  })
  
  
  output$plot2<-renderPlot({
   gg.gauge(as.numeric(input$dept),breaks=c(0,40,65,85,100))
  })
  
  
  
  
  
})

