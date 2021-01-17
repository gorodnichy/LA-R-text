# LA-R-text

## *Learn and Apply Text Analysis in R, including from Web*

(Currently, mainly for myself, so not yet well organized or documented)  

Collection of R libraries and resources for text analysis (mining) and vizualization,  
including processing of multilingual texts (in UTF-8,  specifically Russian and French)  

Easy to run codes provided, including for getting texts from web and spitting them by sections for easier section-by-section analysis provided.

Books: 
-  https://www.tidytextmining.com

Text mining packages (used in tidytext book)
- tm
- quanteda 
- lexicon?
- qdap
- syuzhet
- https://github.com/trinker/sentimentr ** <-- Vinette!
it Compares sentimentr, syuzhet, meanr, and Stanford

https://www.datacamp.com/courses/intro-to-text-mining-bag-of-words
https://www.datacamp.com/courses/string-manipulation-in-r-with-stringr
https://www.datacamp.com/courses/sentiment-analysis-in-r-the-tidy-way - by Julia Silge - Ch1 DONE

Includes: 
- various sentiment/emotion analysis techniques.
- compileable code from Vignettes from udpipe and quanteda-
All redone with Russian texts.

Based on:
- http://kenbenoit.net/pdfs/text_analysis_in_R.pdf
    - https://docs.quanteda.io/articles/quickstart.html
- https://towardsdatascience.com/easy-text-analysis-on-abc-news-headlines-b434e6e3b5b8
    - https://github.com/bnosac/udpipe/tree/master/vignettes
- https://cran.r-project.org/web/packages/spacyr/README.html

- https://www.tidytextmining.com/
    - https://www.datacamp.com/community/tutorials/sentiment-analysis-R
    

See also https://github.com/gorodnichy/LA-R-Keras for using Neural Network (Tensorflow) based techniques for text clasification.


Plagiarism detection:
- https://cran.r-project.org/web/packages/RNewsflow/vignettes/RNewsflow.html

-  https://cran.r-project.org/web/packages/corpustools/vignettes/corpustools.html


Data-sets:
- https://cran.r-project.org/web/packages/Rpoet - Wrapper for the 'PoetryDB' API <http://poetrydb.org>
- https://cran.r-project.org/web/packages/gutenbergr/vignettes/intro.html - Wrapper for  http://www.gutenberg.org/
- https://cran.rstudio.com/web/packages/rplos/index.html

***
You may also find these resources useful:

- *CRAN The Natural Language Processing* View (https://cran.r-project.org/web/views/NaturalLanguageProcessing.html) suggests many R packages related to text mining, especially around the tm package.

- You could match the wikipedia column in gutenberg_author to Wikipedia content with the WikipediR package - https://cran.r-project.org/web/packages/WikipediR/index.html or to pageview statistics with the wikipediatrend package - https://cran.r-project.org/web/packages/wikipediatrend/index.html
- If you’re considering an analysis based on author name, you may find the humaniformat (for extraction of first names) and gender (prediction of gender from first names) packages useful. (Note that humaniformat has a format_reverse function for reversing “Last, First” names).


*** 

- https://cran.r-project.org/web/views/WebTechnologies.html

- https://github.com/ropensci/opendata

Processing Texts from Social media

- Facebook: Rfacebook provides an interface to the Facebook API. (K)
- Google+: plusser has been designed to to facilitate the retrieval of Google+ profiles, pages and posts. It also provides search facilities. Currently a Google+ API key is required for accessing Google+ data. tuber provides bindings for YouTube API. Only on Github for now. (K)
- RedditExtractoR can retrieve data from the Reddit API.
- Rlinkedin: is an R client for the LinkedIn API.
- tumblr: tumblR (GitHub): R client for the Tumblr API ( https://www.tumblr.com/docs/en/api/v2). Tumblr is a microblogging platform and social networking website https://www.tumblr.com. (K)
- Twitter: RTwitterAPI (not on CRAN) and twitteR provide an interface to the Twitter web API. streamR: This package provides a series of functions that allow R users to access Twitter's filter, sample, and user streams, and to parse the output into data frames. OAuth authentication is supported. (K) Additionally, RKlout is an interface to Klout API v2. It fetches Klout Score for a Twitter Username/handle in real time. Klout is a silly ranking of Twitter influence.
- SocialMediaLab provides a convenient wrapper around many other social media clients and enables the construction of network structures from those data.
- SocialMediaMineR is an analytic tool that returns information about the popularity of a URL on social media sites.



https://cran.r-project.org/web/views/:

- https://cran.r-project.org/web/views/WebTechnologies.html
- https://cran.r-project.org/web/views/NaturalLanguageProcessing.html




