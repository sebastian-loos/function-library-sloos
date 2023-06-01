# install.packages("tidyverse")

library(tidyverse)

get_desc <- function(function_url) {

  # Start by reading a HTML page with read_html():
  website <- read_html(function_url)
  
  # Then find elements that match a css selector or XPath expression
  # using html_elements(). In this example, each <section> corresponds
  # to a different film
  p_elements <- website %>% 
    html_elements("p")
  p_elements
  
  # Then use html_element() to extract one element per film. Here
  # we the title is given by the text inside <h2>
  description <- p_elements[1] %>% 
    html_text2()
  description
}

get_url()

my_url <- "https://www.rdocumentation.org/packages/textreadr/versions/1.2.0/topics/read_html"

get_desc(my_url)
