---
title: Library Management System
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
  - [Purpose](#purpose)
  - [Scope](#scope)
- [Specifications](#specifications)
  - [Actors](#actors)
    - [Admin](#admin)
    - [Librarian](#librarian)
    - [Faculty](#faculty)
    - [Student](#student)
    - [User](#user)
  - [Actions](#actions)
    - [Actions related to user management](#actions-related-to-user-management)
      - [Login](#login)
      - [Logout](#logout)
      - [View Profile](#view-profile)
      - [Update Profile](#update-profile)
    - [Actions related to administration](#actions-related-to-administration)
      - [Add new member](#add-new-member)
      - [Remove member](#remove-member)
      - [Update member details](#update-member-details)
      - [Add fine](#add-fine)
      - [Remove fine](#remove-fine)
      - [Update fine details](#update-fine-details)
      - [Pay fine](#pay-fine)
    - [Actions related to Books/E-Resources/Journals](#actions-related-to-bookse-resourcesjournals)
      - [Add new book](#add-new-book)
      - [Remove book](#remove-book)
      - [View New Arrivals](#view-new-arrivals)
      - [View Popular Books](#view-popular-books)
    - [Some miscellaneous actions](#some-miscellaneous-actions)
      - [View Information/FAQs](#view-informationfaqs)
      - [](#)
- [Conclusion](#conclusion)
- [Appendix](#appendix)
  - [Definitions, Acronyms, and Abbreviations](#definitions-acronyms-and-abbreviations)
  - [References](#references)

\newpage

Refer to [appendix](#appendix) for definitions of terms used in this document and references to the documents that we used to prepare the SRS.

# Introduction


## Purpose

Library Management System is a software used to manage the catalog, members and book issues of a library.

The purpose of this document is to describe the features that we intend to offer in the library management system. This is subject to change on further discussion with the client.

## Scope

The scope of this project is limited to the following:

- The system will be used by the following users:
  - Admin
  - Librarian
  - Faculty
  - Student
- The system will be used to manage the following:
  - Books and book copies
  - E-Resources / Journals
  - Members
  - Fines
  - Book issues, returns, reservations and requests

\newpage

# Specifications

## Actors

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

\newpage

## Actions

### Actions related to user management

#### Login

- **Actor**: User
- **Description**: The user logs in to the system.
- **Precondition**: The user is not logged in.
- **Main Flow**:
  1)  The user enters their username and password.
  2)  The system verifies the credentials.
  3)  The system logs in the user.
  4)  The system displays the home page.
- **Postcondition**: The user is logged in.
- **Alternative Flow**:
  - The user enters incorrect credentials.
    1)  The system displays an error message
    2)  The system prompts the user to enter the credentials again.
  - The user clicks on the cancel button.
    1)  The system displays the home page.

#### Logout

- **Actor**: User
- **Description**: The user logs out of the system.
- **Precondition**: The user is logged in.
- **Main Flow**:
  1)  The user clicks on the logout button.
  2)  The system logs out the user.
  3)  The system displays the home page.
- **Postcondition**: The user is logged out.

#### View Profile

- **Actor**: User
- **Description**: The user views their profile.
- **Precondition**: The user is logged in.
- **Main Flow**:
  1)  The user clicks on the profile button.
  2)  The system displays the profile page.
- **Postcondition**: The user is viewing their profile and statistics related to their account.

#### Update Profile

- **Actor**: User
- **Description**: The user updates their profile.
- **Precondition**: The user is logged in.
- **Main Flow**:
  1)  The user clicks on the profile button.
  2)  The system displays the profile page.
  3)  The user clicks on the update profile button.
  4)  The system displays the update profile page.
  5)  The user enters the details to be updated.
  6)  The user clicks on the submit button.
  7)  The system verifies the details.
  8)  The system updates the profile.
  9)  The system displays the profile page.
- **Postcondition**: The user's profile is updated.
- **Alternative Flow**:
  - The user enters incorrect details.
    1)  The system displays an error message.
    2)  The system prompts the user to enter the details again.
  - The user clicks on the cancel button.
    1)  The system displays the profile page.

### Actions related to administration

#### Add new member

- **Actor**: Admin
- **Description**: The admin adds a new member to the library.
- **Precondition**: The admin is logged in.
- **Main Flow**:
  1) The admin clicks on the add new member button.
  2) The system displays the add new member page.
  3) The admin enters the details of the new member.
  4) The admin clicks on the submit button.
  5) The system verifies the details.
  6) The system adds the new member to the library.
  7) The system displays the home page.
- **Postcondition**: The new member is added to the library.
- **Alternative Flow**:
  - The admin enters incorrect details.
    1) The system displays an error message.
    2) The system prompts the admin to enter the details again.
  - The admin clicks on the cancel button.
    1) The system displays the home page.
  - The student is already a member of the library.
    1) The system displays an error message.
    2) The system prompts the admin to enter the details again.

