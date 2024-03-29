# Lab 5: Correlations

## Set up

### Sources of data for this lab
For the tutorial section of this lab, we will use data from the [World Happiness Report](http://worldhappiness.report/). A .csv of the data can be found here: [WHR2018.csv](/psy-466/data/WHR2018.csv)

For the graded section of this lab, we will use [lab-5-data.csv](/psy-466/data/lab-5-data.csv)

## Tutorial on correlations

### Calculate correlation {#get-coefficient}
Calculating the correlation between 2 variables is easy. Let's create 2 new variables called ```X``` and ```Y```.

Type in these 9 values for X:
```
1, 3, 2, 5, 4, 6, 5, 8, 9
```
and enter in these 9 values for Y:
```
6, 5, 8, 7, 9, 7, 8, 10, 13
```
Make sure that you set the variable type as **Continuous**.

Now do this ```Analyses > Regression > Correlation Matrix``` and move both ```X``` and ```Y``` from the box on the left to the box on the right.

Make sure that ```Pearson``` is checked under ```Correlation Coefficients```.

Make sure that ```Confidence intervals``` is checked under ```Additional Options```.

You will get a table that looks like this:

![](/psy-466/assets/lab-5-table-1-corr-matrix.png)

The correlation coefficient between ```X``` and ```Y``` is 0.765.

I hate all these digits. So let's **round this value to the 2nd decimal place** and write 0.77. Also that is how you should write this number according to APA format.

The 95-percent confidence interval for our correlation ranges from 0.206 to 0.948. From our lecture **week-9-a-correlations-CI-and-reporting**, you will know to write this as ```95% CI [.21, .95]```.

### Display a scatter plot {#single-scatter}
Let's plot the data in a scatter plot: ```Analyses > Flexplot > Flexplot```

Under ```Graphic Options ```, uncheck ```Confidence bands (for scatterplots)```.

For ```Fitted line (for scatterplots)```, select ```Regression``` instead of ```Loess```.

For ```Transparency of dots (%)```, enter in 100.

The resulting scatter plot should look like this:

![](/psy-466/assets/lab-5-scatter-1-XY.png)

OK, let's turn to some real data and ask if there are correlations between interesting variables.

### World Happiness Report
Let’s take a look at some correlations in real data. We are going to look at responses to a questionnaire about happiness that was sent around the world, from the [world happiness report](http://worldhappiness.report/).

For the year 2017 only, does a country's measure for “freedom to make life choices” correlate with that country's measure for " Confidence in national government"?

Let’s find out. We calculate the [correlation](#single-scatter), and make [the scatter plot](#get-coefficient).

We can see that the correlation coefficient is 0.40810.
**Rounded to the second decimal place** the coefficient is 0.41.

Uh oh! Something went wrong when we tried to make our scatter plot. What happened? It turns out that Jamovi does not like variable names with multiple parts that are separated by spaces. Rename **Freedom to make life choices** as **Freedom**, and **Confidence in national government** as **Confidence**. You already know how to do this using: ```Data > Setup```.

The resulting scatter plot looks like this:

![](/psy-466/assets/confidence-by-freedom.png)

Although the scatter plot shows the dots are everywhere, it generally shows that as Freedom to make life choices increases in a country, that countries confidence in their national government also increase. This is a positive correlation.

After all that work, we can now speedily answer more questions. For example, what is the relationship between positive affect in a country and negative affect in a country. I wouldn’t be surprised if there was a negative correlation here: when positive feelings generally go up, shouldn’t negative feelings generally go down?

Indeed, the correlation coefficient is -0.38.

And, after renaming the variable names, here is the scatter plot:

![](/psy-466/assets/negative-by-positive.png)

Bam, there we have it. As positive affect goes up, negative affect goes down. A negative correlation.

## Marked exercises
Please download the data [lab-5-data.csv](/psy-466/data/lab-5-data.csv), and open in Jamovi. These data are the results of a study done with 100 adult participants. Each person filled out a survey (GPTS) and also rated photos of people they are familiar with (friends, family and colleagues).

GPTS refers to the Green et al., Paranoid Thoughts Scale. Scores on each scale can range from 16 to 80. Higher scores indicate greater levels of paranoid thinking.

MTR refers to Mean Trust Rating. Participants rated the trustworthiness of many photos. Each photo was rated on a scale from 1 to 7 (least to most trustworthy). MTR is the mean trust-rating of a participant, across all the photos they rated.

***Put all of your answers to these questions in a single Word document and upload to Blackboard***

### Question 1 (20 points)
Write a reasonable hypothesis about the relation between MTR and GPTS, and briefly explain your hypothesis.

### Question 2 (10 points)
To test your hypothesis, you will measure a Pearson r correlation. Should you use a one-tailed or a two-tailed test of statistical significance?

### Question 3 (40 points)
Please review the lecture **week-9-a-correlations-CI-and-reporting**. Analyze the data in Jamovi and briefly report your results using APA format, as described in lecture **week-9-a-correlations-CI-and-reporting**.

### Question 4 (20 points)
Consider these two statements:
>GPTS influences MTR

>MTR influences GPTS

Which of these two statements makes more sense and why?

### Question 5 (10 points)
Include a scatterplot showing the relation between MTR and GPTS. The variable on the X axis should be the one that we consider to be the ```cause``` and the variable on the Y axis should be the one that we consider to be the resulting ```effect```. We never know for sure unless we do an experiment. But it helps to interpret a scatterplot we always put the ```more likely cause``` on the X axis.

***Put all of your answers to these questions in a single Word document and upload to Blackboard***
