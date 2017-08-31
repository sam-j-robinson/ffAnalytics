library("ffanalytics")
library(readr)

pos_vec = c("QB", "RB", "WR", "TE", "K", "DL", "LB", "DB")
starters_vec = c(12, 24, 36, 12, 12, 24, 24, 24)
drafted_first100 = c(13, 27.5, 32.75, 10, 1.25, 5.25, 7.25, 3)
analyst_vec = c(-1, 3, 4, 5, 6, 7, 9, 19, 20, 28)
adp_sources =  c("FFC", "MFL")
projDir = "/Users/figaro/Desktop/ffAnalytics"
setwd(projDir)

if(file.exists(paste0(projDir, "/projectedPoints.csv")) != TRUE){
  data_scrape = scrapeData=runScrape(week = 0, season = 2017, analysts = analyst_vec, positions = pos_vec)
  getProjections(data_scrape, avgMethod = "average", leagueScoring = userScoring, vorBaseline, vorType, teams = 12, format = "standard", mflMocks = -1, mflLeagues = -1, adpSources = adp_sources)
}
projectedPoints <- read_csv("~/Desktop/ffAnalytics/projectedPoints.csv")
position_frame = data.frame(starters_vec, drafted_first100)
