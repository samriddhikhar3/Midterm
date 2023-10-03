  
# 2020, A

# Retrieve ACS data for Philadelphia tracts in 2020
tracts20a <- get_acs(
  geography = "tract",
  variables = c(
    "B25026_001E", # Population
    "B19013_001E", # Median Household Income
    "B25058_001E", # Median Rent
    "B24011_002E", # People in Business, Science, Arts
    "B25071_001E", # Income as Percentage of Rent
    "B25008_002E", # Owner-Occupied Units
    "B25008_003E", # Renter-Occupied Units
    "B07001_032E",  # Same House 75 Years Ago
    "B07001_017E",  # Same House 1 Year Ago
    "B25097_001E", # Median Value of Owner-Occupied Housing Units
    "B25098_001E", # Median Selected Monthly Owner Costs
    "B25061_001E", # Median Selected Monthly Owner Costs as a Percentage of Household Income without a Mortgage
    "B25066_001E", # Median Value of Housing Units without a Mortgage
    "B25062_001E", # Median Selected Monthly Owner Costs without a Mortgage
    "B25064_001E", # Median Gross Rent
    "B25034_002E", # Percentage of Housing Units Built in the Past 5 Years
    "B25034_003E", # Percentage of Housing Units Built in the Past 10 Years
    "B25034_004E", # Percentage of Housing Units Built in the Past 20 Years
    "B25034_011E", # Percentage of Housing Units Built Before 1939
    "B25024_004E", "B25024_005E", "B25024_006E", # Percentage of Housing Units with 3 or More Bedrooms
    "B25040_001E", # Percentage of Housing Units with Central Air Conditioning
    "B15003_022E", # Educational Attainment: Bachelor's Degree
    "B15003_023E", # Educational Attainment: Master's Degree
    "B15003_025E", # Educational Attainment: Doctorate Degree
    "B17001_002E", # Percentage of Population Below the Poverty Level
    "B28002_004E", # Percentage of Housing Units with High-Speed Internet
    "B25044_003E", # Percentage of Housing Units with No Vehicle Available
    "B02001_002E", # Race and Ethnicity: White Alone
    "B02001_003E", # Race and Ethnicity: Black or African American Alone
    "B02001_004E", # Race and Ethnicity: American Indian and Alaska Native Alone
    "B02001_005E", # Race and Ethnicity: Asian Alone
    "B02001_006E", # Race and Ethnicity: Native Hawaiian and Other Pacific Islander Alone
    "B02001_007E", # Race and Ethnicity: Some Other Race Alone
    "B02001_008E", # Race and Ethnicity: Two or More Races
    "B03001_003E", # Hispanic or Latino Origin of Population
    "B25004_001E", # Number of Housing Units
    "B25005_001E", # Median Number of Rooms in Housing Units
    "B25014_001E", # Median Year Structure Built
    "B25037_001E", # Median Year Moved into Residence
    "B25002_002E", # Average Household Size of Owner-Occupied Units
    "B25002_003E", # Average Household Size of Renter-Occupied Units
    "B25041_001E", # Percentage of Housing Units with a Computer
    "B25041_002E", # Percentage of Housing Units with Broadband Internet
    "B25041_003E", # Percentage of Housing Units with DSL Internet
    "B25041_004E", # Percentage of Housing Units with Fiber-Optic Internet
    "B25041_005E", # Percentage of Housing Units with Dial-Up Internet
    "B25041_006E", # Percentage of Housing Units with Other Internet Service
    "B25024_002E", # Percentage of Housing Units with 1 Bedroom
    "B25024_003E", # Percentage of Housing Units with 2 Bedrooms
    "B25036_001E", # Median Number of Rooms in Owner-Occupied Housing Units
    "B25032_001E", # Median Number of Rooms in Owner-Occupied Housing Units
    "B25032_002E", # Median Number of Rooms in Renter-Occupied Housing Units
    "B25058_001E"  # Median Contract Rent
  ),
  year = 2020,
  state = "PA",
  county = "Philadelphia",
  geometry = TRUE,
  output = "wide"
)