#### Remove member

- **Actor**: Admin
- **Description**: The admin removes a member from the library.
- **Precondition**: The admin is logged in.
- **Main Flow**:
  1) The admin clicks on the remove member button.
  2) The system displays the remove member page.
  3) The admin enters the details of the member.
  4) The admin clicks on the submit button.
  5) The system verifies the details.
  6) The system removes the member from the library.
  7) The system displays the home page.
- **Postcondition**: The member is removed from the library.
- **Alternative Flow**:
  - The admin enters incorrect details.
    1) The system displays an error message.
    2) The system prompts the admin to enter the details again.
  - The admin clicks on the cancel button.
    1) The system displays the home page.
  - The member is not a member of the library.
    1) The system displays an error message.
    2) The system prompts the admin to enter the details again.

#### Update member details

- **Actor**: Admin
- **Description**: The admin updates the details of a member.
- **Precondition**: The admin is logged in.
- **Main Flow**:
  1) The admin clicks on the update member details button.
  2) The system displays the update member details page.
  3) The admin enters the details of the member.
  4) The admin clicks on the submit button.
  5) The system verifies the details.
  6) The system updates the details of the member.
  7) The system displays the home page.
- **Postcondition**: The details of the member are updated.
- **Alternative Flow**:
  - The admin enters incorrect details.
    1) The system displays an error message.
    2) The system prompts the admin to enter the details again.
  - The admin clicks on the cancel button.
    1) The system displays the home page.
  - The member is not a member of the library.
    1) The system displays an error message.
    2) The system prompts the admin to enter the details again.

#### Add fine

- **Actor**: Librarian
- **Description**: The librarian adds fine to a member.
- **Precondition**: The librarian is logged in
- **Main Flow**:
  1) The librarian clicks on the add fine button.
  2) The system displays the add fine page.
  3) The librarian enters the details of the member.
  4) The librarian clicks on the submit button.
  5) The system verifies the details.
  6) The system adds fine to the member.
  7) The system displays the home page.
- **Postcondition**: Fine is added to the member.
- **Alternative Flow**:
  - The librarian enters incorrect details.
    1) The system displays an error message.
    2) The system prompts the librarian to enter the details again.
  - The librarian clicks on the cancel button.
    1) The system displays the home page.
  - The member is not a member of the library.
    1) The system displays an error message.
    2) The system prompts the librarian to enter the details again.

#### Remove fine

- **Actor**: Librarian
- **Description**: The librarian removes fine from a member.
- **Precondition**: The librarian is logged in
- **Main Flow**:
  1) The librarian clicks on the remove fine button.
  2) The system displays the remove fine page.
  3) The librarian enters the details of the member.
  4) The librarian clicks on the submit button.
  5) The system verifies the details.
  6) The system removes fine from the member.
  7) The system displays the home page.
- **Postcondition**: Fine is removed from the member.
- **Alternative Flow**:
  - The librarian enters incorrect details.
    1) The system displays an error message.
    2) The system prompts the librarian to enter the details again.
  - The librarian clicks on the cancel button.
    1) The system displays the home page.
  - The member is not a member of the library.
    1) The system displays an error message.
    2) The system prompts the librarian to enter the details again.

#### Update fine details

