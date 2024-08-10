# function to make a pdf file
bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book")

# function to render entire book as a html site
bookdown::render_book("index.Rmd", "bookdown::gitbook")

