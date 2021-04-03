# Project title

### ExpenseTracker

** Version 1.0.0 **

## About / Synopsis

* Project status: working/prototype

## Getting started

Instructios will guide you to copy the project and execute it on your environment for develoment and testing purposes.Deployment notes guides you to deploy the project on a live system.

>   * [Prerequisites](#prerequisites)

>   * [Installation](#installation)

>   * [Project](#project)

>   * [Contribution](#contribution)

>   * [License](#license)

---

## Prerequisites

1. git

2. wget 

3. Java 8 runtime environments, both 32-bit and 64-bit versions are supported.

4. Jenkins

5. Maven

to install the above prerequisites in your enviroment you need administrator privileges, then  copy the provisioned anisble-playbook in the github repository.

github repository  link https://github.com/gvanishri/ExpenseTracker.git provided.

## Installation

A step by step guide to setup develoment enviroment

1. Using - Jenkins plugin manage credentials - establish docker hub credentials

2. Deploy jenkins pipeline job

3. Jenkins build will push the image to docker hub 

4. Runtime Setup - setup kubernetes server environment - you can deploy the docker hub image      using yaml configuration files in the github repository.

5. After kubernetes orchestration - hit the browser (e.g http://localhost:8080)

## Project

* Expense Splitter

* Expense Splitter - Login

* Expense Splitter - Register User

* Participants

* Expense Dashboard

## Contribution

[RRC Academy](https://www.rrcacademy.com/ "RRC Academy")

## License

RRC Academy - A global education and training partner

---
