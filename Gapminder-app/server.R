library(ggplot2);

gDat <- read.delim(file = "./data/gapminder.tsv") 


shinyServer(function(input, output){
	
	output$choose_country <- renderUI({
		selectInput("country_from_gapminder", "Country", as.list(levels(gDat$country)), 
								multiple = TRUE, selected = "Canada"
								)
	})
	
	one_country_data  <- reactive({
		
		if(is.null(input$country_from_gapminder)) {
			return(NULL)
		}
	
		subset(gDat, country == input$country_from_gapminder & 
					 	year >= as.numeric(format(input$year_range[1], "%Y")) & 
					 	year <= as.numeric(format(input$year_range[2], "%Y")))
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
		
		if(is.null(one_country_data())) {
			return(NULL)
		}
		
		p <- ggplot(one_country_data(), 
								aes(x = year, y = gdpPercap))
		p2 <- p + geom_point() + geom_line(aes(colour = country))
		
		if(input$facet == TRUE) {
			p2 + facet_wrap(~ country) + guides(colour = FALSE)
		}else{
			p2
		}
		
		
		
	})
	
})