# Lab 6: Sampling

## Set up

### What will you submit?

1. A single word document with your answers to questions 1, 2, 3, 4, 5, 6, 8, 9 , 10.
2. A Jamovi file named **LAB6-PART1**, containing table of descriptive statistics (Ns and means).
3. A Jamovi file named **LAB6-PART2**, containing 2 histograms.

Each question is worth a single point.
Upload all 3 documents to Black Board by Sunday November 1, 11:59 PM.

### Sources of data
1. [multiple-studies-1.csv](/psy-466/data/multiple-studies-1.csv)

2. [multiple-studies-2.csv](/psy-466/data/multiple-studies-2.csv)

<!-- 3. [real-madrid.csv](/psy-466/data/real-madrid.csv)

### Install a module in Jamovi
Hit the **Modules** button (cross-shaped) at the top right. Select the option **jamovi library**. Search for **distrACTION** under the list of **Available** modules. The full name of this module is **distrACTION - Quantiles and Probabilities of Continuous and Discrete Distributions**. Once you find it, hit the **INSTALL** button. -->

## Comparing 3 studies
In Jamovi, open the file [multiple-studies-1.csv](/psy-466/data/multiple-studies-1.csv). In your Jamovi spreadsheet, you will see data that look like this:
```
study, participant
A, 1
B, 2
B, 3
```
If you examine this carefully, you can see that there are 3 studies: A, B and C. Each study uses a different sample size (or **N**). However, you can see that there are no variables to look at yet.

Let us create our own variable called **score** by sampling from a normal distribution with a mean of 200, and a standard deviation of 60. If you forget how to do this, please look at [Lab 5: Correlation](pages/lab5_correlations.html). You can also look at the slides for lecture 7 on sampling.

### Marked questions

1. What is the population mean in this example?

2. What is the population standard deviation in this example?

3. What is the sample size (N) for each study?

4. What is the mean **score** for each study?

5. Multiple-choice question. On average, you expect the mean **score** to be different across these studies according to:
  - the central limit theorem
  - the law of large numbers

6. Did **score** change across studies according to expectation? Describe how the mean **scores** did or did not match expectations.

In order to answer questions 3 and 4, you need to make a table of descriptive statistics in Jamovi:
```
Analyses > Exploration > Descriptives
```
and then analyze the variable **score**, split by **study**. This will give you a table of various results but you only need to look at the **Mean** and **N**. Once you are done making your table, save your Jamovi file as **LAB6-PART1** and upload to Black Board.

## 2000 different studies
In Jamovi, open the file [multiple-studies-2.csv](/psy-466/data/multiple-studies-2.csv). In your Jamovi spreadsheet, you will see data that look like this:
```
study, N.10, N.1000
1, 5.58549777904822, 10.0618777503937
2, 11.6519963187774, 10.7455786613312
3, 12.3149249292267, 9.58781879485058
```
2000 different studies were done and a sample mean was measured in each study. This data shows us all 2000 sample means: 1000 sample means under column **N.10**, and 1000 sample means under column **N.1000**. **N.10** means that these studies used a sample size of 10, and **N.1000** means that these studies used a sample size of 1000.

### Marked questions

7. Let us make a histogram for **N.10** and another histogram for **N.1000**. Once you are done making your 2 histograms, save your Jamovi file as **LAB6-PART2** and upload to Black Board.

8. What is the name of the distribution that these histograms are showing us?

9. Multiple-choice question. The shape of the histograms changes from **N.10** to **N.1000** according to:
  - the central limit theorem
  - the law of large numbers

10. I simulated the data for each study by sampling values from a population distribution with a certain shape? Is it possible for you to know what distribution I sampled from?

<!-- ## Probabilities
[real-madrid.csv](/psy-466/data/real-madrid.csv)
```
Number, Position, Nation, Player, Height
1, GK, BEL, Thibaut Courtois, 1.99
2, DF, ESP, Dani Carvajal, 1.73
3, DF, BRA, Éder Militão, 1.86
```

## Back to sampling
Need this again:
[multiple-studies-2.csv](/psy-466/data/multiple-studies-2.csv) -->
