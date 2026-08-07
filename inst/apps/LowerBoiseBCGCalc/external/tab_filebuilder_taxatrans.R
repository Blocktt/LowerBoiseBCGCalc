# File Builder Panel, taxa translate

function() {
  sidebarLayout(
    sidebarPanel(h2("File Builder: Taxa Translate and Attribute Assignment")
            , useShinyjs()

            , p("Only columns specified below will be carried through into the output file.")
            #, br()
            , h4("A. Upload a File")
            , p("If no file name showing below repeat 'Import File' in the left sidebar.")
            , p(textOutput("fn_input_display_taxatrans"))

            , h4("B. Select Calculation.")
            , uiOutput("UI_taxatrans_pick_official")

            , h4("C. User File Column Names")

            , h6("Required Fields")
            , p("If the default values are present they will be auto-populated.")
            # SampleID (really for group_by)
            , uiOutput("UI_taxatrans_user_col_locid")
            , uiOutput("UI_taxatrans_user_col_actDate")
            , uiOutput("UI_taxatrans_user_col_actYear")

            , uiOutput("UI_taxatrans_user_col_sampid")
            , uiOutput("UI_taxatrans_user_col_taxaid")
            # N_Taxa (really for group_by)
            , uiOutput("UI_taxatrans_user_col_n_taxa")
            , uiOutput("UI_taxatrans_user_col_length")
            , uiOutput("UI_taxatrans_user_col_indexclass")
            , uiOutput("UI_taxatrans_user_col_delt")
            , uiOutput("UI_taxatrans_user_col_density")


            , h6("Additional Fields")
            , uiOutput("UI_taxatrans_user_col_groupby")

            , h4("D. Run Operation")
            , p("This button will merge the user file with the official taxa file")
            , shinyjs::disabled(shinyBS::bsButton("b_calc_taxatrans"
                                                  , label = "Run Operation"))

            , h4("E. Download Output")
            , p("All input and output files will be available in a single zip file.")
            , shinyjs::disabled(downloadButton("b_download_taxatrans"
                                               , "Download Results"))

    )## sidebarPanel ~ END
       , mainPanel(
            tabPanel(title = "TaxaTrans_About"
                     ,includeHTML(file.path("www", "rmd_html"
                                            , "ShinyHTML_FB_TaxaTrans_1About.html"))
                     )## tabPanel ~ END
    )## mainPanel ~ END
  )##sidebarLayout ~ END


}##FUNCTION ~ END
