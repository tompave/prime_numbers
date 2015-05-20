# PrimeNumbers

A simple CLI utility that prints a table of multiplication products between prime numbers.

## Usage

```
prime_numbers --count 10
prime_numbers --help
```


## Installation

This utility is provided as a gem, but is not published on [rubygems.org](https://rubygems.org/).  
To install it:  

```
# get the code
git clone git@github.com:tompave/prime_numbers.git

# build the gem
cd prime_numbers
git checkout tags/v1.0.0
gem build prime_numbers.gemspec

# install the gem from the local gem archive file
gem install prime_numbers-1.0.0
```


## Tests

```
rake test
```
Tested with Ruby MRI 2.0.0 and above.

