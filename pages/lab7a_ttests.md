# Overview of Labs 7 and 8 (t-tests)
| lab | test | purpose | design |
| :--- | :--- | :--- | :--- |
| 7a | one-sample t-test | Compare sample mean to a hypothetical population mean | One group |
| 7b | paired-sample t-test | Compare two sample means in a within-subjects design | Same subjects are measured across both levels of the experimental manipulation (independent variable) |
| 8 | independent-sample t-test | Compare two sample means in a between-subjects design | Different subjects are measured across both levels of the experimental manipulation (independent variable) |

For each of these labs, we will
- ask a research question appropriate for the test
- get a result in Jamovi
- APA report of result

This lab is about the one-sample t-test.

# one-sample t-test
>>
Could my data have come from a distribution with a specific mean?

When would you ever ask this question?

Most realistic examples involve comparing participant responses against random guessing.


# An example
You want to know if someone can identify a narcissist by simply looking at a photo of their face.

To study this, you show each participant 100 pairs of unfamiliar faces. Each pair consists of one person who has an average narcissism score, and another person with a very high narcissism score. The participant has to say which face belongs to the narcissist.

If a participant cannot identify narcissism from a person's face then they will be choosing randomly. On average you expect 50 out of 100 correct responses. Or a proportion of 0.50.

But if a participant can identify narcissism from a person's face then you expect the proportion of correct responses to be greater than 0.50.

You measure proportion correct for 5 participants:
```
0.5, 0.56, 0.76, 0.8, 0.9
```

This is the perfect time to use a one-sample t-test.

From our sample of 5 participants, we obtained a mean of 0.704.

>>
Could my sample mean of 0.704 have come from a distribution with a mean of 0.50?

### How do I analyze this?
Make a new variable called **scores** and set it as **continuous** and **decimal**:

![](/psy-466/assets/fig-1.png)

Enter in the data:

![](/psy-466/assets/fig-2.png)

Run the one-sample t-test using these menu options:
```
Analyses > T-Tests > One Sample T-Test
```

Your dependent variable is **scores**. The test value of your null hypothesis is **0.50** and your actual hypothesis is that proportion correct will be **> Test value** (a one-tailed test). So your settings should look like this:

![](/psy-466/assets/fig-3.png)

### One- and two-tailed tests
If your actual hypothesis is that proportion correct will be lower than **0.50** then you should select **< Test value**. This is a one-tailed test.

If your actual hypothesis is that proportion correct is simply different from **0.50** (either lower or higher) then you should select **Test ≠ value**. This is a two-tailed test.

### Our results
A table of your results will look like this:

![](/psy-466/assets/fig-4.png)

### What can we write?

>>
We conducted a one-tailed one-sample t-test comparing the sample mean (0.704) against a population mean of .50, t(4) = 2.71, p = 0.027.

Conclusion:
>>
We set an alpha criteria of p<.05. We reject the hypothesis that our sample mean came from a normal population with mean =.50, and sd = 0.17.

### All of these numbers are from the tables in Jamovi
>>
We conducted a one sample t-test comparing the sample mean (0.704) against a population mean of .50, t(4) = 2.71, p = 0.027.

**sample mean (0.704)** taken from **Descriptives** table.

**t(4) = 2.71** is t(**df**) = **statistic**, taken from the table for **One Sample T-Test**.

And **p = 0.027** is also taken from the table for **One Sample T-Test**.

Conclusion:
>>
We set an alpha criteria of p<.05. We reject the hypothesis that our sample mean came from a normal population with mean =.50, and sd = 0.17.

**alpha criteria of p<.05** is standard practice. **P** is the probability of our data (sample mean) given that the null hypothesis is true. A **p** that is less than 0.05 is considered sufficiently low that we can reject the null hypothesis.

**sd = 0.17** is taken from the table for **One Sample T-Test**.

### What if p was greater than or equal to 0.05?
>>
We set an alpha criteria of p<.05. We **fail to reject** the hypothesis that our sample mean came from a normal population with mean =.50, and sd = 0.17.

# Questions

1. **[1 mark]**
In our example above, the null hypothesis is that the population mean is 0.50. And we measured the probability of getting our sample mean or greater. We ended up with a **p-value** of **0.027**. What would happen to our p-value if we assumed a population mean of 0.75? Would the p-value:
  - decrease
  - stay the same
  - increase


2. Eighteen years ago, the average height of 18-year old females in Slovakia was 165 cm. However, Slovakian children born 18 years ago were challenged by an extreme food shortage that lasted 3 years. Has the average height of 18-year old females in Slovakia decreased, compared to 18 years ago? You measure the heights of 10 girls to find out:

```
154.8
157.5
148.3
150.0
163.8
154.4
145.9
163.3
150.3
158.0
```
  - do the appropriate analysis in Jamovi **[2 marks]**
  - write up your results in APA format **[2 marks]**
    - you lose 0.25 marks for every number that is incorrect

# END
