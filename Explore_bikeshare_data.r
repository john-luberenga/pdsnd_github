
ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')



ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')
library(ggplot2)

#function to generate the total travel time in New York
NewYork = sum(ny$Trip.Duration, na.rm=TRUE)

#Using ggplot2 functionality to plot a graph for New York total travel time
ggplot(ny, aes(x = NewYork)) +
    geom_histogram(color = 'black' ,fill = 'grey', binwidth = 30) +
    labs(x = 'New York', y = 'Count', title = 'Total Travel Time for Users in New York') +
    geom_vline(aes(xintercept = sum(ny$Trip.Duration, na.rm=TRUE), color = 'sum'), show.legend = TRUE, size = 2) +
    scale_color_manual(name = 'statistics', values = c(sum = 'blue'))


#function to generate the total travel time in Washington
Washington = sum(wash$Trip.Duration, na.rm=TRUE)

#Using ggplot2 functionality to plot a graph for Washington total travel time
ggplot(ny, aes(x = Washington)) +
    geom_histogram(color = 'black' ,fill = 'grey', binwidth = 30) +
    labs(x = 'New York', y = 'Count', title = 'Total Travel Time for Users in Washington') +
    geom_vline(aes(xintercept = sum(wash$Trip.Duration, na.rm=TRUE), color = 'sum'), show.legend = TRUE, size = 2) +
    scale_color_manual(name = 'statistics', values = c(sum = 'blue'))

#function to generate the total travel time in Chicago
Chicago = sum(chi$Trip.Duration, na.rm=TRUE)

#Using ggplot2 functionality to plot a graph for Chicago total travel time
ggplot(ny, aes(x = Chicago)) +
    geom_histogram(color = 'black' ,fill = 'grey', binwidth = 30) +
    labs(x = 'New York', y = 'Count', title = 'Total Travel Time for Users in Chicago') +
    geom_vline(aes(xintercept = sum(chi$Trip.Duration, na.rm=TRUE), color = 'sum'), show.legend = TRUE, size = 2) +
    scale_color_manual(name = 'statistics', values = c(sum = 'blue'))




library(ggplot2)
ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

#function to generate the Average travel time in New York
NewYork = mean(ny$Trip.Duration, na.rm=TRUE)

#Using ggplot2 functionality to plot a graph for Users' average travel time in New York
ggplot(aes(x=NewYork), data=ny) + ggtitle('The Average Travel Time for Users in NewYork') +
    geom_histogram(binwidth=30,color="black", fill="darkgrey", position="identity", alpha=0.5) + 
    geom_vline(aes(xintercept = mean(ny$Trip.Duration, na.rm=TRUE), color = 'mean'), show.legend = TRUE, size = 2) +
    geom_vline(aes(xintercept = median(ny$Trip.Duration, na.rm=TRUE), color = 'median'), show.legend = TRUE, size = 2) +
    scale_color_manual(name = 'statistics', values = c(mean = 'red', median = 'blue'))


#function to generate the Average travel time in Washington
Washington = mean(wash$Trip.Duration, na.rm=TRUE)
#Using ggplot2 functionality to plot a graph for Users' average travel time in Washington
ggplot(aes(x=Washington), data=wash) + ggtitle('The Average Travel Time for Users in Washington') +
    geom_histogram(binwidth=30,color="black", fill="darkgrey", position="identity", alpha=0.5) +
    geom_vline(aes(xintercept = mean(wash$Trip.Duration, na.rm=TRUE), color = 'mean'), show.legend = TRUE, size = 2) +
    geom_vline(aes(xintercept = median(wash$Trip.Duration, na.rm=TRUE), color = 'median'), show.legend = TRUE, size = 2) +
    scale_color_manual(name = 'statistics', values = c(mean = 'red', median = 'blue'))


#function to generate the Average travel time in Chicago
Chicago = mean(chi$Trip.Duration, na.rm=TRUE)
#Using ggplot2 functionality to plot a graph for Users' average travel time in Chicago
ggplot(aes(x=Chicago), data=chi) + ggtitle('The Average Travel Time for Users in Chicago') +
    geom_histogram(binwidth=30,color="black", fill="darkgrey", position="identity", alpha=0.5) +
    geom_vline(aes(xintercept = mean(chi$Trip.Duration, na.rm=TRUE), color = 'mean'), show.legend = TRUE, size = 2) +
    geom_vline(aes(xintercept = median(chi$Trip.Duration, na.rm=TRUE), color = 'median'), show.legend = TRUE, size = 2) +
    scale_color_manual(name = 'statistics', values = c(mean = 'red', median = 'blue'))






ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

library(ggplot2)
#function to generate the Most Common End Station in New York
ny_sum = summary(ny$End.Station)

#Using ggplot2 functionality to plot a graph for the Most Common End Station in New York
    ggplot(ny, aes(x=ny_sum) + 
    geom_point(color = "blue") + labs(x = "New York", y = "Count") + 
    geom_smooth(method="lm", color="black", fill = "darkgrey") + 
    ggtitle("Most Common End Station in New York") 

#function to generate the Most Common End Station in Washington           
wash_sum = summary(wash$End.Station)

#Using ggplot2 functionality to plot a graph for the Most Common End Station in Washington
ggplot(ny, aes(x=wash_sum) + 
    geom_point(color = "blue") + labs(x = "Washington", y = "Count") + 
    geom_smooth(method="lm", color="black", fill = "darkgrey") + 
    ggtitle("Most Common End Station in Washington") 

#function to generate the Most Common End Station in Chicago
chi_sum = summary(chi$End.Station)
       
#Using ggplot2 functionality to plot a graph for the Most Common End Station in Chicago
ggplot(ny, aes(x=chi_sum) + 
    geom_point(color = "blue") + labs(x = "Chicago", y = "Count") + 
    geom_smooth(method="lm", color="black", fill = "darkgrey") + 
    ggtitle("Most Common End Station in Chicago")

head(ny_sum, 1)

head(wash_sum, 1)

head(chi_sum, 1)




system('python -m nbconvert Explore_bikeshare_data.ipynb')
