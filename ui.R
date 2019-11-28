
shinyUI(dashboardPage(
  
  dashboardHeader(title = 'SCORECARD'),
  
  dashboardSidebar(
    sidebarUserPanel("RISKSCORE TEAM"),
    sidebarMenu(
      
      menuItem('Dashboard', tabName = 'dash')
      
     
      
    )
  ),
  
  dashboardBody(
    
    tabItems(
      
      
      
      
      #DASHBOARD
      tabItem(tabName = 'dash', 
              fluidRow( align='center',  selectInput("dept","SELECT CLIENT ID:", lc)),
              
                  fluidRow( echarts4rOutput("plot")),
              
              fluidRow(valueBoxOutput("sale"),
                       valueBoxOutput("o"),
                       valueBoxOutput("product")) , 
              #fluidRow( echarts4rOutput("plot"))     
              #fluidRow( gaugeOutput("gaugePlot"))
              #fluidRow(eChartOutput('plot', width = "100%", height = "400px"))
              fluidRow(plotOutput("plot2"))
      )
      
           
      
      
      
     
      
    )
  ))
)
