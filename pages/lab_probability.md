# Probabilities
- A number bounded between 0 and 1
- Describes the "chances" or "likelihood" of an event

# Proportions and Percentages
- Percentage (%): A ratio between event frequency, and total frequency, expressed in units of 100.
- Proportion: a decimal version (range between 0 and 1)

| percentage | proportion | example           |
| ---------- | ---------- | ----------------- |
| 100%       | 1          | 7 out of 7 people |
| 50%        | .5         | 6 out of 12 people|
| 50%        | .5         | 2 out of 4 people |

# Probability statements
![](die.png)
- A coin has a 50% chance of landing heads
  - p(heads) = 1 / 2 = .5
- A die has a 17% chance of showing "1"
  - p("1") =
- There is a 10% chance of rain tomorrow
  - p(rain tomorrow) = .1



# Real Madrid

|Number|Position|Nation|Player           |Height|
|------|--------|------|-----------------|------|
|1     |GK      |BEL   |Thibaut Courtois |1.99  |
|2     |DF      |ESP   |Dani Carvajal    |1.73  |
|3     |DF      |BRA   |Éder Militão     |1.86  |
|4     |DF      |ESP   |Sergio Ramos     |1.84  |
|5     |DF      |FRA   |Raphaël Varane   |1.91  |
|6     |DF      |ESP   |Nacho            |1.80  |
|7     |FW      |BEL   |Eden Hazard      |1.75  |
|8     |MF      |GER   |Toni Kroos       |1.83  |
|9     |FW      |FRA   |Karim Benzema    |1.85  |
|10    |MF      |CRO   |Luka Modrić      |1.72  |
|11    |FW      |ESP   |Marco Asensio    |1.82  |
|12    |DF      |BRA   |Marcelo          |1.74  |
|13    |GK      |UKR   |Andriy Lunin     |1.92  |
|14    |MF      |BRA   |Casemiro         |1.85  |
|15    |MF      |URU   |Federico Valverde|1.82  |
|17    |FW      |ESP   |Lucas Vázquez    |1.73  |
|18    |FW      |SRB   |Luka Jović       |1.82  |
|19    |DF      |ESP   |Álvaro Odriozola |1.76  |
|20    |FW      |BRA   |Vinícius Júnior  |1.76  |
|21    |MF      |NOR   |Martin Ødegaard  |1.78  |
|22    |MF      |ESP   |Isco             |1.76  |
|23    |DF      |FRA   |Ferland Mendy    |1.80  |
|24    |FW      |DOM   |Mariano          |1.80  |
|25    |FW      |BRA   |Rodrygo          |1.74  |

- What percent of Real Madrid is Spanish?
- What percent of Real Madrid is taller than 1.85 meters?
- What percent of Real Madrid is tall and Spanish?

If you were to randomly sample a player from the Real Madrid team:
- What is the probability that they are Spanish?
- What is the probability that they are tall?
- What is the probability that they are tall and Spanish?

# Real Madrid in Jamovi
Open up **real-madrid.csv** in Jamovi.

Now we are going to answer these same questions using typical spreadsheet functions, which can also be found in Excel and Google Sheets:

If you were to randomly sample a player from the Real Madrid team:
- What is the probability that they are Spanish?
- What is the probability that they are tall?
- What is the probability that they are tall and Spanish?

## How do we do this?
### What is the probability that they are Spanish?
We want a new column ```Spanish```, consisting of 1s for players who are Spanish and 0s for players who are not Spanish. Then we take the mean of ```Spanish``` and that is the probability of randomly sampling a Spanish player from Real Madrid!

The ```Spanish``` column can be created as a **NEW COMPUTED VARIABLE**. But what do we **compute**?

Obviously, we need something like:
```
Nation == "ESP"
```
but this simply gives us values of **true** and **false**. We want 1s and 0s.

So we also need something like this:
```
IF(expression, value, alternative value)
```
What does this mean?
```
If the expression is true for this row,
  then assign the first value.
But if the expression is false for this row,
  then assign the second value.
```
Once we have our ```Spanish``` column, we can just examine the mean value. That will be the proportion of Spanish players on Real Madrid; which is also the probability of randomly sampling a Spanish player from the team.

# Sampling distributions
Open up **multiple-studies-2.csv** in Jamovi.

Remember this data set from your previous lab (Lab 6)?

Just to refresh your memory, here is another description of the data.

You will see data that look like this:
```
study, N.10, N.1000
1, 5.58549777904822, 10.0618777503937
2, 11.6519963187774, 10.7455786613312
3, 12.3149249292267, 9.58781879485058
```
Let us focus on column **N.1000**. This variable has 1000 sample means, each based on a random sample of 1000 people. The value in each row of **N.1000** is a sample mean based on a random sample of 1000 people. Each sample is based on a different random sample of the same population. There are 1000 rows of **N.1000**, so it is like we did the same study 1000 times.

In other words, **N.1000** tells us about the sampling distribution of sample means, when the sample size is 1000 (**N = 1000**).

Let me repeat something here: Each sample in **N.1000** is taken from the same population.

Let us assume that **N.1000** shows us the sample means of student test scores, measured in the exact same testing conditions and on the same population of students.

## How unusual is a new sample mean?
I decide to lengthen the duration of the test by 10 minutes. This gives students more time and might increase the average score. It may increase the **mean population score**. Does it?

In order to test my hypothesis, I gather test scores from a new random sample of 1000 students, except that I give them 10 minutes extra to finish their test. The mean score of my new sample is 10.5. How unusual is this new sample, compared to the sampling distribution?

The population mean is actually 10 in this example. I know this because I made up the data. But we can also be confident because the mean of **N.1000** is around 10.

10.5 is larger than 10. So maybe the increased test duration improved scores?

### What is the probability of 10.5 or higher?
The sampling distribution of means shows us that we can still have some variation in the sample mean, even when all of the conditions are the same. That variation is simply due to chance!

I increased the duration of the test by 10 minutes and got a new sample mean of 10.5. That is higher than 10, but perhaps that is due to chance.

We have the sampling distribution of means so we can actually measure the probability of getting 10.5 or higher. That probability can tell us how unusual this new sample mean is. If the probability of getting a sample mean of 10.5 or higher is very low then perhaps test duration had an effect!

Let us measure the probability of getting a sample mean of 10.5 or higher, when sample size is 1000. We can analyze **N.1000** in Jamovi using the same steps we took to find all the tall players on Real Madrid.

Let us do this! The probability of getting 10.5 or higher is:

- 70 / 1000
- 0.07

That seems low. Maybe increased test duration did increase the mean score?

## But never have the sampling distribution!
That's right. But we do have the Central Limit Theorem.

That is enough for today.

But how about a preview of next class?

If we examine the histogram for **N.1000** we can see that the sample means are normally distributed. That makes sense. 1000 is a pretty large sample size.

If **N.1000** follows a normal distribution then we can fully describe it with only 2 parameters:
- the population mean
  - we assume is 10
- the standard error of the mean
  - take the standard deviation of the **N.1000**
