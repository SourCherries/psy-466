# Lab 3: More Graphing of Data


## Set up

### Sources of data for this lab
Gapminder data from the gapminder project (copied from the R gapminder library) can be downloaded in .csv format here: [gapminder.csv](/psy-466/data/gapminder.csv)

### About Gapminder (optional reading)
[https://www.gapminder.org](https://www.gapminder.org) is an organization that collects some really interesting worldwide data. They also make cool visualization tools for looking at the data. There are many neat examples, and they have visualization tools built right into their website that you can play around with [https://www.gapminder.org/tools/](https://www.gapminder.org/tools/). That’s fun. I encourage you to check it out, but no you do not have to check it out.

## Tutorial on histograms and additional visualizations
We will show you how to graph some of the data to answer a few different kinds of questions. Then you will form your own questions, and see if you can answer them yourself using jamovi.

### Life Expectancy histogram
How long are people living all around the world according to this data set? There are many ways we could plot the data to find out. The first way is a histogram. We have many numbers for life expectancy in the column ```lifeExp```. This is a big sample, full of numbers for 142 countries across many years. It’s easy to make a histogram in jamovi to view the distribution:

![make a histogram](/psy-466/assets/histogram-flexplot.gif)

### Life Expectancy by year Scatterplot
We can see we have data for life expectancy and different years. So, does worldwide life expectancy change across the years in the data set? As we go into the future, are people living longer?

Let’s look at this using a scatter plot:
![scatterplot](/psy-466/assets/scatter-plot-life-by-year.gif)

Something is wrong here. Year goes in reverse along the x axis. But we want to see year ordered from earliest to latest. What is wrong?

#### Always make sure that your variables are the correct type!
I am going to say this again because it is very important: **Before you do any kind of analysis, always make sure that your variables are the correct type!**

Go into **Data** mode and click on **Setup** to examine your variables:
```
Data > Setup
```
Clicking on the column for a variable will then show you how that variable is set up at the top. If you click on the column for ```year```, you can see that it is set as a nominal variable. But we know that ```year``` is continuous, so we should set it as continuous. This change is automatically reflected in our analysis! As you will see, setting ```year``` to be a continuous variable will automatically update our scatter plot so that year is now ordered along the x axis from earliest to latest.

Everything I described above is shown to you in this video:
![resetting year](/psy-466/assets/set-variable-to-continuous.gif)

Wow, that’s a lot of dots! Remember that each country is measured each year. So, the bands of dots you see, show the life expectancies for the whole range of countries within each year of the database. There is a big spread inside each year. But, on the whole it looks like the groups of dots slowly go up over years.

### One country, life expectancy by year
 I'm (Carl) from Canada, so maybe I want to know if life expectancy for Canadians is going up over the years. To find out the answer for one country, we first need to split the full data set into another smaller data set that only contains data for Canada. In other words, we want only the rows where the word “Canada” is found in the ```country``` column. We will use the filter function for this:
 ![filter for Canada](/psy-466/assets/filter-for-canada-only.gif)

What did I write in the field for filtering?

```country == "Canada"```
and then I hit the ```Enter``` button.

Values like ```Canada``` are words. We call these values **strings**. Another string could be ```growth rate``` or ```N1H1```. Whenever we specify **strings** in the filter field, we have to put quotations like this ```"``` around them. Numbers are different from strings. We do not need to put quotations around numbers. If we wanted to select only the years after 1977 then we would enter:
```year > 1977```

### Multiple countries scatterplot
What if we want to look at a few countries altogether? We can do this too. We just change how we filter the data so more than one country is allowed, and then we have to do something extra when we use Flexplot.

Let's say I want to compare Canada, France and Brazil. In the field for filtering, I would write:
```country=="Canada" or country=="France" or country=="Brazil"```

The word ```or``` is a **logical operator**. Another logical operator is ```and```. You might remember these logical operators from literature or internet searches. They work the same in jamovi, and in programming languages if you ever want to learn that.

It would not make sense to filter:
```country=="Canada" and country=="France"```
A country cannot be both Canada and France! However, ```and``` could be very useful. For example, you could write:
```country=="Canada" and year > 1977```

Are we satisfied with our graph? Not yet! We cannot see which points belong to which countries. So we need to tell jamovi that we want to do this:
![breakdown by country](/psy-466/assets/scatter-plot-by-year-and-country.gif)

Notice that I can update an existing plot by clicking on it with my mouse. After I click on the plot, I can then change the settings on the left and the plot will automatically update.

As you can see, Canada and France are very similar and both of them have much higher life expectancies than Brazil. However, Brazil's life expectancy is rising faster over time and will probably catch up with Canada and France in the next decade or so.

## Marked exercises (5 points total)

The first 3 questions are worth 1 point each

### Question 1 (1 point - Pass/Fail)
Make a graph plotting Life Expectancy by year for the five continents, using the ```continent``` factor.

### Question 2 (1 point - Pass/Fail)
Make a graph plotting GDP per capita by year for Lebanon, Kuwait, and Saudi Arabia. Use the ```gdpPercap``` column for the GDP per capita data

### Question 3 (1 point - Pass/Fail)
Make a new graph plotting anything you are interested in using the gapminder dataset. It just needs to be a plot that we have not given an example for.

### Question 4 (2 points total - graded by rubric below)
The answers to each of these parts are worth .25 points each, for a total of 2 points:

1. What do the bars on a histogram represent?

1. How many bars can a histogram have?

1. What do the heights of the bars tell you?

1. What is on the x-axis and y-axis of a histogram?

1. What does the tallest bar on a histogram tell you?

1. What does the shortest bar on a histogram tell you?

1. What are some uses for histograms, why would you want to look at a histogram of some numbers that you collected?

1. Imagine you had two histograms, one was very wide and spread out, the other was very narrow with a very tall peak. Which histogram would you expect to contain more consistent numbers (numbers that are close to each other), explain why.

#### Rubric for Question 4

General grading.

- You will receive 0 points for missing answers (say, if you do not answer part 1, then you will receive 0 out .25 points for that part)
- You must write in complete sentences. Point form sentences will be given 0 points.
- Completely incorrect answers will receive 0 points. For example, if you incorrectly describe what the x and y-axes refer to, then you will receive 0 points for that question.
- If your answer is generally correct but very difficult to understand and unclear you may receive half points for the question
