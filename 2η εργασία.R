agroDataGen <- function(num_fields, num_crops, total_area, total_production) {
  crops <- c("Wheat", "Corn", "Barley", "Sunflower", "Cotton", "Tomato", "Potato", "RIce" )
  field_codes <- paste0("F", 1:num_fields)
  total_rows <- num_fields * num_crops
  random_areas <- runif(total_rows)
  random_productions <- runif(total_rows)
 normalized_areas <- random_areas / sum(random_areas) * total_area
 normalized_producitons <- random_productions / sum(random_productions) * total_production
 result <- data.frame(Field = character (), Crop = character(), Area = numeric(), stringsAsFactors = FALSE)
 index <- 1
 for (f in field_codes) {
   selected_crops <- sample(crops, num_crops, replace = FALSE)
   for (crop in selected_crops) {
     result <- rbind(result, data.frame(
       Field = f,
       Crop = crop,
       Area = normalized_areas[index],
       Production = normalized_producitons[index],
       stringsAsFactors = FALSE
      
     ))
     index <- index + 1
     
   }
   
 }
 return(result)
}
