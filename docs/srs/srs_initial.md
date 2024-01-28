---
title: A03 - Library Management System
author: Group 14
geometry: margin=1.5cm
documentclass: extarticle
fontsize: 12pt
header-includes:
    - \usepackage{setspace}
    - \onehalfspacing
---

# Index
- [Index](#index)
- [Introduction](#introduction)
  - [Purpose](#purpose)
  - [Details to be added to the Final SRS](#details-to-be-added-to-the-final-srs)
- [References](#references)
- [Specifications](#specifications)
  - [Actors](#actors)
  - [Actions](#actions)
    - [Actions related to books](#actions-related-to-books)
    - [Actions related to E-Resources / Journals](#actions-related-to-e-resources--journals)
    - [Some miscellaneous actions](#some-miscellaneous-actions)

\newpage

# Introduction

Library Management System is a software used to manage the catalog of a library.

## Purpose

The purpose of this document is to describe the initial features that we intend to offer. It is not a complete list of features, and is subject to change. 

A complete SRS document that describes the requirements of the system in a more detailed way will be after the discussion with the client.

## Details to be added to the Final SRS

- Detailed description of the actors and actions.
- Detailed description of the use cases.
- DFDs(Data Flow Diagrams)
- ERDs(Entity Relationship Diagrams)
- Detailed description of the scope of the project.
- References to the documents that we used to prepare the SRS.
- Requirements of the clients pertaining to performance, security, safety and reliability.

# References

Note that the following references are clickable links.

- [Library Management System](https://en.wikipedia.org/wiki/Library_management_system)
- Existing SRS such as:
  - [https://www.studocu.com/in/document/national-institute-of-technology-rourkela/software-engineering/library-management-system-srs/7138104](https://www.studocu.com/in/document/national-institute-of-technology-rourkela/software-engineering/library-management-system-srs/7138104)
  - [https://www.slideshare.net/Chetan2608/software-requirements-specification-of-library-management-system](https://www.slideshare.net/Chetan2608/software-requirements-specification-of-library-management-system)

\newpage

# Specifications

Below is the list of actors and actions that we intend to support.

## Actors
 
Below is the list of users that we intend to support.

- **Admin**: Administator of the library.
- **Librarian**: Librarian of the library.
- **Faculty**: Faculty of the college/school associated with the library.
- **Student**: Student of the college/school associated with the library.

Note that **user** is a generic term that refers to any of the above actors.

## Actions

Below is the list of actions that we intend to support.

### Actions related to books

| Action                    | Actor      | Description                              |
| ------------------------- | ---------- | ---------------------------------------- |
| Add new book              | Librarian  | Add new book to the library              |
| Remove book               | Librarian  | Remove book from the library             |
| Add new book copy         | Librarian  | Add new book copy                        |
| Remove book copy          | Librarian  | Remove book copy                         |
| Update book details       | Librarian  | Update book details                      |
| Issue book                | Librarian  | Issue book to a member                   |
| Update book issue details | Librarian  | Update book issue details                |
| Return book               | User       | Return book to the library               |
| Search book               | User, None | Search book in the library               |
| View book catalog         | User, None | View book catalog, using advanced search |
| View book                 | User, None | View book details                        |
| Borrow book               | User       | Borrow book from the library             |
| Request book              | Faculty    | Request book to be added to the library  |

### Actions related to E-Resources / Journals

| Action                    | Actor     | Description                         |
| ------------------------- | --------- | ----------------------------------- |
| Add new E-Resource        | Librarian | Add new E-Resource to the library   |
| Remove E-Resource         | Librarian | Remove E-Resource from the library  |
| Update E-Resource details | Librarian | Update E-Resource details           |
| View E-Resource           | User      | View E-Resource details             |
| Request E-Resource        | Faculty   | Request E-Resource from the library |

### Some miscellaneous actions

| View Information   | User  | View information about library |
| Support Tools      | User  | View support tools             |