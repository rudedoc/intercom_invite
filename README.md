# IntercomInvite

## Problem
We have some customer records in a text file (customers.txt) -- one customer per line, JSON
lines formatted. We want to invite any customer within 100km of our Dublin office for some food
and drinks on us.

## About
Program is writen in Ruby. Any version of ruby over 2.4.0 should be fine to you. There are no run time dependencies. I used the structure of a ruby for writing the program as it provides a set of standards for structuring the code, tests and linting.
## Installation

Clone the repository to your local machine:
`git clone git@github.com:rudedoc/intercom_invite.git`

Change into the directory:
`cd intercom_invite`

Install test development dependecies:
`bundle install`

Now the program should be ready to run.
## Usage
To run the program, in the root of the project folder run you can run the following command:
`rake run`
This will generate an output.txt file.

## Tests and Linting
To run the tests and linting, in the root of the project folder run you can run the following command:
`rake`
This will output rspec and rubocop linting reports.

## Proudest Achievement
### Selling a business to fund the purchase of a family home
In 2014 I was approached by a friend I previously worked with in the betting industry. He asked me if I could build a custom digital signage platform which would replace an existing service he had in his business. This would allow him to decouple his business from a troublesome technology provider. I understood the requirements and had a fully working product in a couple of weeks. I formed a company and began selling the software product as a service. Eventually it was rolled out to 250 locations around the country. In 2016 I sold the service to the previously mentioned business. The money sale from this gave my partner and I the deposit money we needed to get on the property ladder in Dublin. Whilst the annual revenue from the business was decent it could not outweigh the importance of establishing a permanent base for family. My son was born in 2012. At the time we were renting with no means to create a permanent situation for ourselves. I am proud of the fact that, when an opportunity came along I had the skills to capitalise and convert the opportunity into something that I felt was missing.

## Tech Test Requirements
- read the full list of customers ✓
- matching customers (within 100km) ✓
- sorted by User ID (ascending) ✓
- output the names and user ids to output file ✓
- You must use the first formula from this Wikipedia article to calculate distance ✓
- convert degrees to radians ✓
- produce working code ✓
- demonstrate how to structure components in a small program ✓
- Well composed ✓
- output the names and user ids of matching customers (within 100km), sorted by User ID (ascending) ✓
- Submit your grade via a service like Github, Gitlab, Bitbucket etc ✓
- Code must be tested ✓
- Please include the output of your program with your submission in a separate file, e.g., output.txt. ✓
## Checklist
- Read the question, understand the problem. ✓
- Read the question again, make sure you understand the problem. Underline what you need to answer. ✓
- Solve the problem. ✓
- Read the question again and check that you actually solved the problem. ✓
- A file explaining how to install, how to execute the code and how to run tests. ✓
- Proudest Achievement paragraph ✓