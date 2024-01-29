---
title: SRS for Library Management System
author: Group 14
geometry: margin=2cm
documentclass: extarticle
fontsize: 14pt
header-includes:
    - \usepackage{setspace}
    - \onehalfspacing
---

# Index

- [Index](#index)
- [Introduction](#introduction)
  - [Overview](#overview)
  - [Purpose](#purpose)
  - [Scope](#scope)
- [Overall Description](#overall-description)
  - [Product Perspective](#product-perspective)
  - [User Characteristics](#user-characteristics)
    - [Admin](#admin)
    - [Librarian](#librarian)
    - [Faculty](#faculty)
    - [Student](#student)
    - [User](#user)
  - [Product Functions](#product-functions)
    - [Use Cases related to user management](#use-cases-related-to-user-management)
      - [Login](#login)
  - [Assumptions and Dependencies](#assumptions-and-dependencies)
  - [Constraints](#constraints)
- [Specific Requirements](#specific-requirements)
- [Acceptance Criteria](#acceptance-criteria)
- [Appendix](#appendix)
  - [References](#references)

\newpage

# Introduction

## Overview

The Library Management System is a software system that will automate the processes involved in the management of a library.

Section [Purpose](#purpose) gives a brief description of the purpose of the system.

Section [Scope](#scope) gives a brief description of the scope of the system, including the stakeholders and the features of the system.



## Purpose

The purpose of this document is to provide a detailed description of the requirements for the Library Management System for a university. It will explain the purpose and features of the system, the interfaces of the system, what the system will do, the constraints under which it must operate and how the system will react to external stimuli. This document is intended for both the stakeholders and the developers of the system.

## Scope

The system will be used by the following stakeholders:

- Librarian
- Administrator
- Faculty
- Students

The system will manage the following:

- Books and book copies
- E-Resources and Journals
- Members of the library
- Fines
- Book issues, returns, reservations and requests

\newpage

# Overall Description

## Product Perspective

The Library Management System will be a standalone system that will be used by the library of a university. It will be used to manage the books, journals, e-resources, members and fines of the library. It will also be used to manage the issues, returns, reservations and requests of the library.

## User Characteristics

Note that **user** is a generic term that refers to any of the below actors.

Below is the list of users that we intend to support.

### Admin

Admin refers to the **administrator** of the library management system. The admin is responsible for the management of the library management system and users of the system.

### Librarian

The librarian is responsible for the following:

- Managing the books in the library.
- Managing the E-Resources / Journals in the library.
- Managing book copies in the library.
- Issuing books to the users.
- Managing and issuing fine to the users.

### Faculty

The faculty can perform the following actions:

- Issue books from the library.
- Return books to the library.
- Read E-Resources / Journals.
- View the list of books issued or returned by them.
- Request for new books to be added to the library.
- Reserve books in advance when they are not available.

### Student

The student can perform the following actions:

- Issue books from the library.
- Return books to the library.
- Read E-Resources / Journals.
- View the list of books issued or returned by them.
- Request for new books to be added to the library.
- Reserve books in advance when they are not available.

### User

Whether a user is logged in or not, they can perform the following actions:

- Search for books in the library.
- View the list of books in the library.
- View the list of Popular books/New Arrivals in the library.
- Read FAQs of the library.

In case the user is logged in, they can log out of the system. If the user is not logged in, they can log in to the system.

## Product Functions

### Use Cases related to user management

#### Login

- **Actor**: User
- **Description**: The user logs in to the system.
- **Preconditions**: The user is not logged in.
- **Postconditions**: The user is logged in.
- **Normal Flow**:
  1. The user enters their username and password.
  2. The user clicks on the login button.
  3. The system verifies the credentials.
  4. The system logs in the user.
  5. The system displays the home page of the user.
- **Alternative Flows**:
    - The user enters incorrect credentials.
        1. The system displays an error message.
        2. The system displays the login page again.
    - The user clicks on the forgot password link.
        1. The system displays a form to enter the email address.
        2. The user enters the email address.
        3. The system sends a password reset link to the email address.
        4. The user clicks on the password reset link.
        5. The system displays a form to enter the new password.
        6. The user enters the new password.
        7. The system resets the password.
        8. The system displays the login page.
    - The user clicks on the cancel button.
        1. The system displays the home page of a non-logged in user.

## Assumptions and Dependencies

## Constraints

# Specific Requirements

# Acceptance Criteria

# Appendix

## References