# Transform the data to ESRI:102728 projection
tracts20a <- st_transform(tracts20a, 'ESRI:102728')

# Remove unwanted columns
tracts20a <- tracts20a %>%
  dplyr::select(-NAME, -ends_with("M"))
 

  
# 2021, A

# Retrieve ACS data for Philadelphia tracts in 2020
tracts21a <- get_acs(
  geography = "tract",
  variables = c(
    "B25026_001E", # Population
    "B19013_001E", # Median Household Income
    "B25058_001E", # Median Rent
    "B24011_002E", # People in Business, Science, Arts
    "B25071_001E", # Income as Percentage of Rent
    "B25008_002E", # Owner-Occupied Units
    "B25008_003E", # Renter-Occupied Units
    "B07001_032E",  # Same House 75 Years Ago
    "B07001_017E",  # Same House 1 Year Ago
    "B25097_001E", # Median Value of Owner-Occupied Housing Units
    "B25098_001E", # Median Selected Monthly Owner Costs
    "B25061_001E", # Median Selected Monthly Owner Costs as a Percentage of Household Income without a Mortgage
    "B25066_001E", # Median Value of Housing Units without a Mortgage
    "B25062_001E", # Median Selected Monthly Owner Costs without a Mortgage
    "B25064_001E", # Median Gross Rent
    "B25034_002E", # Percentage of Housing Units Built in the Past 5 Years
    "B25034_003E", # Percentage of Housing Units Built in the Past 10 Years
    "B25034_004E", # Percentage of Housing Units Built in the Past 20 Years
    "B25034_011E", # Percentage of Housing Units Built Before 1939
    "B25024_004E", "B25024_005E", "B25024_006E", # Percentage of Housing Units with 3 or More Bedrooms
    "B25040_001E", # Percentage of Housing Units with Central Air Conditioning
    "B15003_022E", # Educational Attainment: Bachelor's Degree
    "B15003_023E", # Educational Attainment: Master's Degree
    "B15003_025E", # Educational Attainment: Doctorate Degree
    "B17001_002E", # Percentage of Population Below the Poverty Level
    "B28002_004E", # Percentage of Housing Units with High-Speed Internet
    "B25044_003E", # Percentage of Housing Units with No Vehicle Available
    "B02001_002E", # Race and Ethnicity: White Alone
    "B02001_003E", # Race and Ethnicity: Black or African American Alone
    "B02001_004E", # Race and Ethnicity: American Indian and Alaska Native Alone
    "B02001_005E", # Race and Ethnicity: Asian Alone
    "B02001_006E", # Race and Ethnicity: Native Hawaiian and Other Pacific Islander Alone
    "B02001_007E", # Race and Ethnicity: Some Other Race Alone
    "B02001_008E", # Race and Ethnicity: Two or More Races
    "B03001_003E", # Hispanic or Latino Origin of Population
    "B25004_001E", # Number of Housing Units
    "B25005_001E", # Median Number of Rooms in Housing Units
    "B25014_001E", # Median Year Structure Built
    "B25037_001E", # Median Year Moved into Residence
    "B25002_002E", # Average Household Size of Owner-Occupied Units
    "B25002_003E", # Average Household Size of Renter-Occupied Units
    "B25041_001E", # Percentage of Housing Units with a Computer
    "B25041_002E", # Percentage of Housing Units with Broadband Internet
    "B25041_003E", # Percentage of Housing Units with DSL Internet
    "B25041_004E", # Percentage of Housing Units with Fiber-Optic Internet
    "B25041_005E", # Percentage of Housing Units with Dial-Up Internet
    "B25041_006E", # Percentage of Housing Units with Other Internet Service
    "B25024_002E", # Percentage of Housing Units with 1 Bedroom
    "B25024_003E", # Percentage of Housing Units with 2 Bedrooms
    "B25036_001E", # Median Number of Rooms in Owner-Occupied Housing Units
    "B25032_001E", # Median Number of Rooms in Owner-Occupied Housing Units
    "B25032_002E", # Median Number of Rooms in Renter-Occupied Housing Units
    "B25058_001E"  # Median Contract Rent
  ),
  year = 2021,
  state = "PA",
  county = "Philadelphia",
  geometry = TRUE,
  output = "wide"
)

