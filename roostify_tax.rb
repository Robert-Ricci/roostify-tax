roostify_tax.rb 
class tax_bracket

@@bracket = 
        [{percent: 0, max: 10000},{percent: 10, max: 20000}, {percent: 20, max: 40000},{percent: 30, max: 50000}]
    # I set this array as a class variable,so I can use it in the methods in this class. I was always told to shy away from global
    #variables, becasue they are very powerful and can be accessed from anywhere in the program. 


def tax_calc(i)
    total = 0  # here I'm setting a vairble to hold the tax total 
    index = 1  # I'm setting an index to help with looping ovet the integer
    
    if i < @@bracket[0][:max]                     # This checks to see if the integer is greater that the first range
         total += i * @@bracket[0][:percent]      # if it isnt then it will just return zero. 
     else 
        while i > @@bracket[index][:max]          #This will iterate over the number as longs it is larger than the number thats it being compared to 
            total +=  ((i - @@bracket[index][:max]) * @@bracket[index][:percent]) / 100  #This section will subtract the current bracket from income and then add it to the total
            index +=1                           # The index will be incremented. If the income is still larger than max, than the loop continues.  
            
     end
     total                    # Once the loop ends the total is returned.
    end
    end


end



