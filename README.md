# README

## Part 1

When signing up for Twentyeight Health, a patient has the ability to choose a single product from one or more categories:  Birth Control, Emergency Contraception, Testing Kits, OTC Products.  Each product also has attributes such as name, identifier, quantity, price, and instructions.  

Patients sign up a full name, email, date of birth, and the state in which they currently reside. 

The app also has a list of all US states (constants provided), whether or not we offer services in that state, and the minimum required age for a patient.

Using the codebase provided, model these objects and their relationships and seed the database.

**Implemented!!!!**

## Part 2

We have just been informed that certain products cannot be offered in some states.  
What types of questions come to mind?  How would you model this change?  Feel free to either implement in the codebase, sketch a diagram, or write your answer.

**Answer:**
The following questions come to mind:

1. Which products are not allowed in which states and why, what are the reasons?
2. Is the prohibition permanent or temporary?
3. Are there any legal or regulatory requirements that need to be considered?

So based on the information above, I would model this change by adding a new model, called "Prohibition," to the existing database schema. The Prohibition model could have the following attributes:

- id: integer PK
- state_id: integer FK
- product_id: FK
- reason: text (To add the reason or description of the prohibition)
- temporary: boolean (to indicate whether the prohibition is temporary or not)
- created_at: datetime
- updated_at: datetime

The Prohibition model would store information on the products that are not allowed in specific states, along with the reason for the prohibition and whether it is temporary or permanent.

To implement this change, I would create a new migration file to create the Prohibition model and its attributes, then run the migration. I would also update the appropriate controllers and views to handle the new model and its associations if is needed.


## Part 3

We’ve now been informed that certain products can be offered in some states, but the minimum age requirement is different for these products than all other ones in this state.
What types of questions come to mind?  How would you model this change?  Feel free to either implement in the codebase, sketch a diagram, or write your answer.

**Answer:**
The following questions come to mind:

1. Which states have products with different minimum age requirements compared to other products in that state?
2. What are the different minimum age requirements for the different products within each state?
3. How should this information be stored and accessed efficiently in the system?


So to model this change, I will adding a new attribute to the Product model called "age_limit" that would store the minimum age required to purchase the product. Additionally, I could create a new model called "StateProduct" that would act as a join table between the State and Product models. This new model would include two additional attributes: "age_limit" and "offer_services", that would store the minimum age requirement and availability of the product within the state.

The StateProduct model could have the following attributes:

- state_id FK
- product_id FK
- age_limit 
- offer_services

by having this setup, I could efficiently retrieve the different age requirements for each product within a specific state by querying the StateProduct table for all products associated with that state and retrieving their corresponding age limits. I also thing that we could determine which states have products with different age limits compared to other products within that state by comparing the age limits of the products associated with each state.



