# Data Visualization

## Assignment 3 visualization 1

### Link to dataset: 
https://data.ontario.ca/dataset/ontario-university-graduate-survey/resource/34514ae3-927c-4510-a727-f18c4177f3d8


- For each visualization, describe and justify: 
    > What software did you use to create your data visualization?

        I used Python and the Matplotlib library.


    > Who is your intended audience? 

        Prospective students and graduates as well as their families.
    

    > What information or message are you trying to convey with your visualization? 

        This visualization is illustrating the comparison of the provincial average employment rates for university graduates in Ontario, measured six months and two years after graduation, across the decade from 2010 to 2020.


    > What aspects of design did you consider when making your visualization? How did you apply them? With what elements of your plots? 

        The visualization was designed to ensure clarity and readability. A line graph was chosen to effectively show changes in employment rates over time and enable straightforward comparisons. Different line colours and markers, clear labels, and grid lines were used improve interpretability. The source of data was also provided at the bottom of the graph to enhance transparency and credibility.

    
    > How did you ensure that your data visualizations are reproducible? If the tool you used to make your data visualization is not reproducible, how will this impact your data visualization? 

        I ensured that my data visualization is reproducible by creating it using Python. The use of code-based data loading, processing, and visualization allow the graph to be reproduced as long as the same dataset and environment are accessible. Due to time constraints, two limitations affected full reproducibility from the raw file downloaded from the source. First, the original dataset was downloaded in .xlsx format. Because of technical issues with reading the file in Python, I converted the data into a CSV format prior to analysis. Second, the employment rate values were originally recorded as percentages with percent symbols. Instead of converting these values through Python, I converted the percentages to numeric values directly within the spreadsheet before importing the data. The cleaned spreadsheet used for analysis is provided in the folder. Although these two preprocessing steps were performed directly with the spreadsheet, all subsequent data processing and visualization were conducted using code. As a result, the visualization remains reproducible, but full reproducibility from the original raw .xlsx file is limited. If the visualization were to be updated or reused in the future, I will make sure these manual preprocessing steps are well documented or automated to ensure full reproducibility.

    
    > How did you ensure that your data visualization is accessible?  

        The graph uses a clean layout, with a clear typeface and appropriate font sizes for the title, labels, and legend to ensure that all text elements are easy to read. All visual elements are clearly identified through the legend. The use of orange and blue colours, as well as the distinct marker shapes allow easy comparisons between data points while being accessible for individuals with colour-blindness.
    

    > Who are the individuals and communities who might be impacted by your visualization?
      
        This visualization primarily impacts prospective university students and recent graduates as well as their families, by providing insights into employment outcomes 6 months and 2 years after graduating from an Ontario university. This visualization can help set realistic expections about the transition from university to the worforce. It can also help families to better understand the context of the labor market, enabling them to provide more informed guidance and support to the students/graduates.  


    > How did you choose which features of your chosen dataset to include or exclude from your visualization? 

        The values of each university and year of graduation were provided in the original dataset in addition to the employment rates for the province. The institutional details were excluded in this visualization to reduce cognitive load. Including these details would have made the visualization difficult to interpret and could distract the viewer from the main message that the graph is trying to convey. By including the provincial trends only, the visualization remains clear and effectively highlights the overall employment outcomes for Ontario university graduates.
    

    > What ‘underwater labour’ contributed to your final data visualization product?

        This includes the government agencies responsible for designing the survey, collecting data, managing data, and ensuring data accuracy. This also includes everyone who manages the Ontario’s Open Data Catalogue and makes this data available to the public. In addition, the participation of university graduates who responded to surveys as well as the staff at the universities played significant roles. Lastly, everyone who worked on creating and managing the software tools used during the processes also contributed to the production of the dataset and visualization.


- This assignment is intentionally open-ended - you are free to create static or dynamic data visualizations, maps, or whatever form of data visualization you think best communicates your information to your audience of choice! 
- Total word count should not exceed **(as a maximum) 1000 words** 
 

