shinyUI(fluidPage (
	titlePanel("Gapminder Shiny App"),
	
	sidebarLayout(
		sidebarPanel("Select year and country from Gapminer",
								 uiOutput("choose_country"),
								 dateRangeInput("year_range",
								 						label = "Range of Years:", 
								 						start = "1952-01-01",
								 						end = "2007-12-31",
								 						format = "yyyy",
								 						min = "1952-01-01",
								 						max = "2007-12-31",
								 						startview = "decade"
								 						)
								 ),
		mainPanel(
							h2(textOutput("output_country")),
							textOutput("info"), 
							plotOutput("ggplot_gdppc_vs_country"),
							tableOutput("gapminder_table"))
		
		)
	))

