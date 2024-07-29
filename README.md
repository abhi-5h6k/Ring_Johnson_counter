Ring and Johnson Counter

This repository contains a Verilog module that implements both a ring counter and a Johnson counter.

These counters are commonly used in digital circuits for various counting and sequencing applications.

Module Description

The ring_johnson_cnt module has two counters:

1. Ring Counter: Circulates a single '1' or '0' through a shift register.
   
2. Johnson Counter: Circulates a pattern of '0's followed by '1's (or vice versa) through a shift register.
   
File Structure

ring_johnson_cnt.v: Contains the Verilog code for the ring and Johnson counters.

How It Works

1. Ring Counter
    The ring counter initializes to 2'b01 when reset.
    On each clock cycle, the bits rotate through the register.
   
2. Johnson Counter
    The Johnson counter initializes to 2'b00 when reset.
    On each clock cycle, the most significant bit is the inverted value of the least significant bit, and the least significant bit shifts left.
   
Usage

To use this module in your design, instantiate it in your top-level module and connect the clk, rst, doutr, and doutj signals appropriately. 

Make sure to provide an appropriate clock signal and reset signal to test the functionality of the counters.
