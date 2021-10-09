# Lab 5: Correlations

## Set up

### Worksheet
All of your answers to the graded questions will be put into this worksheet [lab-5-your-name-goes-here.docx](/psy-466/assets/lab-5-your-name-goes-here.docx). Please download this worksheet and update the file name with your name.

During this tutorial, I will let you know when you should answer a question and include that answer in your worksheet. When you are done, you can upload your worksheet to Black Board.

### Sources of data for this lab
We use data from the [World Happiness Report](http://worldhappiness.report/). A .csv of the data can be found here: [WHR2018.csv](/psy-466/data/WHR2018.csv)


## Tutorial on correlations

### Calculate correlation {#get-coefficient}
Calculating the correlation between 2 variables is easy. Let's create 2 new variables called ```X``` and ```Y```. If you forget how to do that then you can go back to [this section](#want-10).

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

You will get a table that looks like this:

The correlation coefficient between ```X``` and ```Y``` is 0.76539.

I hate all these digits. So let's **round this value to the 2nd decimal place** and write 0.77.

### Display a scatter plot {#single-scatter}
Let's plot the data in a scatter plot: ```Analyses > Flexplot > Flexplot```

Under ```Graphic Options ```, uncheck ```Confidence bands (for scatterplots)```.

For ```Fitted line (for scatterplots)```, select ```Regression``` instead of ```Loess```.

For ```Transparency of dots (%)```, enter in 100.

The resulting scatter plot should look like this:

![](/psy-466/assets/scatter-x-y.png)

OK, we are almost ready to turn to some real data and ask if there are correlations between interesting variables…You will find that there are some… But before we do that, we do one more thing. This will help you become a little bit more skeptical of these “correlations”.

### Chance correlations {#chance-correlations}
As you learned from the textbook. We can find correlations by chance alone, even when there is no true correlation between the variables. For example, if we sampled randomly into x, and then sampled some numbers randomly into y. We know they aren’t related, because we randomly sampled the numbers. However, doing this creates some correlations some of the time just by chance. You can demonstrate this to yourself with the following procedure:

- We simulate 7 variables
  - Each variable will have a random sample of 10 values (```N=10```)
- We make scatter plots to show the correlation between each pair of variables
  - There will be 21 pairs in total
  - We will also look at the measured correlations
- We are looking at so many possible correlations
  - By chance, some of them may look like a real correlation
  - These pairs will have a stronger measured correlation

From the previous section [Simulations](#simulate), we already know how to generate random values for a single variable. To create 7 random variables, we simply repeat the step for [making a new variable](#random-data). When we are done, we should have variables ```A```, ```B```,  ```C```, ```D```, ```E```, ```F``` and ```G```. If you use different variable names, that is ok too. Just make sure that each variable has a unique name.

Now it is time to examine the scatter plots, and also the measured correlations. We want to see a matrix of scatter plots, showing us how each variable relates to every other variable. We refer to this as a **matrix of scatter plots**. This is easy to make in Jamovi:
```
Analyses > Regression > Correlation Matrix
```
Now move our 7 new variables (```A``` to ```G``` for example) from the left box to the right box.

This will create a **correlation matrix**, a table showing us the correlation coefficient measured between each pair of variables. This is what my correlation matrix looks like:

![](/psy-466/assets/correlation-matrix.png)

How do we read this table?
Pearson's r measured between ```A``` and ```B``` is -0.30304.
Pearson's r measured between ```A``` and ```C``` is -0.27069.
And so on.

#### Graded exercise
Your correlation matrix will be different from this one, and every other student. Please copy **your** correlation matrix into your worksheet, in the section **Chance correlations**.

Which pair of variables shows the strongest correlation? Answer this question in your worksheet, in the section **Chance correlations**.

In your worksheet, there is a section **Table to summarize measured correlations**. You can now fill in part of this table:

| summary of 21 comparisons | N = 10 | N = 100 |
| :--- | :--- | :--- |
| minimum of all correlations | **fill this in** | |
| maximum of all correlations | **fill this in** | |
| range | **fill this in** | |

What is the **range**? Simple **maximum** minus **minimum**.

What does **N = 10** mean? In this simulation, we used a sample size of 10.

#### What do these correlations look like?
This is the fun part. Let's make a matrix of scatter plots showing all the relationships:
```
Analyses > Regression > Correlation Matrix
```
Under ```Plot```, check ```Correlation matrix``` to display all scatter plots.
Under ```Plot```, you can also check ```Statistics``` to show the corresponding correlation coefficients in this figure.

Here is what my figure looks like:

![](/psy-466/assets/correlation-matrix-plots.png)

The lines drawn in these plots are called **regression lines**. We'll talk about this later. But you can see the lines show you the general trend: upward sloped lines suggest a positive correlation and downward sloped lines suggest a negative correlation.

Notice that some of these scatter plots appear to show a very strong relationship. And of course, the corresponding correlation coefficient written in the figure is either moderately above or below zero. **However, we know that what we see here is due purely to chance. There is no real relationship between any of these variables. The true correlations are actually 0.**

The point is, now you know you can find correlations by chance. So, in the next section, you should always wonder if the correlations you find reflect meaningful association between the x and y variable, or could have just occurred by chance.

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

### Chance correlations with a larger sample
In the previous section [**Chance correlations](#chance-correlations), we analyzed the correlations among completely random variables. We knew that the true correlations were 0 but, by chance alone, there appeared to be some correlations.

Here we do the same thing but with a larger sample size. Instead of sampling 10 values for each variable (```N = 10```), we will sample 100 values for each variable (```N = 100```).

Follow the same procedure in [**Chance correlations](#chance-correlations), except use a sample size of 100. However, there is something tricky here. Remember when we had to [tell Jamovi that we want 10 values for our variables](#want-10)? If we want more than 60 values, we have to first enter a value into the 60th cell (and hit the ```ENTER``` button). That allows us to scroll down to see more rows. Finally, we can then type a value into the 100th row (and hit the ```ENTER``` button). Now Jamovi will know that we want 100 values when we randomly sample data.

Once you create your 7 variables (each with 100 randomly sampled), and make your **correlation matrix**, you can complete the rest of your worksheet!

#### Graded exercise
Your correlation matrix will be different from this one, and every other student. Please copy **your** new correlation matrix into your worksheet, in the section **Chance correlations with a larger sample**.

Which pair of variables shows the strongest correlation? Answer this question in your worksheet, in the section **Chance correlations with a larger sample**.

Now return to the table in your worksheet (**Table to summarize measured correlations**). You can now complete the rest of this table:

| summary of 21 comparisons | N = 10 | N = 100 |
| :--- | :--- | :--- |
| minimum of all correlations | | **fill this in** |
| maximum of all correlations | | **fill this in** |
| range |  | **fill this in** |

Your final job is to answer a short answer question in your worksheet:
**With reference to your table, explain why larger sample sizes are better.**
