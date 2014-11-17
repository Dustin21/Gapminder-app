gdURL <- "http://tiny.cc/gapminder"
gDat <- read.delim(file = gdURL)


shinyServer(function(input, output){
	
	output$gapminder_table <- renderTable({
		subset(gDat, gDat$country == input$select_country)
	})
	output$output_country <- renderText({
		paste("Country selected", input$select_country)
	})
})