- **Actor**: Librarian
- **Description**: The librarian updates the details of a fine.
- **Precondition**: The librarian is logged in
- **Main Flow**:
  1) The librarian clicks on the update fine details button.
  2) The system displays the update fine details page.
  3) The librarian enters the details of the fine.
  4) The librarian clicks on the submit button.
  5) The system verifies the details.
  6) The system updates the details of the fine.
  7) The system displays the home page.
- **Postcondition**: The details of the fine are updated.
- **Alternative Flow**:
  - The librarian enters incorrect details.
    1) The system displays an error message.
    2) The system prompts the librarian to enter the details again.
  - The librarian clicks on the cancel button.
    1) The system displays the home page.
  - The fine does not exist.
    1) The system displays an error message.
    2) The system prompts the librarian to enter the details again.

#### Pay fine

- **Actor**: User
- **Description**: The user pays fine.
- **Precondition**: The user is logged in.
- **Main Flow**:
  1) The user clicks on the pay fine button.
  2) The system displays the pay fine page.
  3) The user enters the details of the fine.
  4) The user clicks on the submit button.
  5) The system verifies the details.
  6) The system removes the fine from the user.
  7) The system displays the home page.
- **Postcondition**: The fine is paid.
- **Alternative Flow**:
  - The user enters incorrect details or if the fine is not paid.
    1) The system displays an error message.
    2) The system prompts the user to enter the details again.
  - The user clicks on the cancel button.
    1) The system displays the home page.
  - The fine does not exist.
    1) The system displays an error message.
    2) The system displays the home page.
   - The fine is already paid.
    1) The system displays an error message.
    2) The system displays the home page.


### Actions related to Books/E-Resources/Journals

#### Add new book

- **Actor**: Librarian
- **Description**: The librarian adds a new book to the library.
- **Precondition**: The librarian is logged in.
- **Main Flow**:
  1) The librarian clicks on the add new book button.
  2) The system displays the add new book page.
  3) The librarian enters the details of the book.
  4) The librarian clicks on the submit button.
  5) The system verifies the details.
  6) The system adds the new book to the library.
  7) The system displays the home page.
- **Postcondition**: The new book is added to the library.
- **Alternative Flow**:
  - The librarian enters incorrect details.
    1) The system displays an error message.
    2) The system prompts the librarian to enter the details again.
  - The librarian clicks on the cancel button.
    1) The system displays the home page.
  - The book is already in the library.
    1) The system displays an error message.
    2) The system prompts the librarian to enter the details again.

#### Remove book

#### View New Arrivals

- **Actor**: User
- **Description**: The user views the list of new arrivals in the library.
- **Precondition**: None
- **Main Flow**:
  1) The user clicks on the catalog button.
  2) The user clicks on the new arrivals section.
  3) The system displays the list of new arrivals.
- **Postcondition**: The user is viewing the list of new arrivals.

#### View Popular Books

- **Actor**: User
- **Description**: The user views the list of popular books in the library.
- **Precondition**: None
- **Main Flow**:
  1) The user clicks on the catalog button.
  2) The user clicks on the popular books section.
  3) The system displays the list of popular books.

### Some miscellaneous actions

#### View Information/FAQs

- **Actor**: User
- **Description**: The user views the information/FAQs of the library.
- **Precondition**: None
- **Main Flow**:
  1) The user clicks on the information button.
  2) The system displays the information page.

####

# Conclusion

# Appendix

## Definitions, Acronyms, and Abbreviations

## References

Note that the following references are clickable links.

- [Library Management System](https://en.wikipedia.org/wiki/Library_management_system)
- Existing SRS such as:
  - [https://www.studocu.com/in/document/national-institute-of-technology-rourkela/software-engineering/library-management-system-srs/7138104](https://www.studocu.com/in/document/national-institute-of-technology-rourkela/software-engineering/library-management-system-srs/7138104)
  - [https://www.slideshare.net/Chetan2608/software-requirements-specification-of-library-management-system](https://www.slideshare.net/Chetan2608/software-requirements-specification-of-library-management-system)
