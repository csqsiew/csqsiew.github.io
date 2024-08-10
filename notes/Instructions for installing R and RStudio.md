---
title: Instructions for installing R and RStudio
created_at: 2024-01-15T04:11:18.558Z
updated_at: 2024-01-15T04:52:55.701Z
uuid: 48cd2180-ee75-4a55-a233-67885577abe1
---

# R and RStudio 

It is important to note that R and RStudio are two different things that you have to install. R is the programming language itself (like Python or C++) whereas RStudio is the software application that we will use to interact with R. RStudio is known as an *integrated development environment* (other examples of IDEs are Visual Studio and PyCharm). 

**FIRST**, install R from [this website](https://www.r-project.org/). Note that you will have to choose a CRAN mirror that you wish to download R from - which one you pick does not matter. I typically choose one from nearby regions (Taiwan, Korea, Japan, Indonesia, or Worldwide). Download the latest version. 

THEN, install RStudio from [this website](https://posit.co/). Download the right RStudio Desktop for your OS. ([link](https://posit.co/download/rstudio-desktop/))

Note that both R and RStudio are free downloads. You should not need to pay for anything. 

# RStudio Cloud

If you do not have a computer/laptop that you are able to install programs on, you can try using [RStudio in the cloud](https://posit.cloud/). Basically, you can run RStudio on the internet without downloading anything into your computer. 

The main consideration is that the free version has a cap on usage. Below is from their website:

"Project hours represent how much time a project is open or running with a particular configuration, computed as (RAM + CPUs allocated) / 2 x hours. For example, working with a project for 1 hour with 1 GB of RAM and 1 CPU allocated consumes 1 project hour.

The Cloud Free plan has a cap each month of 25 project hours. Once you reach the cap, you can no longer open or create projects during your current month.

If you need additional time, consider our Plus plan. For $5 / month, get 75 project hours per month - and you can use additional hours as needed for 10¢ per hour."


*Cynthia's comments: I would not recommend this unless you really need it. This is because it is quite hard to estimate how many project hours you will consume because it depends not just on time, but whether you need to ramp up the RAM in order for R to deal with larger networks or for the computation of certain network measures which can be time consuming. For the tutorials and homeworks the Free plan is fine, but you may require more hours to work on your project.*

# Installing R packages 

Now that you have R and RStudio set up, let's try to install the R packages that we will use in this module. First, what is a "R package"? Sometimes they are known as libraries, but you can think of packages/libraries as a collection of R functions that do specialized things. Here, we make use of several functions from the `igraph` package to do network analysis. 

To download `igraph` open RStudio and type the following into your Console (the panel with the ">" symbol - this is where you type in instructions for R to execute). 

`install.packages("igraph")`

Be patient and wait for the package to finish downloading. After it is downloaded, we can only use the functions in `igraph` after we have loaded it into our workspace. To do this, type the following into the Console: 

`library(igraph)`

If everything is working fine, you should see a plot of two nodes when you run the following line of code in the Console: 

`plot(graph_from_literal(A-B))`

**Important!** You only need to install a package ONCE (unless you wish to update it). But you will always need to load the package at the start of the R session (i.e., run `library(igraph)` in the Console whenever you open RStudio) so that you can use these special network functions. 

Try installing the package called `tidyverse` using the same steps. `tidyverse` is a powerful set of packages that enable people to do data science things in R. It is highly recommended to learn it if you are interested in becoming a proficient user of R. See [this website](https://www.tidyverse.org/) for more information.

# Recommended exercise

Work through Unit 1 of [this website](https://psyr.djnavarro.net/getting-started.html) to become familiar with R and RStudio. 

### Acknowledgements 

Adapted from: [https://psyr.djnavarro.net/getting-started.html](https://psyr.djnavarro.net/getting-started.html) and [https://psyr.djnavarro.net/packages.html](https://psyr.djnavarro.net/packages.html)

last updated: 15th Jan 2024 
