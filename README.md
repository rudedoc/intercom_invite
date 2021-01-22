# IntercomInvite

## Problem

We have some customer records in a text file (customers.txt) -- one customer per line, JSON
lines formatted. We want to invite any customer within 100km of our Dublin office for some food
and drinks on us.

## Requirements:
- read the full list of customers ✓
- matching customers (within 100km) ✓
- sorted by User ID (ascending) ✓
- output the names and user ids to output file ✓
- You must use the first formula from this Wikipedia article to calculate distance ✓
-  convert degrees to radians ✓
- The GPS coordinates for our Dublin office are 53.339428, -6.257664 ✓
- produce working code ✓
- demonstrate how to structure components in a small program ✓
- Well composed ✓
- Calculating distances and reading from a file are separate concerns. ✓
- Classes or functions have clearly defined responsibilities. ✓
- output the names and user ids of matching customers (within 100km), sorted by User ID (ascending) ✓
- Submit code as if you intended to ship it to production ✓
- Submit your grade via a service like Github, Gitlab, Bitbucket etc ✓
- Code must be tested ✓
- Please include the output of your program with your submission in a separate file, e.g., output.txt. ✓
## Checklist
- implement program ✓
- A file explaining how to install, how to execute the code and how to run tests.
- Proudest Achievement paragraph

## Installation
Program is writen in Ruby.

Clone the repository to your local machine.

And then execute:
    $ bundle install
## Usage
To run the tests and linting execute:
    $ rake

To run the program execute:
    $ rake run