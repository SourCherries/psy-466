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

### Important info

1. Data for watermelon farms in Abu Dhabi was obtained from [Bayanat, the official data portal of the UAE government](https://bayanat.ae/en). The .csv file can be found here: [watermelon data](/psy-466/data/area-of-cultivated-land-for-watermelon.csv)

2. Data for the ad groups (or identifiers) that Facebook sells to advertisers was obtained from [ProPublica's Data Store](https://www.propublica.org/datastore/dataset/facebook-ad-categories). The .csv file can be found here: [facebook data](/psy-466/data/fb-ad-groups.csv)

<!-- 3. Gapminder data from the gapminder project (copied from [this source](https://github.com/jennybc/gapminder)) can be downloaded in .csv format here: [gapminder data](/psy-466/data/gapminder.csv) -->

## jamovi

### Download the lab templates

You will be completing each lab by writing your code and notes in an R Markdown document.

### Get some data
Please download the watermelon data and save it somewhere on your computer. ![Now load this data into jamovi.](/psy-466/assets/V1-open-file.gif)

### Farms in Abu Dhabi
Jamovi has

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
