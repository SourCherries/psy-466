# Lab 1: Graphing Data I

>The commonality between science and art is in trying to see profoundly - to develop strategies of seeing and showing.
—Edward Tufte

As we have found out from the textbook and lecture, when we measure things, we get lots of numbers. Too many. Sometimes so many your head explodes just thinking about them. **One of the most helpful things** you can do to begin to make sense of these numbers, is to look at them in graphical form.

<!-- ![some words](/psy-466/assets/gapminder-hist-life.png)
![some words](/psy-466/assets/gapminder-scatter-life-year.png)
![some words](/psy-466/assets/gapminder-scatter-life-year-saudi.png)
![some words](/psy-466/assets/gapminder-scatter-life-year-3-arab-states.png) -->

## General Goals

Our general goals for this first lab are to get your feet wet, so to speak. We’ll do these things:

1. Load in some data to [jamovi](https://www.jamovi.org/)
2. Talk a little bit about how the data is structured
3. Make graphs of the data so we can look at it and make sense of it.

Visualization is so important that we will continue to make graphs in the next lab.

### Sources of data for this lab

1. Data for watermelon farms in Abu Dhabi was obtained from [Bayanat, the official data portal of the UAE government](https://bayanat.ae/en). The .csv file can be found here: [watermelon data](/psy-466/data/area-of-cultivated-land-for-watermelon.csv)

2. Data for the ad groups (or identifiers) that Facebook sells to advertisers was obtained from [ProPublica's Data Store](https://www.propublica.org/datastore/dataset/facebook-ad-categories). The .csv file can be found here: [facebook data](/psy-466/data/fb-ad-groups.csv)

### CSV file format

Data in our labs will be shared as CSV files. CSV stands for comma-separated values, and these types of files can be easily identified by the .csv file extension in their file name. Why CSV? It is one of the simplest file formats and most popular file formats for data. CSV files can be read by every computer application that involves data analysis: SPSS, Stata, Excel, Google Sheets, you name it. We'll be doing all of our statistical analyses using the jamovi application and jamovi can also read .csv files. CSV files also have the advantage that you can also just look at them in a simple word processor.

So what's in a CSV file?
Here's an example:

```
participant, stimulus, reaction_time
1, violent, 200
2, neutral, 500
```

The first thing is usually a row of headers, which are short descriptions of different variables. Each header is separated by a comma. In this example, there are 3 variables: participant, stimulus and reaction time. Each subsequent line is a row of values separated by commas. Looking at this, we can guess that participant 1 reacted very quickly to a violent stimulus, maybe the image of bloody knife. The next line suggests that participant 2 reacted more slowly to a neutral stimulus, perhaps the image of a computer. However, I am just guessing. Whoever made the CSV file should provide additional information to explain how these data were collected and what the different variables mean. This additional information is usually available in another file, like a website or PDF document for example. For our labs, I will describe each data file as much as is necessary for you to understand the required analyses. I will also provide links to additional information for those who are curious to learn more!

If you open up the above CSV file in a spreadsheet application like Excel, you might get something like this:

| participant | stimulus | reaction_time |
| ---: | ---: | ---: |
| 1 | violent | 200 |
| 2 | neutral | 500 |

Notice that data in a CSV file are **tabular**:
- each column represents a variable (described by its header)
- each row represents the values of an object for each variable
  - in the example above, each object is a person
- the number of values in each row matches the number of variables (headers)
  - in our example, 3 values for each person
- variable names should be informative

<!-- 3. Gapminder data from the gapminder project (copied from [this source](https://github.com/jennybc/gapminder)) can be downloaded in .csv format here: [gapminder data](/psy-466/data/gapminder.csv) -->

## jamovi

### Download the lab templates

You will be completing each lab by writing your code and notes in an R Markdown document.

### Get some data
Please download the watermelon data and save it somewhere on your computer.
Now load these data into **jamovi** like this:
![Now load this data into jamovi.](/psy-466/assets/V1-open-file.gif)

### Farms in Abu Dhabi
This data lists all of the watermelon farms in the Emirate of Abu Dhabi; each row is a farm.
```
Year,Emirate,Region,Locality_EN,Locality_AR,Area (donum)
2016,Abu Dhabi,Abu Dhabi,Al Khatim,الختم,38.5
2016,Abu Dhabi,Abu Dhabi,Al Rahba,الرحبة,62.6
2016,Abu Dhabi,Al Ain,Abu-Kariah,ابو كريه,19.1
```

#### Which region has the most watermelon farms?
![Loading our farm data](/psy-466/assets/V2-counts-explore.gif)
![some words](/psy-466/assets/watermelons_hist_explore.png)


#### An alternate way to answer this question
![Loading our farm data](/psy-466/assets/V3-counts-flex-strange.gif)

#### Filtering out empty rows
![Loading our farm data](/psy-466/assets/V4-filtering.gif)
![some words](/psy-466/assets/watermelons_hist_flex.png)

### The information about you that Facebook buys from marketing companies

#### Filtering out unknown companies
![Loading our farm data](/psy-466/assets/V5-filtering.gif)
<!-- ![some words](/psy-466/assets/facebook_hist_explore_partner.png) -->
![some words](/psy-466/assets/facebook_hist_flex_partner.png)
##### Types by different companies
![Loading our farm data](/psy-466/assets/V6-type-by-partner.gif)
![some words](/psy-466/assets/facebook_hist_flex_type_partner.png)
Let's refer to this graph as **type-by-company**.

##### Companies by different types
![Loading our farm data](/psy-466/assets/V7-partner-by-type.gif)
<!-- ![some words](/psy-466/assets/facebook_hist_explore_type_partner.png) -->
![some words](/psy-466/assets/facebook_hist_explore_partner_type.png)
Let's refer to this graph as **company-by-type**.

### Generalization Exercise
(1 point - Pass/Fail)

The last graph we made (**company-by-type**) compared companies for each of the different types of identifier. Suppose that the only identifier type we care about is *behaviors*. We want a simpler graph that looks like this:
![these words do not show](/psy-466/assets/facebook_hist_explore_behaviors_only.png)
Please recreate this graph.
HINT: You can use **filtering**.

### Writing assignment

1. Which company sells the most diverse range of identifier types?

2. Which of these 2 graphs is most appropriate for answering the previous question? **type-by-company** or **company-by-type**?

3. Which company provides the most information about different types of moms?

4. Which of these 2 graphs is most appropriate for answering the previous question? **type-by-company** or **company-by-type**?

The answers to each of these questions are worth .50 points each, for a total of 2 points

**Rubric**

General grading.

- You will receive 0 points for missing answers (say, if you do not answer question c, then you will receive 0 out .50 points for that question)
- You must write in complete sentences. Point form sentences will be given 0 points.
- Completely incorrect answers will receive 0 points. For example, if you incorrectly describe what the x and y-axes refer to, then you will receive 0 points for that question.
- If your answer is generally correct but very difficult to understand and unclear you may receive half points for the question
