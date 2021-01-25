## About
Program is written in Ruby and is compactible with and ruby version greater than 2.4.0.

The program reads the `customers.txt` placed in the root directory of the project.

When the program is run it outputs the results of the program to an `output.txt` file which is placed in the root of the program.

I have stored a copy of results based on the customers file provided in the the documentation test in a file called `result output.txt`.

## Installation
Clone the repository to your local machine:
`git clone git@github.com:rudedoc/intercom_invite.git`

Change into the directory:
`cd intercom_invite`

Install test and development dependencies:
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
