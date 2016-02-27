#Antoinette Mills
#Exploratory Data Analysis - Project 2 
#Question 2 - Plot 2

NEI <- readRDS("~/GitHub/Exploratory_Data/ExploratoryData_Project2/summarySCC_PM25.rds")
SCC <- readRDS("~/GitHub/Exploratory_Data/ExploratoryData_Project2/Source_Classification_Code.rds")
NEI_sampling <- NEI[sample(nrow(NEI), size=5000, replace=F), ]
MD <- subset(NEI, fips=='24510')
png(filename='~/GitHub/Exploratory_Data/ExploratoryData_Project2/plot2.png')
barplot(tapply(X=MD$Emissions, INDEX=MD$year, FUN=sum), 
        main='Total Emission in Baltimore City, MD', 
        xlab='Year', ylab=expression('PM'[2.5]))

dev.off()