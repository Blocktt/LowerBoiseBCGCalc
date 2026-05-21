# LowerBoiseBCGCalc
BCGCalc for the Lower Boise River

# Shiny App
The shiny app is hosted on ShinyApps.io at the link below.

https://tetratech-wtr-wne.shinyapps.io/LowerBoiseBCGCalc/

The Shiny app can be run from R console using the shiny package without 
installing the package.

if(!require(shiny)){install.packages("shiny")}
shiny::runGitHub(repo = "LowerBoiseBCGCalc",
                 username = "Blocktt",
                 ref = "main",
                 subdir = "inst/apps/LowerBoiseBCGCalc"
                 )
