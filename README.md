# DiUS Checkout

## Running the code
The application has a simple test harness (although not required).
Execute `app` to run it and follow the prompt.

## Development

### Preparation
Install the dependencies for linting/testing
`bundle`

### Running test
`rspec`

### Liting
`rubocop`

### Extension
The code is easily extendable with more rule. Simply create a file with in the `rules` folder.  It needs to contain a lambda constant namespaced withing `Rules` module.  The lambda needs to accpet the item counts and the running total (in the specified order)

