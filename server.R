library(knitr)

shinyServer(function(input, output) {

	getPage <- function(){
		knit( paste0(getwd(), "/www/o.Rhtml"), output = paste0(getwd(),"/www/o.html"))
		#set_project_dir("src")
		#setwd("..")
		#knit("data/o.Rhtml")
		return(includeHTML(paste0(getwd(),"/www/o.html")))
		#return("/data/o.html")
		#return("")
	}

	output$output <- renderUI({
		#includeHTML("data/o.Rhtml")
		getPage()
	})

	#output$showorder <- renderPrint(
	#{
	#	print(paste0(getwd(),"/data/o.Rhtml"))
	#	print("Date Range")
	#	print(input$dates)
	#	print("Client")
	#	print(input$client)
	#})

  


})
