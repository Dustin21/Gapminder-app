shinyUI(fluidPage (
	titlePanel("Gapminder Shiny App"),
	
	sidebarLayout(
		sidebarPanel("User inputs will be here",
								 selectInput("select_country",
								 						label = "Country",
								 						choices = list("Chad", "Iraq", "Mali")
								 						)
								 ),
		mainPanel("My cool graphs will go here",
							textOutput("output_country"),
							tableOutput("gapminder_table"))
		
		)
	))

