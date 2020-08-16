# Lab 1: Graphing Data

>The commonality between science and art is in trying to see profoundly - to develop strategies of seeing and showing.
—Edward Tufte

As we have found out from the textbook and lecture, when we measure things, we get lots of numbers. Too many. Sometimes so many your head explodes just thinking about them. **One of the most helpful things** you can do to begin to make sense of these numbers, is to look at them in graphical form.

## General Goals

Our general goals for this first lab are to get your feet wet, so to speak. We’ll do these things:

1. Load in some data to a statistical software program
1. Talk a little bit about how the data is structured
1. Make graphs of the data so we can look at it and make sense of it.

### Important info

1. Data for NYC film permits was obtained from the NYC open data website. The .csv file can be found here: <a href="https://raw.githubusercontent.com/CrumpLab/statisticsLab/master/data/Film_Permits.csv" download>Film_Permits.csv</a>

1. Data for watermelon farms in Abu Dhabi was obtained from ZZZZZ. The .csv file can be found here: [watermelon data]({{page.root}}/data/area-of-cultivated-land-for-watermelon.csv)

2. Gapminder data from the gapminder project (copied from the R gapminder library) can be downloaded in .csv format here: <a href="https://raw.githubusercontent.com/CrumpLab/statisticsLab/master/data/gapminder.csv" download>gapminder.csv</a>

## R

### Download the lab templates

You will be completing each lab by writing your code and notes in an R Markdown document.

1. Download the [RMarkdownsLab.zip](https://github.com/CrumpLab/statisticsLab/raw/master/RMarkdownsLab.zip) to your computer.
2. Unzip the file, this will produce a new folder with three important parts
    a. data folder (contains data files for all labs)
    b. LabTemplates folder (contains blank templates for completing all the labs)
    c. RMarkdownsLab.Rproj A file with a little blue cube with an R in it.
3. Double-click the RMarkdownsLab.Rproj file, this will automatically open R-studio (if you are at home, you must [install R and R-studio first](https://crumplab.github.io/statisticsLab/software.html#installing-r-and-r-studio), or you can use [R-studio Cloud](https://crumplab.github.io/statisticsLab/software.html#r-studio-cloud) through your web-browser)
4. Copy the template .Rmd file for lab 1 from the LabTemplates folder into the main folder, then open it, and use it to begin adding your code and notes for lab 1.
5. Watch this screencast to help you get started.

<iframe width="560" height="315" src="https://www.youtube.com/embed/voMIi1fpe5c" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

Your lab instructor will show you how to open R-studio on the lab computer. Just find it and double-click. Now you have R-studio. Your lab instructor will also walk you through the steps to get started completing the first lab. We also wrote down the steps [here](https://crumplab.github.io/statisticsLab/software.html#how-to-complete-the-r-labs).

There are numerous resources for learning about R, we put some of them on the course website, under the [resouces page](https://crumplab.github.io/psyc3400/Resources.html). You will find these resources helpful as you learn. We also have a kind of [general introduction to R and Rstudio here](https://crumplab.github.io/statisticsLab/software.html#r). This shows you how to download R and R-studio at home (it's free). Throughout the labs you will be writing things called R Markdown documents. You will learn how to do this throughout the labs, but it can also be worthwhile reading other tutorials, such as the one provided by [R Markdown](https://rmarkdown.rstudio.com/lesson-1.html).

When we made this course, we assumed that most students would be unfamiliar with R and R-studio, and might even be frightened of it, because it is a computer programming language (OOOOHHH NOOOOOOO, I NEED TO DROP THIS COURSE NOW)...Don't worry. It's going to be way easier than you think. Let's compare to other statistics courses where you would learn something like SPSS. That is also a limited programming language, but you would mostly learn how to point with a mouse, and click with button. I bet you already know how to do that. I bet you also already know how to copy and paste text, and press enter. That's mostly what we'll be doing to learn R. We will be doing statistics by typing commands, rather than by clicking buttons. However, lucky for you, all of the commands are already written for you. You just have to copy/paste them.

We know that this will seem challenging at first. But, we think that with lots of working examples, you will get the hang of it, and by the end of the course you will be able to do things you might never have dreamed you can do. It's really a fantastic skill to learn, even if you aren't planning on going on to do research in Psychology (in which case, this kind of thing is necessary skill to learn). With that, let's begin.
