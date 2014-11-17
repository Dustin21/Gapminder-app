gdURL <- "http://tiny.cc/gapminder"
gDat <- read.delim(file = gdURL)


shinyServer(function(input, output){
	
	output$gapminder_table <- renderTable({
		subset(gDat, country == input$select_country & 
					 	year >= input$year_range[1] & year <= input$year_range[2])
	})
	output$output_country <- renderText({
		cat(input$year_range)
		paste("Country selected", input$select_country)
	})
})