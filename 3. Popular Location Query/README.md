# 3. Popular Location Query

## Problem Statement
From the data tables, determine the location having the most companies. List the names of the employees who work in that location and the names of their companies. The output should consist of two columns: *PEOPLE.NAME COMPANIES.NAME*. The rows may be in any order.

## Schema
**PEOPLE**:
| Name | Type | Description |
| :---: | :---: | :---: |
| ID | INTEGER | Unique ID of the person. |
| NAME | STRING | NAME of the user |
| COMPANY_ID | INTEGER | ID of the company that person works for |

**COMPANIES**:
| Name | Type | Description |
| :---: | :---: | :---: |
| ID | INTEGER | Unique ID of the company |
| NAME | STRING | NAME of the company |
| LOCATIONID | STRING | ID of the location of the company |

**LOCATIONS**:
| Name | Type | Description |
| :---: | :---: | :---: |
| ID | STRING | Unique ID of the location |
| NAME | STRING | NAME of the location |

## Sample Data Tables
**PEOPLE**:
| ID | NAME | COMPANY_ID |
| :---: | :---: | :---: |
| 1 | Chris | 11 |
| 2 | Sam | 22 |
| 3 | Faker | 33 |

**COMPANIES**:
| ID | NAME | LOCATION_ID |
| :---: | :---: | :---: |
| 11 | Wright-Phillips | A1 |
| 22 | HazardEden | A1 |
| 33 | Palmieri | C3 |

**LOCATIONS**:
| ID | NAME |
| :---: | :---: |
| A1 | Wrightmouth |
| B2 | New Joseph |

## Sample Output
`Chris Wright-Phillips`<br>
`Sam HazardEden`

## Explanation
Wrightmouth is the location with the most companies. Chris and Sam work there at the companies listed.
