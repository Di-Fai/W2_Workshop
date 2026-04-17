# Requirements and Conceptual Model


End user: Lana, the dog-walking business owner

What Lana needs to do:

keep track of customers
keep track of dogs
schedule walks
know which dog belongs to which customer
record dates, times, and maybe payments

Who is the end user?
Lana — the dog walker. She needs to look up client info, schedule walks, and track payments.
What categories of data does she need to track?
Think about what Lana deals with every day:

Her clients (the dog owners)
The dogs she walks
The walks she schedules
Payments she receives

For each category, what specific info matters?
Category,/           Specific Info/  
-Client's:             Name, phone, email, address
-Dogs:                Dog name, breed, age, owner               
-Walks:               Date, time, duration, which dog, which walker
-Payment:            Amount, date paid, which walk, paid or not


# Logical Model

1. Clients — the dog owners
2. Dogs — the pets being walked
3. Walks — each scheduled walk


Step 7 — Define attributes (columns) for each table:
CLIENTS table:
Column              Data Type
-client_id (PK):      INT
-first_name:          VARCHAR
-last_name :          VARCHAR
-phone :              VARCHAR
-email:              VARCHAR
-address:            VARCHAR

DOGS table:
Column             Data Type
-dog_id (PK):      INT
-dog_name:         VARCHAR
-breed:            VARCHAR
-age:              INT
-client_id (FK):   INT

WALKS table:
Column              Data Type
-walk_id (PK):      INT
-dog_id (FK):       INT
-walk_date:         DATE
-walk_time:         TIME
-duration_minutes:  INT
-notes:             VARCHAR

Payments Table:     Data Type
-Payment_ID:        INT    
-Client_ID:         INT
-Amount:            Num
-PaymentDate:       Date
-PaymentMethod:

 Identify relationships:

Clients → Dogs: One-to-many (one client can have multiple dogs)
Dogs → Walks: One-to-many (one dog can have many walks)

For many-to-many relationships:
Can one walk have many dogs? AND if one dog can be taken on many walks?
If Lana walks multiple dogs at once → yes, that's many-to-many between Dogs and Walks. In that case, we need a resolving table called Dog_Walks:

Column                  Data Type
-walk_dog_id (PK):      INT
-walk_id (FK):          INT
-dog_id (FK):           INT
