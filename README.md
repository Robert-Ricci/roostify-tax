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

# Notes

* First I wrote a program that would just return the tax percent amount of the whole number, not a scale. 

* Just to make sure my inputs were working I put it in a hash, so that if percent values needed to be changed you would only need to change it once. 

* Once I new that I could enter a income amount i changed the code to figure out what the tax amount is. 

* To scale i created another hash that had the range in it, instead of hard coding them. 

# 