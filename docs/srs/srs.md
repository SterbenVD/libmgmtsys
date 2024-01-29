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
      - [Logout](#logout)
      - [View Profile](#view-profile)
      - [Edit Profile](#edit-profile)
    - [Use Cases related to administration](#use-cases-related-to-administration)
      - [Add new member](#add-new-member)
      - [Remove member](#remove-member)
      - [Update member](#update-member)
      - [Add a fine](#add-a-fine)
      - [Remove a fine](#remove-a-fine)
      - [Update a fine](#update-a-fine)
      - [Pay a fine](#pay-a-fine)
    - [Use Cases related to books/journals/e-resources](#use-cases-related-to-booksjournalse-resources)
      - [Add new book](#add-new-book)
      - [Remove book](#remove-book)
      - [Update book](#update-book)
      - [Add new book copy](#add-new-book-copy)
      - [Remove book copy](#remove-book-copy)
      - [](#)
      - [View New Arrivals](#view-new-arrivals)
      - [View Popular Books](#view-popular-books)
    - [Miscellanous Use Cases](#miscellanous-use-cases)
      - [View Infomation/FAQs (Frequently Asked Questions)](#view-infomationfaqs-frequently-asked-questions)
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

#### Logout

- **Actor**: User
- **Description**: The user logs out of the system.
- **Preconditions**: The user is logged in.
- **Postconditions**: The user gets logged out.
- **Normal Flow**:
  1. The user clicks on the logout button.
  2. The system logs out the user.
  3. The system displays the home page of a non-logged in user.

#### View Profile

- **Actor**: User
- **Description**: The user views their profile.
- **Preconditions**: The user is logged in.
- **Postconditions**: The user views their profile and statistics related to their account.
- **Normal Flow**:
  1. The user clicks on the profile button.
  2. The system displays the profile page of the user.

#### Edit Profile

- **Actor**: User
- **Description**: The user edits their profile.
- **Preconditions**: The user is logged in.
- **Postconditions**: The user changes details of their profile.
- **Normal Flow**:
  1. The user clicks on the profile button.
  2. The system displays the profile page of the user.
  3. The user clicks on the edit profile button.
  4. The system displays a form to edit the profile.
  5. The user edits the profile.
  6. The user clicks on the save button.
  7. The system saves the changes.
  8. The system displays the profile page of the user.
- **Alternative Flows**:
    - The user clicks on the cancel button.
        1. The system does not save the changes.
        2. The system displays the profile page of the user.
    - The user enter invalid data.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the edit profile page again.

### Use Cases related to administration

#### Add new member

- **Actor**: Admin
- **Description**: The admin adds a new member to the system.
- **Preconditions**: The admin is logged in.
- **Postconditions**: The new member is added to the system.
- **Normal Flow**:
  1. The admin clicks on the add member button.
  2. The system displays a form to add a new member.
  3. The admin enters the details of the new member.
  4. The admin clicks on the save button.
  5. The system saves the details of the new member.
  6. The system displays the list of members.
- **Alternative Flows**:
    - The admin clicks on the cancel button.
        1. The system does not save the changes.
        2. The system displays the list of members.
    - The admin enter invalid data.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the add member page again.
    - The admin enters data that already exists.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the add member page again.

#### Remove member

- **Actor**: Admin
- **Description**: The admin removes a member from the system.
- **Preconditions**: The admin is logged in.
- **Postconditions**: The member is removed from the system.
- **Normal Flow**:
  1. The admin clicks on the remove member button.
  2. The system displays a form to remove a member.
  3. The admin enters the details of the member to be removed.
  4. The admin clicks on the save button.
  5. The system removes the member.
  6. The system displays the list of members.
- **Alternative Flows**:
    - The admin clicks on the cancel button.
        1. The system does not save the changes.
        2. The system displays the list of members.
    - The admin enter invalid data.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the remove member page again.

#### Update member

- **Actor**: Admin
- **Description**: The admin updates the details of a member.
- **Preconditions**: The admin is logged in.
- **Postconditions**: The details of the member are updated.
- **Normal Flow**:
  1. The admin clicks on the update member button.
  2. The system displays a form to update the details of a member.
  3. The admin enters the details of the member to be updated.
  4. The admin clicks on the save button.
  5. The system updates the details of the member.
  6. The system displays the list of members.
- **Alternative Flows**:
    - The admin clicks on the cancel button.
        1. The system does not save the changes.
        2. The system displays the list of members.
    - The admin enter invalid data.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the update member page again.

#### Add a fine

- **Actor**: Librarian
- **Description**: The librarian adds a fine to a member.
- **Preconditions**: The librarian is logged in.
- **Postconditions**: The fine is added to the member.
- **Normal Flow**:
  1. The librarian clicks on the add fine button.
  2. The system displays a form to add a fine.
  3. The librarian enters the details of the fine.
  4. The librarian clicks on the save button.
  5. The system adds the fine to the member.
  6. The system displays the list of fines.
- **Alternative Flows**:
    - The librarian clicks on the cancel button.
        1. The system does not save the changes.
        2. The system displays the list of fines.
    - The librarian enter invalid data.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the add fine page again.

#### Remove a fine

- **Actor**: Librarian
- **Description**: The librarian removes a fine from a member.
- **Preconditions**: The librarian is logged in.
- **Postconditions**: The fine is removed from the member.
- **Normal Flow**:
  1. The librarian clicks on the remove fine button.
  2. The system displays a form to remove a fine.
  3. The librarian enters the details of the fine to be removed.
  4. The librarian clicks on the save button.
  5. The system removes the fine from the member.
  6. The system displays the list of fines.
- **Alternative Flows**:
    - The librarian clicks on the cancel button.
        1. The system does not save the changes.
        2. The system displays the list of fines.
    - The librarian enter invalid data.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the remove fine page again.

#### Update a fine

- **Actor**: Librarian
- **Description**: The librarian updates the details of a fine.
- **Preconditions**: The librarian is logged in.
- **Postconditions**: The details of the fine are updated.
- **Normal Flow**:
  1. The librarian clicks on the update fine button.
  2. The system displays a form to update the details of a fine.
  3. The librarian enters the details of the fine to be updated.
  4. The librarian clicks on the save button.
  5. The system updates the details of the fine.
  6. The system displays the list of fines.
- **Alternative Flows**:
    - The librarian clicks on the cancel button.
        1. The system does not save the changes.
        2. The system displays the list of fines.
    - The librarian enter invalid data.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the update fine page again.

#### Pay a fine

- **Actor**: User
- **Description**: The user pays a fine.
- **Preconditions**: The user is logged in.
- **Postconditions**: The fine is paid.
- **Normal Flow**:
  1. The user clicks on the pay fine button.
  2. The system displays a form to pay a fine.
  3. The user pays the fine using a payment method.
  4. The system verifies the payment.
  5. The system marks the fine as paid.
  6. The system displays the list of fines.
- **Alternative Flows**:
    - The user clicks on the cancel button.
        1. The system does not save the changes.
        2. The system displays the list of fines.
    - The payment fails.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the pay fine page again.

### Use Cases related to books/journals/e-resources

#### Add new book

- **Actor**: Librarian
- **Description**: The librarian adds a new book to the system.
- **Preconditions**: The librarian is logged in.
- **Postconditions**: The new book is added to the system.
- **Normal Flow**:
  1. The librarian clicks on the add book button.
  2. The system displays a form to add a new book.
  3. The librarian enters the details of the new book.
  4. The librarian clicks on the save button.
  5. The system saves the details of the new book.
  6. The system displays the list of books.
- **Alternative Flows**:
    - The librarian clicks on the cancel button.
        1. The system does not save the changes.
        2. The system displays the list of books.
    - The librarian enter invalid data.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the add book page again.
    - The librarian enters data that already exists.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the add book page again.

#### Remove book

- **Actor**: Librarian
- **Description**: The librarian removes a book from the system.
- **Preconditions**: The librarian is logged in.
- **Postconditions**: The book is removed from the system.
- **Normal Flow**:
  1. The librarian clicks on the remove book button.
  2. The system displays a form to remove a book.
  3. The librarian enters the details of the book to be removed.
  4. The librarian clicks on the save button.
  5. The system removes the book.
  6. The system displays the list of books.
- **Alternative Flows**:
    - The librarian clicks on the cancel button.
        1. The system does not save the changes.
        2. The system displays the list of books.
    - The librarian enter invalid data.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the remove book page again.

#### Update book

- **Actor**: Librarian
- **Description**: The librarian updates the details of a book.
- **Preconditions**: The librarian is logged in.
- **Postconditions**: The details of the book are updated.
- **Normal Flow**:
  1. The librarian clicks on the update book button.
  2. The system displays a form to update the details of a book.
  3. The librarian enters the details of the book to be updated.
  4. The librarian clicks on the save button.
  5. The system updates the details of the book.
  6. The system displays the list of books.
- **Alternative Flows**:
    - The librarian clicks on the cancel button.
        1. The system does not save the changes.
        2. The system displays the list of books.
    - The librarian enter invalid data.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the update book page again.

#### Add new book copy

- **Actor**: Librarian
- **Description**: The librarian adds a new book copy to the system.
- **Preconditions**: The librarian is logged in.
- **Postconditions**: The new book copy is added to the system.
- **Normal Flow**:
  1. The librarian clicks on the add book copy button.
  2. The system displays a form to add a new book copy.
  3. The librarian enters the details of book that the copy belongs to.
  4. The librarian clicks on the save button.
  5. The system saves the details of the new book copy.
  6. The system updates the number of copies of the book.
  7. The system displays the home page of the librarian.
- **Alternative Flows**:
    - The librarian clicks on the cancel button.
        1. The system does not save the changes.
        2. The system displays the home page of the librarian.
    - The librarian enter invalid data.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the add book copy page again.

#### Remove book copy

- **Actor**: Librarian
- **Description**: The librarian removes a book copy from the system.
- **Preconditions**: The librarian is logged in.
- **Postconditions**: The book copy is removed from the system.
- **Normal Flow**:
  1. The librarian clicks on the remove book copy button.
  2. The system displays a form to remove a book copy.
  3. The librarian enters the details of the book copy to be removed.
  4. The librarian clicks on the save button.
  5. The system removes the book copy.
  6. The system updates the number of copies of the book.
  7. The system displays the home page of the librarian.
- **Alternative Flows**:
    - The librarian clicks on the cancel button.
        1. The system does not save the changes.
        2. The system displays the home page of the librarian.
    - The librarian enter invalid data.
        1. The system displays an error message.
        2. The system does not save the changes.
        3. The system displays the remove book copy page again.

#### 

#### View New Arrivals

- **Actor**: User
- **Description**: The user views the list of new arrivals in the library.
- **Preconditions**: None
- **Postconditions**: The list of new arrivals is displayed.
- **Normal Flow**:
  1. The user clicks on the catalog button.
  2. The user clicks on the new arrivals button.
  3. The system displays the list of new arrivals.

#### View Popular Books

- **Actor**: User
- **Description**: The user views the list of popular books in the library.
- **Preconditions**: None
- **Postconditions**: The list of popular books is displayed.
- **Normal Flow**:
  1. The user clicks on the catalog button.
  2. The user clicks on the popular books button.
  3. The system displays the list of popular books.



### Miscellanous Use Cases

#### View Infomation/FAQs (Frequently Asked Questions)

- **Actor**: User
- **Description**: The user views the information/FAQs of the library.
- **Preconditions**: None
- **Postconditions**: Information/FAQs of the library are displayed.
- **Normal Flow**:
  1. The user clicks on the information/FAQs button.
  2. The system displays the information/FAQs page.

## Assumptions and Dependencies

## Constraints

# Specific Requirements

# Acceptance Criteria

# Appendix

## References

Note that the following references are clickable links.

- [Library Management System](https://en.wikipedia.org/wiki/Library_management_system)
- Existing SRS such as:
  - [https://www.studocu.com/in/document/national-institute-of-technology-rourkela/software-engineering/library-management-system-srs/7138104](https://www.studocu.com/in/document/national-institute-of-technology-rourkela/software-engineering/library-management-system-srs/7138104)
  - [https://www.slideshare.net/Chetan2608/software-requirements-specification-of-library-management-system](https://www.slideshare.net/Chetan2608/software-requirements-specification-of-library-management-system)
