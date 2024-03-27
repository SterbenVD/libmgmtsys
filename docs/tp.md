---
title: STesting Plan for Library Management System
author: Group 14
geometry: margin=1.5cm
documentclass: extarticle
classoption: table
urlcolor: blue

fontsize: 12pt
header-includes:
  - \rowcolors{2}{gray!5}{gray!15}
  - \usepackage{setspace}
  - \onehalfspacing
---

<!--

Submit a tentative test plan for your software.
You will again submit the final test plan and test report later on after completing your coding and executing the test cases.
This tentative test plan will help you during the coding phase with better understanding of what is actually expected at the end.
You are required to perform functional testing.
If you wish, you can also perform structural testing.
Some extra marks may be given for doing structural testing.
During the testing phases, it is recommended to use softwares such as Jira for defect logging and tracking.
Your report should contain the following sections.

# Test Overview
List of all operations/modules that you plan to test

# Test Details
Unit tests for the modules
Integrating testing and the order in which you will integrate your modules and test cases for integrated modules.
System testing
Structural tests (optional)
Performance test
Stress test (optional)

# Test Analysis
We discussed the following seven types of black box testing in the class: equivalence class partitioning, boundary value analysis, cause-effect graphing, pair-wise testing, special cases, error guessing and state based testing.
Which of these methods did you use for generating the test cases, for which modules and the count of test cases.
Report this functional test summary in the form of a table.
Structural test plan/report (optional)
Performance test plan/report
Stress test plan/report (optional)

 -->

# Overview

## Context

The Library Management System is a software application that is designed to manage the operations of a library.

The system will:

- Provide a user-friendly interface for the library staff to manage the library resources, such as books, journals, and other e-resources.
- Provide a user interface for the library members to search for and borrow library resources.
- Automate the process of managing the library resources, including the cataloging, circulation, and inventory management.
- Provide reports and analytics to help the library staff to make informed decisions about the library operations.

## Purpose

The purpose of this document is to outline the test plan for the Library Management System.

The test plan will include the following:

- Unit tests for the modules
- Integrating testing and the order in which the modules will be integrated
- Test cases for the integrated modules
- System testing for the entire system
- Performance testing for the backend services, APIs, and database

\newpage

# Test Details

Currently, the system is divided into the following modules:

- Render
- Authentication
- Admin
- Member
- Librarian

## Render Module

Render module is responsible for rendering the UI components.
Since it is a frontend module, a lot of its functionality will be tested manually.

\newpage

# Test Analysis

We will use the following methods for generating the test cases:

- Special cases
- Error guessing
- State based testing

The test cases will be generated based on the requirements and specifications of the system.

The following table summarizes the functional test cases for the modules:

## Performance Test Plan

\newpage

# References

- [Pankaj Jalote's book on Software Engineering](https://books.google.co.in/books?id=M-mhFtxaaskC&printsec=copyright&redir_esc=y#v=onepage&q&f=false)
