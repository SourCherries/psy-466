# Lab 5: Correlations

## Set up

### Sources of data for this lab
We use data from the [World Happiness Report](http://worldhappiness.report/). A .csv of the data can be found here: [WHR2018.csv](/psy-466/data/WHR2018.csv)

### Simulations {#simulate}

#### Clean up {#cleanup}
We are making up our own data here. So we want a fresh new Jamovi session without any existing data. If you have already opened the WHR2018.csv file then you can close and reopen Jamovi.

By default, Jamovi creates 3 nominal variables called ```A```, ```B``` and ```C```. Let's get rid of these variables. Select those columns then ```Data > Delete``` to remove them.

Before we make fake data, we need one more step.

#### Telling Jamovi that we want 10 people {#want-10}
Let's create a new variable for all of the fake people in our data set: ```Data > Setup > NEW DATA VARIABLE```

The new variable name is ```A``` by default. Rename this variable ```people``` and set the variable type as **ID** instead of **Nominal**.

Now we are ready to tell Jamovi that there are 10 people in our data. Using your cursor, select the 10th cell of ```people``` and enter the value ```1```. In other words, type the value ```1``` and hit the ```ENTER``` key on your keyboard.

Now Jamovi knows that there should be 10 rows of data. In our case, that means 10 **people**. In the ping-pong example from our lecture, this could be 10 **swings** instead of 10 **people**.

How do we know this worked? In our spreadsheet, we can see row numbers to the far left. Row numbers 1 to 10 should now be written in dark black.

#### Random data {#random-data}
This is the easy part. Select a new column in our spreadsheet and create a NEW COMPUTED VARIABLE:
```
Data > Setup > NEW COMPUTED VARIABLE
```
The new variable name will be ```B```. You should also see a text box with an equals sign in it. You can type something called a **formula** into this text box. We will simply enter this:
```
NORM(0, 1)
```
and hit the ```ENTER``` key.

Look at your spreadsheet. Our new variable ```B``` will now have 10 random values.

#### Did we really need to tell Jamovi that we wanted 10 people?
See for yourself. Start over again with a [new Jamovi session](#cleanup). But now skip ahead and try to [generate some random data](#random-data). What happened? Nothing happened. Jamovi does not know how many rows to fill up with numbers.

What if you already have data open because you opened up a data file? [Generating random data](#random-data) will now work. Your new variable will have as many rows as the existing data!


Later on in the text I refer to [Simulations](#simulate).
