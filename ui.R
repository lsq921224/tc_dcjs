shinyUI(fluidPage(
	titlePanel("Transcripts Demo w/ dc.js"),
	fluidRow(
		sidebarPanel(
  			wellPanel(
				includeScript("www/js/jquery-ui.custom.min.js"),
				dateRangeInput("dates", label = h3("Date range"), start = "2015-03-01" ),
				selectInput("client", "Choose Client", c("All",site_names))
				
				#uiOutput("business_unit"),
				#uiOutput("agent_group")
				#selectInput("business_unit", "Choose Business Unit", c("1","2")),
				#selectInput("agent_group", "Choose Agent Group", c("1","2"))
			),
			wellPanel(
				checkboxGroupInput("choose_status","Choose Exit Status",c("customerExited" = "chat.customerExited","agentExited" = "chat.agentExited","customerLostConnection - Lost Connection" = "lost_lost", "customerLostConnection - Navigate to untagged page" = "lost_navi"), selected="agentExited")
			),
			helpText("Sort Exit Status (Drap and Drop status within this panel)"),
			wellPanel(
				uiOutput('sortable_rui')
			)
			#helpText("Sort Option"),
			
		),
		
		mainPanel(
			#verbatimTextOutput("showorder"),
			htmlOutput("output")
		)
	)
)
)


