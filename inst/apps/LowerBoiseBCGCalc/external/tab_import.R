# Import Page

function() {
  tabPanel("Import Data"
    # SideBar ####
    , sidebarLayout(
        sidebarPanel(
          # 0. Progress
          h4("Load File")
          , p("Only comma-separated or tab-separated files.")
          , h5("Select file parameters")
          , radioButtons("sep", "Separator",
                         c(Comma = ",",
                           Tab = "\t"),
                         ',')
          , fileInput("fn_input"
                      , label = "Choose file to upload"
                      , multiple = FALSE
                      , accept = c("text/csv"
                                   , "text/comma-separated-values"
                                   , "text/tab-separated-values"
                                   , "text/plain"
                                   , ".csv"
                                   , ".tsv"
                                   , ".txt")
                      )##fileInput~END
          , tags$hr()
          , p("The 'separator' allows the user to upload different file formats
            (e.g., csv, tsv, or txt).")
        , p("Files for all operations will be uploaded through this interface.")
          , p(paste0("File uploads are limited to a maximum of "
                     , mb_limit
                     , " MB in size."))
        , h4("Test Files")
        , p("Below are test files that you can download and run through the Shiny app.")
        , tags$ul(tags$li(HTML(paste0("Fish "
            , '<a href="https://github.com/Blocktt/LowerBoiseBCGCalc/blob/main/inst/apps/LowerBoiseBCGCalc/www/links/LBR_Test_Fish_20260525.csv" target="_blank">[CSV]</a>')))
                  , tags$li(HTML("Bugs "
            , paste0('<a href="https://github.com/Blocktt/LowerBoiseBCGCalc/blob/main/inst/apps/LowerBoiseBCGCalc/www/links/LBR_Test_Bugs_20260525.csv" target="_blank">[CSV]</a>'))))


        )##sidebarPanel~END
      # Main Panel ####
      , mainPanel(
           p("A table is shown below after data is loaded.")
          , DT::dataTableOutput("df_import_DT")
      )##mainPanel~END

    )##sidebarLayout~END
  )##tabPanel ~ END
}## FUNCTION ~ END
