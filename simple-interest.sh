#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "============================================"
echo "        Simple Interest Calculator         "
echo "============================================"

# Get Principal
echo -n "Enter the Principal amount: "
read principal

# Get Rate of Interest
echo -n "Enter the Rate of Interest (% per year): "
read rate

# Get Time Period
echo -n "Enter the Time Period (in years): "
read time

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display Results
echo "============================================"
echo "              Results                      "
echo "============================================"
echo "Principal Amount    : $principal"
echo "Rate of Interest    : $rate%"
echo "Time Period         : $time year(s)"
echo "--------------------------------------------"
echo "Simple Interest     : $simple_interest"
echo "Total Amount        : $total_amount"
echo "============================================"
