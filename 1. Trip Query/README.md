# 1. Trip Query

## Problem Statement
A travel and tour company has two tables relating to customers: *FAMILIES* and *COUNTRIES*. Each tour offers a discount if a minimum number of people book at the same time.

Write a query to print the maximum number of discounted tours any one family in the FAMILIES table can choose from.

## Schema
**FAMILIES**:
| :Name: | :Type: | :Description: |
| :ID: | :INTEGER: | :Unique ID of the family: |
| :NAME: | :STRING: | :Name of the primary contact: |
| :FAMILY_SIZE: | :INTEGER: | :Size of the family: |
