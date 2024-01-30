---
title: SRA for Library Management System
author: Group 14
geometry: margin=2cm
documentclass: extarticle
fontsize: 12pt
header-includes:
    - \usepackage{setspace}
    - \onehalfspacing
---

# Index
- [Index](#index)
- [Context Diagram](#context-diagram)
- [Data Flow Diagram(s)](#data-flow-diagrams)
- [Function Point Analysis](#function-point-analysis)
  - [Internal Logic Files](#internal-logic-files)

\newpage

# Context Diagram

![Context Diagram](./sra/context.drawio.png)

This context diagram show an overview of the system. There are two main actors in the system: the librarian and the user. 

The librarian is responsible for:
- Managing the library which includes managing the books/e-resources/journals, and fines.
- In the physical world, procuring new books, and managing the existing books and transferring them between the library and the users.
- In the digital world, managing the e-resources and journals, and managing the existing e-resources and journals and transferring them between the library and the users.

The admin is responsible for managing the users.

The user is responsible for:
- Request/Borrow/Return/Reserve books/e-resources/journals.
- Paying fines.
- In the physical world, transferring books between the library and the user.

\newpage

# Data Flow Diagram(s)

\newpage

# Function Point Analysis

Consider the following table for function point analysis:

| Function Type            | Low Complexity | Average Complexity | High Complexity |
| ------------------------ | -------------- | ------------------ | --------------- |
| Internal Logic Files     | 7              | 10                 | 15              |
| External Interface Files | 5              | 7                  | 10              |
| External Inputs          | 3              | 4                  | 6               |
| External Outputs         | 4              | 5                  | 7               |
| External Inquiries       | 3              | 4                  | 6               |

## Internal Logic Files

Consider the following rating of internal logic files:

| Record Element Types | 1 - 19 | 20 - 50 | 51+ |
| -------------------- | ------ | ------- | --- |
| 1                    | Low    | Low     | Avg |
| 2 - 5                | Low    | Avg     | High |
| 6+                   | Avg    | High    | High |

Consider the following internal logic files:

| File Name | Record Element Types | Record Elements | Complexity |
| --------- | -------------------- | --------------- | ---------- |

