#Sidebar----

# tabs
# sourced in global.R
# ref in db_main_body.R
# menu in db_main_sb.R

#sb_main <- function(id) {
function(id) {
  dashboardSidebar(
    width = 275
    , HTML("&nbsp;&nbsp;<font size=5><b>Steps</b></font>")
    , sidebarMenu(id = id
      , menuItem(text = "About"
               , tabName = "tab_about"
               , icon = icon("house")
                )## menuItem ~ About ~ END
      , menuItem(text = "Import Files"
                 , tabName = "tab_import"
                 , icon = icon("file-arrow-up")
                 , startExpanded = TRUE
                 )## menuItem ~ Import ~ END
      , menuItem(text = "Prepare Input File"
                 , icon = icon("toolbox")
                 , menuSubItem("Within the App: File Builder"
                               , tabName = "tab_filebuilder_taxatrans"
                               , icon = icon("language")
                               )
                 )## menuItem ~ File Builder
      , menuItem(text = "Calculation"
                 , icon = icon("gears")
                 , tabName = "tab_calc"
                 , menuSubItem("BCG Models"
                               , tabName = "tab_calc_bcg"
                               , icon = icon("award"))
                 )## menuItem ~ BCG
      , menuItem(text = "Troubleshooting"
                 , tabName = "tab_troubleshoot"
                 , icon = icon("question")
                 )## menuItem ~ Troubleshooting ~ END
    )## sidebarMenu ~ END
  )## dashboardSidebar ~ END
}## FUNCTION ~ END
