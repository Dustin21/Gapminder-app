shinyUI(fluidPage (
	titlePanel("Gapminder Shiny App"),
	
	sidebarLayout(
		sidebarPanel("Select year and country from Gapminer",
								 uiOutput("choose_country"),
								 sliderInput("year_range",
								 						label = "Range of Years:",
								 						
								 						min = 1952,
								 						max = 2007,
								 						value = c(1952, 2005), format = "####",
								 						step = 5)
								 ),
		mainPanel(
							h2(textOutput("output_country")),
							textOutput("info"), 
							plotOutput("ggplot_gdppc_vs_country"),
							tableOutput("gapminder_table"))
		
		)
	))

