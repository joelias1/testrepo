# Project-1
## UCD Data Analytics Bootcamp Project 1

### Authors: Josh Lowy, Javier Bustamante, Jo-Ann Elias

***/Charts - Exported charts and static visualizations***

***/Resources - Original and cleaned data csv's***
   
   - CityCounts.ipynb
    
      - Notebook used to further clean data for mapping purposes and added latitude/longitude information
        
      - returns the DrugsbyCityWLatLng.csv
        
   - Accidental_Drug_Related_Deaths_2012-2018.csv from [Data.gov](https://catalog.data.gov/dataset/accidental-drug-related-deaths-january-2012-sept-2015)
    
      - Original data source
        
   - drug_data_death_clean.csv
    
      - Cleaned data created from Cleanup notebook
        
   - pop_towns2018.csv from [CT.gov](https://portal.ct.gov/DPH/Health-Information-Systems--Reporting/Population/Annual-Town-and-County-Population-for-Connecticut)
    
      - Supplemental data for population comparisons
        
   - DrugsbyCityWLatLng.csv
    
      - Cleaned data with latitude longitude information
        
***/Cleanup - Jupyter notebook used to clean the original data***

***Death Count by Drug.ipynb***
   - Code and processing for investigations of number of deaths by drug
   
   - Code and processing for investigations of the responsibility of fentanyl
    
   - returns DrugCountBar.png, DrugPresencePie.png, FentanylRelatedDeathsBar.png, FentanylStackedBar.png, and NumDrugsBar.png
    
***Death Location Weighted Maps.ipynb***
   - Code and processing for visualization of deaths by city and by county
    
   - Includes interactive heatmap of deaths by city and heatmap/static image of deaths by county
   
***Deaths Per Capita.ipynb***
   - Code and processing for visualization of deaths per capita
    
   - returns DeathsPerCapita.png
   
***Heatmap By Drug.ipynb***
   - Code and processing for visualization of deaths by drug by city
    
   - Includes interactive multi-layer heatmap
