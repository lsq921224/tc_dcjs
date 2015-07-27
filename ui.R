shinyUI(fluidPage(
	titlePanel("Transcripts Demo w/ dc.js"),
	fluidRow(
		sidebarPanel(
  			wellPanel(
				dateRangeInput("dates", label = h3("Date range"), start = "2015-03-01" ),
				selectInput("client", "Choose Client", c("All",site_names))
				#uiOutput("business_unit"),
				#uiOutput("agent_group")
				#selectInput("business_unit", "Choose Business Unit", c("1","2")),
				#selectInput("agent_group", "Choose Agent Group", c("1","2"))
			)
		),
		
		mainPanel(
			#verbatimTextOutput("showorder"),
			htmlOutput("output")
		)
	)
)
)


