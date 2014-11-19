library(ggplot2);
gdURL <- "http://tiny.cc/gapminder"
gDat <- read.delim(file = gdURL)


shinyServer(function(input, output){
	
	output$choose_country <- renderUI({
		selectInput("country_from_gapminder", "Country", as.list(levels(gDat$country))
								)
	})
	
	one_country_data  <- reactive({
		subset(gDat, country == input$country_from_gapminder & 
					 	year >= input$year_range[1] & year <= input$year_range[2] )
	})
	
	output$gapminder_table <- renderTable({
		one_country_data()
	})
	output$output_country <- renderText({
		cat(input$year_range)
		paste("Country selected", input$country_from_gapminder)
	})
	output$info <- renderPrint({
		str(input$year_range)
	})
	output$ggplot_gdppc_vs_country <- renderPlot({
		p <- ggplot(one_country_data(), 
								aes(x = year, y = gdpPercap))
		p + geom_point()
	})
	
})