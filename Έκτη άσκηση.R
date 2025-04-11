find_even_numbers <- function(numbers) {
  return(unique(numbers[numbers %% 2 == 0]))
}