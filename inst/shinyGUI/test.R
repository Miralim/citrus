rm(list=ls(all=T))
library("citrus")
library("shiny")
library("brew")
#dataDir = "/Users/rbruggner/Desktop/notime/citrusTestRun/"
source("/Users/rbruggner/Desktop/work/citrus/R/citrus.launchUI.R")
source("/Users/rbruggner/Desktop/work/citrus/R/citrus.featureFunctions.R")
source("/Users/rbruggner/Desktop/work/citrus/R/citrus.classModel.R")


#fileList = list.files(dataDir,pattern=".fcs",ignore.case=T)
#fileGroupAssignments = rep("",length(fileList))  
#fileCols = lapply(fileList,citrus.getClusterCols,dataDir=dataDir)


result = tryCatch({
  runApp(appDir="/Users/rbruggner/Desktop/work/citrus/inst/shinyGUI",launch.browser=T)
}, warning = function(w) {
   cat(as.character(w))
}, error = function(e) {
    stop(paste("Unexpected Error:",e))
}, finally = {
  
})

