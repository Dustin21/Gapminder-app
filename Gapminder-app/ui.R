shinyUI(fluidPage (
	titlePanel("Gapminder Shiny App"),
	
	sidebarLayout(
		sidebarPanel("User inputs will be here",
								 selectInput("select_country",
								 						label = "Country",
								 						choices = list("Chad", "Iraq", "Mali")
								 						),
								 sliderInput("year_range",
								 						label = "Range of Years:",
								 						
								 						min = 1952,
								 						max = 2007,
								 						value = c(1955, 2005), format = "####",
								 						step = 5)
								 ),
		mainPanel("My cool graphs will go here",
							textOutput("output_country"),
							textOutput("info"), 
							plotOutput("ggplot_gdppc_vs_country"),
							tableOutput("gapminder_table"))
		
		)
	))

