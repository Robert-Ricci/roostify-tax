README.md
# Challange
# Write a program that calculates income tax based on the following rules: 
# - The portion of the income that is less than $10k is untaxed
# - The portion of the income that is less than $20k is taxed at 10%
# - The portion of the income that is less than $50k is taxed at 20%
# - Any portion of the income that is above $50k is taxed at 30%

# 1. Assume this application will be used by a 3rd party tax consultant who will have to run this for 100 clients.
# Write a program that is scalable.
# The program should take the $ income and return the tax amount.
# 2. Imagine there are actually 50+ brackets that change every year, and we need to compute 1 Billion income tax projections every year.
# Describe in a few bullet points how you’d build a solution that scales.

Part 1

* First I wrote a program that would just return the tax percent amount of the whole number, not a scale. 

* Just to make sure my inputs were working I put it in a hash, so that if percent values needed to be changed you would only need to change it once. 

* Once I new that I could enter a income amount i changed the code to figure out what the tax amount is. 

* I previosly had two seperate hashes one for tax percents and one for income ranges. I realized that it made more sense to combine them as sets, and make it an array of hashes. That way when a I called them I could do it with one index.  

* I first started with just an if else conditional, which would work for lower ranges, but when I started getting into larger numbers I realized that a while loop would work better to iterate over the number. 

* In my head what should be happening is that a number is first checked to see if it is les than $10000, if so that the tax is $0\

* Next if its in the next braket I would take $10000 off the top since that amount isnt taxed, and I would tax that amount. 

* After that is where is started to get trickey, becaue you have two differnet brackets to worry about. Thats why I went with the loop, it will check the value, subtract the curent max number, and figure out the tax. Then it will repeat, while the income is larger than the max. 

* In order to scale this I tried to abstract as much as I could, and still have it make sense. I'm sure I could have have done something better, I'm not even convienced it works properly, but this is what I was able to come up with in the time I had. 

Part 2

* As for even larger scaling I would want to create a program that can import data from another source. 
* It would be from another application where the information has been compiled already. 
* it would use a database that could hold names, incomes, and tax liability. 