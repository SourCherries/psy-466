# Lab 4: Central Tendency

This lab is a little different from the previous labs. In previous labs, we had separate sections for tutorial and marked exercises. In this lab, all 5 of the marked exercises are in the section called **Jeff Bezos just moved into my neighborhood**. Yes, that's right. You can go ahead and skip to that section if you want and then try to get full marks for this lab. But wouldn't it be nice to learn more? :)

## Set up

### Sources of data for this lab
The net worth of 10,000 individuals from a city in the US: [wealth-in-my-city.csv](/psy-466/data/wealth-in-my-city.csv). Let's just pretend this is your city. The data are fake; I generated them from computer code. However, these data reflect typical distributions of net worth found in the US. Net worth refers to total wealth and includes income and property owned.
<!-- 1. The heights of 70 individuals: [height.csv](/psy-466/data/height.csv). These data are also fake. -->

### Scientific notation
Sometimes large numbers are difficult to write. For example, 200 billion is 200000000000. That's a lot of digits that take up a lot of space. So computers often report large numbers using **scientific notation**. Instead of 200000000000, your computer will report 2e11. Here are two tables that help you to understand this notation.

| scientific notation | actual number |
| :---------------:   | :---------------:   |
| 1e0 | 1 |
| 1e1 | 10 |
| 1e2 | 100 |
| 1e3 | 1000 |
| 1e4 | 10000 |
| 1e5 | 100000 |

and here's the other table:

| scientific notation | actual number |
| :---------------:   | :---------------:   |
| 2e0 | 2 |
| 2e1 | 20 |
| 2e2 | 200 |
| 2e3 | 2000 |
| 2e4 | 20000 |
| 2e5 | 200000 |

See the pattern? Do not worry! I will not test you on this. The reason I am explaining it here is that, during this lab and maybe a future lab, Jamovi might give you a number in scientific notation. You will then have to recognize this as **scientific notation** and know how to use this number.

You can either figure out how to convert **scientific notation** to an **actual number** using the above tables to guide your thinking.

Or you can use Google! If you want to know how to write ```5e3``` as an actual number then you can simply search Google for ```5e3 * 1```, which means **5e3 times 1**. A calculator then shows ```5e3``` as an actual number, which you can copy and paste.

## Tutorial on central tendency

### Wealth in my city
The next 2 sections examine [wealth-in-my-city.csv](/psy-466/data/wealth-in-my-city.csv). So please load this data into Jamovi.

#### Zooming in to see the shape of your distribution
Go into **Analyses** mode and click on **Flexplot**:
```
Analyses > Flexplot > Flexplot
```
Let's look at the histogram for net worth by setting ```networth``` as the ```outcome variable```:

<!-- ![net worth histogram](../assets/net-worth-histogram.pdf) -->

![net worth histogram](/psy-466/assets/net-worth-histogram.png)

As you can see, this distribution of net worth is **right-skewed**. That is typical of variables like net worth and income. Even though these data are made up, the shape and central tendency of this distribution reflect typical data you might find in the US.

It looks like very few people have a net worth above 250,000. What is the exact percentage of individuals who have a net worth above 250,000? We will calculate this with a series steps.

Let's make sure that there really are 10,000 people in this data.
```
Analyses > Exploration > Descriptives
```
Put ```networth``` under ```variables``` and look at the resulting table of **Descriptives**. The ```N``` refers to the total number of rows. In our case, the total number of people.

Now filter the data to include only people with a net worth greater than 250,000. Look again at your table of **Descriptives**, which has been updated to reflect your filtering. How many people earn more than 250,000?

What is the percentage of people who earn more than 250,000?

That is a very small percentage right! We can more clearly see the shape of the distribution if we exclude these rich people.

Using **Filters**, exclude individuals earning more than 250,000. Now take another look at the histogram that you made earlier. It should now be updated to reflect your filtering:

![net worth histogram, zoomed in](/psy-466/assets/net-worth-histogram-zoom-in.png)

Zooming in like this can be a useful trick to improve visualization. If you share this type of graph, be careful to report which values were excluded to make the graph.

#### Jeff Bezos just moved into my neighborhood
Remove any filtering that you did previously. In other words, erase anything you wrote in the text box for **Filters** and press enter. Open up a new Word document to record your answers to the 5 questions below. Each question is worth 1 mark, for a total of 5 marks.

1. No go back to the table of **Descriptives** you made earlier. If you removed this table then you will have to make it again following instructions from the previous section. What is the mean, median and maximum of net worth? Please write these 3 values down. Make a table in a Word document like the one below and fill in the second column called **before Jeff**.

| statistic | before Jeff | after Jeff |
| :----: | :----: | :----: |
| median |     |           |
| mean   |     |        |
| maximum |   |    |

2. (Jeff Bezos)[https://en.wikipedia.org/wiki/Jeff_Bezos] moves into your neighborhood. He is the founder, CEO and president of Amazon.com. I have no idea why he wants to live in your neighborhood, but he does. Crazy! His net worth is 205 billion. He will now be row 10001 in your data. Go ahead and append 205 billion to your data. When we **append** something, we simply include it at the end; so write in 205 billion as row 10,001. The mean, median and maximum will now be different. Please write these 3 values down, and fill in the final column of your table.

3. When Jeff Bezos moved into our neighborhood, what changed more: the median or the mean?

4. Now that we have included Jeff Bezos, the mean is quite large but obviously not as large as Jeff's net worth.
  - How much larger is Jeff's net worth compared to the new mean?
    - Jeff divided by the new mean
  - How much larger is the new mean compared to the net worth just below this one?
    - new mean divided by some number (you decide)
  - Is there anyone in our data that has a net worth **close to** the new mean value?

5. If you had to choose between the median and the mean, which best describes the central tendency of net worth? Why?

Recall our discussion of **zooming in**. If you look at the histogram for net worth now, you can see that the addition of Jeff Bezos has made it very hard to see how net worth is distributed among most people. All we see is that everyone has much less wealth than Jeff! So in some cases, zooming in is necessary to see that net worth is truly right-skewed.

<!-- ### Distribution of heights
This section examines [height.csv](/psy-466/data/height.csv). So please load this data into Jamovi.

<!-- #### Even the median can fail
Here is a histogram showing us the distribution of heights among 70 individuals:

![bimodal distribution](/psy-466/assets/histogram-bimodal.pdf)

Without doing any calculation, what do you think the mean is?

How about the median?

Does it make sense to have a single measure of central tendency for this variable?

What might be responsible for the 2 peaks we see in this histogram? -->

#### The mode can be misleading ... for continuous variables
Let's look at the histogram of heights using Flexplot. It should look like this:

![heights histogram](/psy-466/assets/heights-histogram.pdf)

Approximately, what is the the width of each bar?

Approximately, what is the range of values for the highest bar?

Using ```Analyses > Exploration > Descriptives```, what is the mode?

Is the mode within the highest bar?


How many values are **exactly equal** to the mode?
HINT: Use filtering and then examine ```N``` under ```Descriptives```.

How many values are **exactly equal** to 191, 192 ... 199?

| 192 | 193 | 194 | 195 | 196 | 197 | 198 | 199 |
| :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- |
|  |  |  |  |  |  |  |  |

I hope you can now see why the mode of a continuous variable is not always within the tallest bar of a histogram!


 -->

<!-- ## Marked exercises (5 points total)

### Question 1 (1 point - Pass/Fail) -->
