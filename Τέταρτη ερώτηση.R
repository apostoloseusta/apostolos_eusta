word_count <- function(sentence) {
  words <- strsplit(sentence, " ")[[1]]
  return(length(words))
}