

#' Explore interactive data table of units, if you want to build a conversion
#' expression, then it's better to use `convert_gadget()`. This function provides
#' a fuller view of the units, including some additional metadata.
#'
#' @return
#' Launches a Shiny app
#' @export
#'
#' @examples
#'
explore_units <- function(){
  app <- shiny::shinyApp(
    ui = shiny::shinyUI(
      shiny::pageWithSidebar(
        shiny::headerPanel('Convertr Unit Explorer'),
        shiny::sidebarPanel(
          shiny::selectInput("base_unit",
                    "Base Unit",
                    c( "All",
                       unique(conversion_table$base_unit)),
                    selected = "1/a")
      ),

      shiny::mainPanel(
        DT::dataTableOutput("conversion")
      )
    )),
    server = shiny::shinyServer(function(input, output) {

      output$conversion <- DT::renderDataTable({
        df <- conversion_table
        if( input$base_unit != "All" ){
          df <- df[ df$base_unit == input$base_unit, ]
        }
        df
      })
    })
  )
  shiny::runApp(app)
}