# Transform the data to ESRI:102728 projection
tracts21a <- st_transform(tracts21a, 'ESRI:102728')

# Remove unwanted columns
tracts21a <- tracts21a %>%
  dplyr::select(-NAME, -ends_with("M"))
 


  

# Retrieve ACS data for Philadelphia tracts in 2020
tracts20b <- get_acs(
  geography = "tract",
  variables = c(
    "B25059_001E", # Median Gross Rent as a Percentage of Household Income
    "B25056_001E", # Median Rent as a Percentage of Household Income
    "B25063_001E", # Median Value of Housing Units with a Mortgage
    "B25060_001E", # Median Selected Monthly Owner Costs as a Percentage of Household Income with a Mortgage
    "B25097_001E", # Median Value of Owner-Occupied Housing Units
    "B25098_001E", # Median Selected Monthly Owner Costs
    "B25061_001E", # Median Selected Monthly Owner Costs as a Percentage of Household Income without a Mortgage
    "B25066_001E", # Median Value of Housing Units without a Mortgage
    "B25062_001E"  # Median Selected Monthly Owner Costs without a Mortgage
  ),
  year = 2020,
  state = "PA",
  county = "Philadelphia",
  geometry = TRUE,
  output = "wide"
)

# Transform the data to ESRI:102728 projection
tracts20b <- st_transform(tracts20b, 'ESRI:102728')

# Remove unwanted columns
tracts20b <- tracts20b %>%
  dplyr::select(-NAME, -ends_with("M"))
 


  

# Retrieve ACS data for Philadelphia tracts in 2020
tracts21b <- get_acs(
  geography = "tract",
  variables = c(
    "B25059_001E", # Median Gross Rent as a Percentage of Household Income
    "B25056_001E", # Median Rent as a Percentage of Household Income
    "B25063_001E", # Median Value of Housing Units with a Mortgage
    "B25060_001E", # Median Selected Monthly Owner Costs as a Percentage of Household Income with a Mortgage
    "B25097_001E", # Median Value of Owner-Occupied Housing Units
    "B25098_001E", # Median Selected Monthly Owner Costs
    "B25061_001E", # Median Selected Monthly Owner Costs as a Percentage of Household Income without a Mortgage
    "B25066_001E", # Median Value of Housing Units without a Mortgage
    "B25062_001E"  # Median Selected Monthly Owner Costs without a Mortgage
  ),
  year = 2021,
  state = "PA",
  county = "Philadelphia",
  geometry = TRUE,
  output = "wide"
)

# Transform the data to ESRI:102728 projection
tracts21b <- st_transform(tracts21b, 'ESRI:102728')

# Remove unwanted columns
tracts21b <- tracts21b %>%
  dplyr::select(-NAME, -ends_with("M"))
 

  
# Define a function to write GeoJSON files
write_geojson <- function(df, filename) {
  # Convert the DataFrame to an sf object
  df_sf <- st_as_sf(df)
  
  # Write the sf object to a GeoJSON file
  st_write(df_sf, filename)
}

# Specify the paths and filenames for each DataFrame
tracts20a_file <- "data/tracts20a.geojson"
tracts20b_file <- "data/tracts20b.geojson"
tracts21a_file <- "data/tracts21a.geojson"
tracts21b_file <- "data/tracts21b.geojson"

# Call the function to write each DataFrame to a GeoJSON file
write_geojson(tracts20a, tracts20a_file)
write_geojson(tracts20b, tracts20b_file)
write_geojson(tracts21a, tracts21a_file)
write_geojson(tracts21b, tracts21b_file)
 
  

test <- st_read("data/tracts20a.geojson")

 
  
# Assuming you have an sf object named geojson_sf

# Specify the path and filename for the CSV file
csv_file <- "data/data_dictionary.csv"

# Write the data frame to a CSV file
write.csv(acs_variable_list.2020, file = csv_file, row.names = FALSE)

 