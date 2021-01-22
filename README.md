# IntercomInvite

Technical problem

We have some customer records in a text file (customers.txt) -- one customer per line, JSON
lines formatted. We want to invite any customer within 100km of our Dublin office for some food
and drinks on us. Write a program that will read the full list of customers and output the names
and user ids of matching customers (within 100km), sorted by User ID (ascending).
- You must use the first formula from this Wikipedia article to calculate distance. Don't
forget, you'll need to convert degrees to radians.
- The GPS coordinates for our Dublin office are 53.339428, -6.257664.
- You can find the Customer list here.

We're looking for you to produce working code, with enough room to demonstrate how to
structure components in a small program. Good submissions are well composed. Calculating
distances and reading from a file are separate concerns. Classes or functions have clearly
defined responsibilities. Poor submissions will be in the form of one big function. It’s impossible
to test anything smaller than the entire operation of the program, including reading from the
input file.

`output the names and user ids of matching customers (within 100km), sorted by User ID (ascending).`
## Installation

Clone the repository to your local machine.

And then execute:

    $ bundle install

## Usage

To run the tests and linting execute:
    $ rake

To run the program execute:
    $ rake run