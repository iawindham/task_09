#' An Insult Function
#'
#' This function asks the user how they are feeling and insults them based on their response.
#' @param prompt Asks the user how they are doing.  Will respond with different insults if user responds with "Well" or "well" or "Poorly" or "poorly".  Any other input produces a third response.
#' @keywords insult
#' @examples
#' insult_function()

insult_function <- function(prompt = readline('How are you doing(Well or Poorly?): ')) {
  if (prompt == 'Well' | prompt == 'well') {
    print("What a tool.  You smell.")
  }
  else if (prompt == "poorly" | prompt == "Poorly") {
    print("Who cares?")
  }
  else {
	print("Are you stupid?")
	}
}