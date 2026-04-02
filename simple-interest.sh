#!/bin/bash

# Simple Interest Calculator in Bash
# Inputs: Principal, Rate of Interest (%), Time in years

echo "===================================="
echo "   Simple Interest Calculator"
echo "===================================="

echo -n "Enter Principal Amount: "
read principal

echo -n "Enter Rate of Interest (% per annum): "
read rate

echo -n "Enter Time Period (in years): "
read time

# Calculate Simple Interest using bc for floating point support
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

echo "------------------------------------"
echo "Principal Amount     : ₹ $principal"
echo "Rate of Interest     : $rate %"
echo "Time Period          : $time years"
echo "Simple Interest      : ₹ $simple_interest"
echo "Total Amount         : ₹ $total_amount"
echo "------------------------------------"
