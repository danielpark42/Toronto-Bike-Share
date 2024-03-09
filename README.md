# Toronto-Bike-Share

## About Dataset
## Context

This data set is a cleaned version of the public [Toronto Bikeshare Ridership Data](https://open.toronto.ca/dataset/bike-share-toronto-ridership-data/) posted on Toronto Open Data Portal.

## Content

Inside is information for all riderships for Toronto's public bike share from 2019-2024. There is data on time, location, identifiers and types of users for all rides.
The query results and data was used to create a slideshow presentation and visualized with Tableau. The slideshow can be found [here].

## Acknowledgements

I do not own the data. The dataset was directly downloaded from the City of Toronto Open Data Portal.

## Inspiration

The inspiration for using this dataset came from heavily using the Bike Pass in the summer of 2023, and wanted to do an analysis of the system prior to the summer of 2024. 
I will also be using this data to ~~convince~~ educate my friends and family about the public bikes.

## Column Definition 
- **Trip_ID**              Unique ID number for the trip
- **Trip_Duration**        Duration of the trip
- **Start_Station_ID**     Unique ID number for the docking station for the start of the trip
- **Start_Time**           Date-time for the start of the trip
- **Start_Station_Name**   Name of docking station for the start of the trip
- **End_Station_ID**       Unique ID number for the docking station for the end of the trip
- **End_Time**             Date-time for the end of the trip
- **End_Station_Name**     Name of docking station for the end of the trip
- **Bike_ID**              Unique ID number for the bike
- **User_Type**            User type; membership detail or casual rider


## Methodology

### How do you automate the importing of data into a database
For this project there are 53 files to import into PostgreSQL, and that would be very time consuming process.
The plan is to create a python script to iteratively import all of the csv files in a folder.

### How do you get a list of all the file names in a folder?
'CTRL + A' to select all files in the folder, and then 'ALT + SHIFT + right-click', then select 'copy as path'
Paste the path to an empty spreadsheet to get a list of all the file names

### Creating the script!
Using Visual Studio Code, we will create a *For-Loop* to iterate through the files in the folder.
Passwords and filespath names will not be included for privacy/security reasons.

