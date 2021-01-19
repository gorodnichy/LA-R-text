
#1.1 https://campus.datacamp.com/courses/working-with-web-data-in-r/downloading-files-and-using-api-clients ----

# Load pageviews
library(pageviews)

# Get the pageviews for "Hadley Wickham"
hadley_pageviews <- article_pageviews(project = "en.wikipedia", article = "Hadley Wickham")

# Examine the resulting object
str(hadley_pageviews)
hadley_pageviews


####
# 
# # Load birdnik
# library(birdnik)
# 
# # Get the word frequency for "vector", using api_key to access it
# vector_frequency <- word_frequency(key = api_key, words = "vector")


# 1.2 https://campus.datacamp.com/courses/working-with-web-data-in-r/using-httr-to-interact-with-apis-directly





# 1.3 https://campus.datacamp.com/courses/working-with-web-data-in-r/handling-json-and-xml?ex=2

get_revision_history <- function(article_title){
  # Get raw revision response
  rev_resp <- rev_history(article_title, format = "xml")
  
  # Turn the content() of rev_resp into XML
  rev_xml <- read_xml(content(rev_resp, "text"))
  
  # Find revision nodes
  rev_nodes <- xml_find_all(rev_xml, "//rev")
  
  # Parse out usernames
  user <- xml_attr(rev_nodes, "user")
  
  # Parse out timestamps
  timestamp <- readr::parse_datetime(xml_attr(rev_nodes, "timestamp"))
  
  # Parse out content
  content <- xml_text(rev_nodes)
  
  # Return data frame
  data.frame(user = user,
             timestamp = timestamp,
             content = substr(content, 1, 40))
}

# Call function for "Hadley Wickham"
get_revision_history("Hadley Wickham")




# 1.4 https://campus.datacamp.com/courses/working-with-web-data-in-r/web-scraping-with-xpaths?ex=1


# 1.5 https://campus.datacamp.com/courses/working-with-web-data-in-r/css-web-scraping-and-final-case-study?ex=6 ----

if (T) {
  # Load httr
  library(httr)
  
  # The API url
  base_url <- "https://en.wikipedia.org/w/api.php"
  # https://en.wikipedia.org/w/api.php?action=parse&page=Hadley&format=xml
  
  # Set query parameters
  query_params <- list(action = "parse", 
                       page = "Hadley Wickham", 
                       format = "xml")
  
  # Get data from API
  resp <- GET(url = base_url, query = query_params)
  
  # Parse response
  resp_xml <- content(resp)
  
  
  
  
  
  # Load rvest
  library(rvest)
  
  # Read page contents as HTML
  page_html <- read_html(xml_text(resp_xml))
  
  # Extract infobox element
  infobox_element <- html_node(x = page_html, css =".infobox")
  
  # Extract page name element from infobox
  page_name <- html_node(x = infobox_element, css = ".fn")
  
  # Extract page name as text
  page_title <- html_text(page_name)
  
  
  
  
  # Your code from earlier exercises
  wiki_table <- html_table(infobox_element)
  colnames(wiki_table) <- c("key", "value")
  cleaned_table <- subset(wiki_table, !key == "")
  
  # Create a dataframe for full name
  name_df <- data.frame(key = "Full name", value = page_title)
  
  # Combine name_df with cleaned_table
  wiki_table2 <- rbind(name_df, cleaned_table)
  
  # Print wiki_table
  wiki_table2
  
  
  
  
  library(httr)
  library(rvest)
  library(xml2)
  
  get_infobox <- function(title){
    base_url <- "https://en.wikipedia.org/w/api.php"
    
    # Change "Hadley Wickham" to title
    query_params <- list(action = "parse", 
                         page = title, 
                         format = "xml")
    
    resp <- GET(url = base_url, query = query_params)
    resp_xml <- content(resp)
    
    page_html <- read_html(xml_text(resp_xml))
    infobox_element <- html_node(x = page_html, css =".infobox")
    page_name <- html_node(x = infobox_element, css = ".fn")
    page_title <- html_text(page_name)
    
    wiki_table <- html_table(infobox_element)
    colnames(wiki_table) <- c("key", "value")
    cleaned_table <- subset(wiki_table, !wiki_table$key == "")
    name_df <- data.frame(key = "Full name", value = page_title)
    wiki_table <- rbind(name_df, cleaned_table)
    
    wiki_table
  }
  
  # Test get_infobox with "Hadley Wickham"
  get_infobox(title = "Hadley_Wickham")
  get_infobox(title = "Hadley Wickham")
  # get_infobox(title = "Hadley") 
  
  # Try get_infobox with "Ross Ihaka"
  get_infobox(title = "Ross Ihaka")
  
  # Try get_infobox with "Grace Hopper"
  get_infobox(title = "Grace Hopper")
  
  
}

# 2. from github ------------------------------------------------------

# 2.1.  List_of_United_States_presidential-----


if (T) {
  library(rvest)    
  wikiURL <- 'https://en.wikipedia.org/wiki/List_of_United_States_presidential_elections_by_popular_vote_margin'
  
  ## Grab the tables from the page and use the html_table function to extract the tables.
  ## You need to subset temp to find the data you're interested in (HINT: html_table())
  
  temp <- wikiURL %>% 
    read_html %>%
    html_nodes("table")
  # 
  
}

# # 2.2 RSelenium ------
# 
# 
# # Simulate to scrape English soccer matches (Static webpage, we need RSelenium package for dynamic webpage)
# source('C:/Users/Scibrokes Trading/Documents/GitHub/englianhu/Soccer-League-Web-Scraping/function/downloadMatch.R')
# URL = "http://app.en.gooooal.com/soccer/statistic/standing.do?lid=4"
# eng2012 = downloadMatch(URL, year = 2012)
# eng2013 = downloadMatch(URL, year = 2013, timeout=30)
# 
# 
# 
# # https://github.com/LucasMantle/WebScraping-for-Business/blob/master/Antonioli.R
# 
# 
# library(rvest)
# library(stringr)
# library(dplyr)
# 
# #Matches Fashion Mens Sale Items. 
# 
# #Pre defines data set with the variable names
# all_data<-data.frame(brand = character(), desc = character(), pricedown = character(),save=character()) 
# 
# #Website we are scraping data from - does not include page number as we iterate through them
# website = 'https://www.antonioli.eu/en/GB/men/section/sale?page='
# 
# 
# for (i in 1:2){
#   
#   #Adds page number to website url - this is the page we are accessing in the loop
#   page_index = paste(website,i,sep='')
#   page_data = read_html(page_index)
#   
#   
#   pages_data = data.frame(brand=html_text(html_nodes(page_data,'div.brand-name')), 
#                           desc=html_text(html_nodes(page_data,'.category-and-season')),
#                           pricedown = html_text(html_nodes(page_data,'.discount_rate')),
#                           save = html_text(html_nodes(page_data,'.discount_rate')))
#   
#   
#   #Appends the data from the page to the data set of all page data
#   all_data = rbind(all_data,pages_data)
#   
# }

# https://github.com/Georgits/datacamp/blob/master/01_R/Working_with_Web_Data_in_R/Working_with_Web_Data_in_R.R


