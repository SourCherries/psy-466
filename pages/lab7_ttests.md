# Overview of Labs 7 and 8 (t-tests)

| lab | test | purpose | design |
| :--- | :--- | :--- | :--- |
| 7a | one-sample t-test | Compare sample mean to a hypothetical population mean | One group |
| **7b** | **paired-sample t-test** | **Compare two sample means in a within-subjects design** | **Same subjects are measured across both levels of the experimental manipulation (independent variable)** |
| 8 | independent-sample t-test | Compare two sample means in a between-subjects design | Different subjects are measured across both levels of the experimental manipulation (independent variable) |

For each of these labs, we will
- ask a research question appropriate for the test
- get a result in Jamovi
- APA report of result

This lab is about the paired-sample t-test.

# paired-sample t-test
> Could my difference-scores have come from a distribution with a mean of zero?

When would you ever ask this question?

Whenever each participant is measured across two levels of an experimental manipulation.

Here are examples that measure the same thing (dependent variable) before and after some manipulation (independent variable):

- each person's bodyweight measured before and after a fitness program
- each person's tendency to take risks before and after exposure to news of a possible war

And here is an example that measures the same thing (dependent variable) in two different manipulations (independent variable):

- each person's tendency to take risks after exposure to news of peace, and after exposure to news of war

# An example
You want to know if there is more risk-taking after exposure to news of war, compared to news of peace. Risk-taking, the dependent variable, is measured by asking the participants to split their money between a high-risk and a low-risk investment. Risk-taking is measured as a percentage that goes from 0 to 100: 0 means all money is spent on the low-risk investment, and 100 means that all money is spent on the high-risk investment.

Each participant's risk-taking is measured twice: once after reading news of peace, and once after reading news of war.

| participant | peace | war |
| :--         | :--   | :-- |
| 1 | 10 | 40 |
| 2 | 40 | 80 |
| 3 | 30 | 70 |
| 4 | 60 | 90 |
| 5 | 50 | 100 |

This is the perfect time to use a paired-sample t-test.

**This is the same thing as doing a one-sample t-test on the difference scores!**


| participant | peace | war | difference |
| :--         | :--   | :-- | :-- |
| 1 | 10 | 40 | 30 |
| 2 | 40 | 80 | 40 |
| 3 | 30 | 70 | 40 |
| 4 | 60 | 90 | 60 |
| 5 | 50 | 100 | 50 |

From our sample of 5 participants, we obtained a mean difference of 45.2.

> Could my sampled mean difference of 45.2 have come from a distribution with a mean of 0?

### How do I analyze this?
You can simply use the same procedure you used for the one-sample t-test. This time you will be need to create a new variable called **difference** then apply the one-sample t-test to that.

Copy and paste the first table of data to Jamovi and name the variables: **participant**, **peace** and **war**:

![](/psy-466/assets/L7B-1.png)

Set **peace** and **war** to be **Continuous** and **Decimal**:

![](/psy-466/assets/L7B-2.png)

Create a **COMPUTED VARIABLE** that is the difference between **war** and **peace**:

![](/psy-466/assets/L7B-3.png)

**Lab 7a** showed you how to do a one-sample t-test. The same procedure is used here to analyze **difference**.

Run the one-sample t-test using these menu options:
```
Analyses > T-Tests > One Sample T-Test
```

Our **null hypothesis** is no difference in risk-taking so **Test value** in the menu option should be set to 0. This is one difference between the settings used in this example and the example we used in **Lab7a**.

However, we expect greater risk-taking after exposure to war, compared to exposure to peace. That is our prediction or hypothesis. So we set our **Hypothesis** to be **> Test value**. Recall that this is a one-tailed test.

And remember to check **Descriptives** under **Additional Statistics** because we will need the mean and standard deviation (SD) of the **difference**.

![](/psy-466/assets/L7B-4.png)

### Our results
A table of your results will look like this:

![](/psy-466/assets/L7B-5.png)

### What can we write?
> A one-tailed paired sample t-test shows that risk-taking after exposure to news or war was greater than after exposure to news of peace (difference in risk-taking: M = 45.2, SD = 19.1, t(4) = 5.29, p = 0.003).

**M = 45.2** taken from **Mean** in the **Descriptives** table.
**SD = 19.1** taken from **SD** in the **Descriptives** table.

**t(4) = 5.29** is t(**df**) = **statistic**, taken from the table for **One Sample T-Test**.

And **p = 0.003** is also taken from the table for **One Sample T-Test**.

### What if p was greater than or equal to 0.05?
>
We set an alpha criteria of p<.05. We **fail to reject** the hypothesis that our mean of differences came from a normal population with mean = 0, and sd = 19.1.

# Questions

1. **[1 mark]**
In the example above, our prediction was that exposure to war would lead to greater risk-taking. Therefore, we used a one-tailed test. The p-value corresponded to the probability of getting a sample mean difference of **45.2** or higher if the null hypothesis (mean difference of 0) is true.

But if our prediction was not specific, then we would use a two-tailed test. For example, we might predict a difference between the two types of exposures but not be able to say whether peace or war would lead to greater risk-taking.
The p-value for the two-tailed test would correspond to the probability of getting a sample mean difference of **45.2** or higher, or a sample mean difference of **-45.2** or lower, if the null hypothesis (mean difference of 0) is true.

Our p-value using a one-tailed test was **0.003**. What would happen to our p-value if we use a two-tailed test?
 - p = 0.00015
 - p = 0.003
 - p = 0.006

2. You want to know if exercise can improve memory. You take a sample of 10 participants and measure their memory span before and after 1 week of intense exercise.

Here are your data:

| participant | before | after |
|:-- | :--    | :-- |
|1   |    4   |  4|
|2   |    2   |  5|
|3   |    6   |  5|
|4   |    0   |  3|
|5   |    3   |  8|
|6   |    0   |  3|
|7   |    5   |  10|
|8   |    3   |  2|
|9   |    2   |  6|
|10  |    2   |  8|

 - do the appropriate analysis in Jamovi **[2 marks]**
 - write up your results in APA format **[2 marks]**
  - you lose 0.25 marks for every number that is incorrect
# END
