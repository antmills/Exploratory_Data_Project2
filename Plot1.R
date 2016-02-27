#Antoinette Mills
#Exploratory Data Analysis - Project 2 
#Question 1 - Plot 1


NEI <- readRDS("~/GitHub/Exploratory_Data/ExploratoryData_Project2/summarySCC_PM25.rds")
SCC <- readRDS("~/GitHub/Exploratory_Data/ExploratoryData_Project2/Source_Classification_Code.rds")
NEI_sampling <- NEI[sample(nrow(NEI), size=2000, replace=F), ]
Emissions <- aggregate(NEI[, 'Emissions'], by=list(NEI$year), FUN=sum)
Emissions$PM <- round(Emissions[,2]/1000,2)

png(filename='~/GitHub/Exploratory_Data/ExploratoryData_Project2/plot1.png')

barplot(Emissions$PM, names.arg=Emissions$Group.1, 
        main=expression('Total Emission of PM'[2.5]),
        xlab='Year', ylab=expression(paste('PM', ''[2.5], ' in Kilotons')))

dev.off()

