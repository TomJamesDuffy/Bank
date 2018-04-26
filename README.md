# Week 10 Makers Academy - Bank Tech Test
This is the first practice tech test set during the tenth week of Makers Academy. This program is a simple banking program.

## Specification

### Model

![Program Structure](https://image.ibb.co/cp5xtc/Bank_Tech_Test_Diagram.jpg)

### Setup

1.) Run bundle install  
2.) Run RSpec to confirm tests are working

### Approach

The first step I took was to try and frame the problem as a diagram (see above). I then to tackled the aspects of the program that were most important from the users point of view. That is, having the ability to withdraw and deposit from their bank. Followed by the ability to view the balance. These segments were test driven. I then moved onto the other elements of the program such as storing the data in a transaction object and printing the transactions out using a statement class.

### How to use

The two main classes are the account class and the display class.  

To create a new account instance create an object in the usual way.  

`a = Account.new`

To withdraw and deposit into your account   

`a.withdraw(amount)`
`a.deposit(amount)`

To view your balance, pass your account to the display class as below.  

`Display.statement(a)`

--------------------

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
