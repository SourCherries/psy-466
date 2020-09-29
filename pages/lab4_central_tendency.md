# Lab 4: Central Tendency

This lab is a little different from the previous labs. In previous labs, we had separate sections for tutorial and marked exercises. In this lab, marked exercises are scattered throughout the tutorial.

## Set up

### Sources of data for this lab
1. The net worth of 10,000 individuals from a city in the US: [wealth-in-my-city.csv](/psy-466/data/wealth-in-my-city.csv). The data are fake; I generated them from computer code. However, these data reflect typical distributions of net worth found in the US. Net worth refers to total wealth and includes income and property owned.
1. The heights of 70 individuals: [height.csv](/psy-466/data/height.csv). These data are also fake.


## Tutorial on central tendency

### Wealth in my city
The next 2 sections examine [wealth-in-my-city.csv](/psy-466/data/wealth-in-my-city.csv). So please load this data into Jamovi.

#### Zooming in to see the shape of your distribution
Go into **Analyses** mode and click on **Flexplot** to examine net worth:
```
Analyses > Flexplot > Flexplot
```
Let's look at the histogram for net worth by setting ```networth``` as the ```outcome variable```:
![net worth histogram](/psy-466/assets/net-worth-histogram.pdf)
As you can see, this distribution of net worth is **right-skewed**. That is typical of variables like net worth and income. Even though these data are made up, the shape and central tendency of this distribution reflect typical data you might find in the US.

It looks like very few people have a net worth above 250,000. What is the exact percentage of individuals who have a net worth above 250,000? We will calculate this with a series steps.

1. Let's make sure that there really are 10,000 people in this data.
```
Analyses > Exploration > Descriptives
```
Put ```networth``` under ```variables``` and look at the resulting table of **Descriptives**. The ```N``` refers to the total number of rows. In our case, the total number of people.

2. Now filter the data to include only people with a net worth greater than 250,000. Look again at your table of **Descriptives**, which has been updated to reflect your filtering. How many people earn more than 250,000?

3. What is the percentage of people who earn more than 250,000?

That is a very small percentage right! We can more clearly see the shape of the distribution if we exclude these rich people.

Using **Filters**, exclude individuals earning more than 250,000. Now take another look at the histogram that you made earlier. It should now be updated to reflect your filtering:

![net worth histogram, zoomed in](/psy-466/assets/net-worth-histogram-zoom-in.pdf)

Zooming in like this can be a useful trick to improve visualization. If you share this type of graph, be careful to report which values were excluded to make the graph.

#### Jeff Bezos just moved into my neighborhood
**CURRENT WORK**


![bimodal distribution](/psy-466/assets/histogram-bimodal.pdf)

## Marked exercises (5 points total)

### Question 1 (1 point - Pass/Fail)
