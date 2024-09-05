library(shiny)
library(readr)

ui <- fluidPage(
  titlePanel("Notion Help Chunks Viewer"),
  sidebarLayout(
    sidebarPanel(
      selectInput("chunk_number", "Select Chunk Number:", choices = NULL)
    ),
    mainPanel(
      verbatimTextOutput("content_output")
    )
  )
)

server <- function(input, output, session) {
  data <- reactive({
    csv_file <- "C:\\Users\\phili\\Downloads\\notion_help_chunks.csv"
    read_csv(csv_file, col_types = cols(.default = "c"))
  })
  
  observe({
    df <- data()
    updateSelectInput(session, "chunk_number", choices = df$`Chunk Number`)
  })
  
  output$content_output <- renderText({
    df <- data()
    selected_chunk <- input$chunk_number
    if (!is.null(selected_chunk)) {
      content <- df$Content[df$`Chunk Number` == selected_chunk]
      if (length(content) > 0) {
        return(content)
      } else {
        return("No content available for the selected chunk number.")
      }
    } else {
      return("Please select a chunk number.")
    }
  })
}

shinyApp(ui = ui, server = server)