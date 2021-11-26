# 1. Trip Query

## Problem Statement
A travel and tour company has two tables relating to customers: *FAMILIES* and *COUNTRIES*. Each tour offers a discount if a minimum number of people book at the same time.

Write a query to print the maximum number of discounted tours any one family in the FAMILIES table can choose from.

## Schema
**FAMILIES**:
| Name | Type | Description |
| :---: | :---: | :---: |
| ID | INTEGER | Unique ID of the family |
| NAME | STRING | Name of the primary contact |
| FAMILY_SIZE | INTEGER | Size of the family |

**COUNTRIES**:
| Name | Type | Description |
| :---: | :---: | :---: |
| ID | INTEGER | Unique ID of the country |
| NAME | STRING | Name of the country |
| MIN_SIZE | INTEGER | Minimum size group to get a discount |

## Sample Data Tables
**FAMILIES**:
| ID | NAME | FAMILY_SIZE |
| :---: | :---: | :---: |
| 1 | Alex Thomas | 9 |
| 2 | Chris Gray | 2 |

**COUNTRIES**:
| ID | NAME | MIN_SIZE |
| :---: | :---: | :---: |
| 1 | Bolivia | 2 |
| 2 | Cook Islands | 4 |
| 3 | Brazil | 4 |

## Sample Output and Explanation
Sample Output: 3 <br>
Explanation: The Thomas family can choose from any of the 3 tours and qualify for the discount. The Gray family only qualifies for 1.
