# initializing

# # install packages (if needed)
# install.packages("tidyverse")

# load packages
library(tidyverse) #tibble is included...

# Define a function
my_function <- function(x) {
  x^2
}

# Get the name of the function
function_name_fun <- function(my_function){
  function_name <- deparse(substitute(my_function))
  cat("Function name:", function_name, "\n") 
}

# Get the package name of the function
package_name_fun <- function(my_function){
  package_info <- getAnywhere(my_function)
  packageName <- package_info$name
  cat("Package name:", packageName, "\n")
}

# Get the description of the function
?my_function

funName <- function_name_fun(tibble)
pkgName <- package_name_fun(tibble)


function_library <- tibble(funName, )



add_data <- function(my_function){
  
  # Get the name of the function
  function_name <- deparse(substitute(my_function))
  cat("Function name:", function_name, "\n")

  # Get the package name of the function
  package_info <- getAnywhere(my_function)
  package_name <- packageName(package_info$name)
  cat("Package name:", package_name, "\n")
}
  
  function_library <- add_row(function_name, package_name, description, URL, category)


