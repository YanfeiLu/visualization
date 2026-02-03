library(ggplot2)
library(readxl)
library(grid)

#load the data
df <- read_excel(file.choose(), sheet = "Summary (2010-2020)", skip = 3)
print(colnames(df))


#name and store the year columns
year_cols <- colnames(df)[-1]

#provincial average values
province_6m <- as.numeric(df[22, 2:ncol(df)])  # exclude the Institution column
province_2y <- as.numeric(df[47, 2:ncol(df)])

#UofT values
toronto_6m <- as.numeric(df[14, 2:ncol(df)])
toronto_2y <- as.numeric(df[39, 2:ncol(df)])

#print(province_6m) double-check for accuracy
#print(province_2y)
#print(toronto_6m)
#print(toronto_2y)

#prepare data frames for 6 months
plot_6m_long <- data.frame(Year = rep(year_cols, 2),EmploymentRate = c(province_6m, toronto_6m), 
                           Type = rep(c("Provincial Average", "University of Toronto"), each = length(year_cols)))

#prepare data frames for 2 years
plot_2y_long <- data.frame(Year = rep(year_cols, 2),EmploymentRate = c(province_2y, toronto_2y),
                           Type = rep(c("Provincial Average", "University of Toronto"), each = length(year_cols)))

#plot1: 6 months
p1 <- ggplot(plot_6m_long, aes(x = Year, y = EmploymentRate, fill = Type, color = Type, group = Type)) +
geom_col(data = subset(plot_6m_long, Type == "Provincial Average"), alpha = 1) +          #bars
geom_line(data = subset(plot_6m_long, Type == "University of Toronto"), linewidth = 1) +  #line
geom_point(data = subset(plot_6m_long, Type == "University of Toronto"), size = 3) +      #marker
scale_fill_manual(values = c("Provincial Average" = "steelblue", "University of Toronto" = "orange")) +
scale_color_manual(values = c("Provincial Average" = "steelblue", "University of Toronto" = "orange")) +
scale_y_continuous(limits = c(0, 1)) +
labs(title = "Comparison of University Graduates' Employment Rate: University of Toronto vs Provincial Average 
     \n(left: 6 Months After Graduation; right: 2 Years After Graduation)", 
     x = "Year of Graduation", 
     y = "Employment Rate", 
     caption = "  ") +    #added on to plot 2 to avoid repetition
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

#plot2: 2 years
p2 <- ggplot(plot_2y_long, aes(x = Year, y = EmploymentRate, fill = Type, color = Type, group = Type)) +
geom_col(data = subset(plot_2y_long, Type == "Provincial Average"), alpha = 1) +
geom_line(data = subset(plot_2y_long, Type == "University of Toronto"), linewidth = 1) +
geom_point(data = subset(plot_2y_long, Type == "University of Toronto"), size = 3) +
scale_fill_manual(values = c("Provincial Average" = "steelblue", "University of Toronto" = "orange")) +
scale_color_manual(values = c("Provincial Average" = "steelblue", "University of Toronto" = "orange")) +
scale_y_continuous(limits = c(0, 1)) +
  labs(title = "  \n  \n  ", 
       x = "Year of Graduation", 
       y = "Employment Rate",
       caption = "Source: Ontario’s Open Data Catalogue") + 
  theme_minimal() + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1), 
        plot.caption = element_text(hjust = 1, size = 9, color = "gray50"))

#arrange the two plots side by side
grid.newpage()
pushViewport(viewport(layout = grid.layout(1, 2)))
print(p1, vp = viewport(layout.pos.row = 1, layout.pos.col = 1))
print(p2, vp = viewport(layout.pos.row = 1, layout.pos.col = 2))
