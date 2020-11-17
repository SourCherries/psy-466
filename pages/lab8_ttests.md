# Overview of Labs 7 and 8 (t-tests)

| lab | test | purpose | design |
| :--- | :--- | :--- | :--- |
| 7a | one-sample t-test | Compare sample mean to a hypothetical population mean | One group |
| 7b | paired-sample t-test | Compare two sample means in a within-subjects design | Same subjects are measured across both levels of the experimental manipulation (independent variable) |
| **8** | **independent-samples t-test** | **Compare two sample means in a between-subjects design** | **Different subjects are measured across both levels of the experimental manipulation (independent variable)** |

For each of these labs, we will
- ask a research question appropriate for the test
- get a result in Jamovi
- APA report of result

This lab is about the independent-samples t-test.

# independent-samples t-test
>>
Could my 2 sample means have come from the same distribution?

When would you ever ask this question?

Whenever you cannot use a within-subject design.
- comparison of males and females

Whenever the use a within-subject design would introduce problems.
- carryover effects would make comparison between levels meaningless
- the study described in **Questions** is an example

# An example
You want to know if scores are different between males and females.

You measure scores for 5 males and 5 females:

| participant | sex    | score |
| :--         | :--    | :--   |
| 1           | male   | 1     |
| 2           | male   | 4     |
| 3           | male   | 3     |
| 4           | male   | 6     |
| 5           | male   | 5     |
| 6           | female | 4     |
| 7           | female | 8     |
| 8           | female | 7     |
| 9           | female | 9     |
| 10          | female | 10    |

This is the perfect time to use an independent-samples t-test.

From our sample of 5 males, we obtained a mean of 3.8.
From our sample of 5 females, we obtained a mean of 7.6.

>>
Could my sample means of 3.8 and 7.6 have come from the same distribution?

### How do I analyze this?
Simply copy-and-paste the data from the above table into Jamovi's spreadsheet. Ignore the column headings when you copy; you will have to type these headings yourself.

Note that I set **sex** to be **Nominal** and **score** to be **Continuous**:

![](/psy-466/assets/L8-fig-1.png)

Run the independent-samples t-test using these menu options:
```
Analyses > T-Tests > Independent Samples T-Test
```

Your **Dependent Variable** is **scores**, and your **Grouping Variable** is **sex**. Under **Additional Statistics**, I check **Descriptives** so I can also get the sample mean and SD for each group.

I do not have any idea of whether females should score higher or lower than males. I am simply predicting a difference. So under **Hypothesis**, I check **Group 1 ≠ Group 2**.

Here is what my settings look like:

![](/psy-466/assets/L8-fig-2.png)

### Our results
A table of your results will look like this:

![](/psy-466/assets/fig-3.png)

### What can we write?

>>
We conducted a one-tailed independent samples t-test to compare scores between males and females. Scores from females (M = 7.60, SD = 2.30) were higher than scores from males (M = 3.80, SD = 1.92), t(8) = 2.83, p < .05.

Note that the t-value (under **statistic** in the Jamovi table) is **-2.83** but I wrote **2.83** in my report. That is OK. Let me explain.

Clearly, females scored higher than males on average. So I wrote my report consistent with this finding.

Jamovi seems to calculate the t-value by doing **males - females** instead of **females - males**. That is why the t-value is **-2.83**.

If Jamovi did **females - males** then the t-value would be **2.83**.
That is why it was OK for me to write **2.83**.

Just make sure that you are **consistent** in your report. For example, I can also write:

>>
Scores from males (M = 3.80, SD = 1.92) were lower than scores from females (M = 7.60, SD = 2.30), t(8) = -2.83, p < .05.

See how my wording is consistent with the t-value?

# Questions
You will need to download a file of data for this: [schroeder-epley-2015-short.csv](/psy-466/data/schroeder-epley-2015-short.csv). These are real data taken from the following study:

>>
Schroeder, J., & Epley, N. (2015). The sound of intellect: Speech reveals a thoughtful mind, increasing a job candidate’s appeal. Psychological science, 26(6), 877-891.

Job applicants in an interview give both a written statement, and an audio version of them reading the statement. It is important to emphasize that the statements are the same. They only differ in how they are presented. The idea is that hearing an applicant say the words might make them appear more intelligent; or might bias the interviewer into believing them to be more intelligent.

Interviewers (professional recruiters) read or listen to each statement, and rate applicants by their intellect.

The participants are the interviewers, and the two conditions are **read** or **listen**. We want to know if the **type of content** or **mode of delivery** will affect impressions. I guess you can use those terms to describe the **independent variable**.

In the data file schroeder-epley-2015-short.csv, **CONDITION** tells us whether the participant **read** or **listened** to statements, and **Intellect_Rating** is a rating of the applicant based on the statement. Ratings can range from 0 (lowest intellect) to 10 (highest intellect). Each row is a participant (interviewer).

1. **[1 mark]**
This study used a between-subject design.
Why not use a within-subject design?

2. Jamovi analysis and write-up:

  - do the appropriate analysis in Jamovi **[2 marks]**
  - write up your results in APA format **[2 marks]**
    - you lose 0.25 marks for every number that is incorrect

# End
