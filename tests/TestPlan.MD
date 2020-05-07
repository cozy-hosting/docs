# Test plan

## 1. Introduction

### 1.1	Purpose

The purpose of the Iteration Test Plan is to gather all of the information necessary to plan and control the test effort for a given iteration. 
It describes the approach to testing the software.
This Test Plan for Cozy supports the following objectives:
-	Identifies the items that should be targeted by the tests.
-	Identifies the motivation for and ideas behind the test areas to be covered.
-	Outlines the testing approach that will be used.
-	Identifies the required resources and provides an estimate of the test efforts.

### 1.2	Scope

This document describes the used tests, as they are unittests and functionality testing.

### 1.3	Intended Audience

This document is meant for internal use primarily.

### 1.4	Document Terminology and Acronyms

- **SRS**	Software Requirements Specification
- **n/a**	not applicable
- **tbd**	to be determined

### 1.5	 References


## 2. Evaluation Mission and Test Motivation

### 2.1	Background

Our Goal is to deliver software to a high technical standart. Testing ensures that code functions as intended and only functional code is deployed to production

### 2.2	Test Motivators

Our testing is motivated by 
- quality risks 
- technical risks, 
- use cases 
- functional requirements

## 3.	Target Test Items

The listing below identifies those test items (software, hardware, and supporting product elements) that have been identified as targets for testing. This list represents what items will be tested. 

Items for Testing:
- "Sleeper" Backend
- "Sleeper" Frontend

## 4. Outline of Planned Tests

### 4.1	Outline of Test Inclusions

Unit testing the C# backend and functional testing of the Web frontend.

### 4.2	Outline of Other Candidates for Potential Inclusion

Stress testing the application, unit testing the frontend might be potential test cases but these are not in scope of our testing process yet.

## 5. Test Approach

### 5.1	Testing Techniques and Types

#### 5.1.1 Feature Testing

|||
|---|---|
|Technique Objective  	| Test Use-Cases with functional tests |
|Technique 		|  Execute Behat Test functions |
|Oracles 		|  Each test expect the right value given in the assertequals function |
|Required Tools 	|  SpecFlow |
|Success Criteria	|    All key use-case scenarios      |
|Special Considerations	|     -          |

#### 5.1.2	Unit Testing

|||
|---|---|
|Technique Objective  	| Exercise functionality of model functions. Test for right data entry and right data output. |
|Technique 		|  Execute NUnit Test functions |
|Oracles 		|  Each test expect the right value given in the assertequals function |
|Required Tools 	|  NUnit |
|Success Criteria	|    All key use-case scenarios      |
|Special Considerations	|     -          |

#### 5.1.3	Business Cycle Testing

n/a

#### 5.1.4	User Interface Testing

n/a

#### 5.1.5	Performance Profiling 

n/a

#### 5.1.6	Load Testing

n/a

#### 5.1.7	Stress Testing

n/a
 
#### 5.1.8	Volume Testing

n/a

#### 5.1.9	Security and Access Control Testing

Unittests also cover access control. A given use case might only be performed by a given logged in user.

#### 5.1.10	Failover and Recovery Testing

n/a

#### 5.1.11	Configuration Testing

n/a

#### 5.1.12	Installation Testing

n/a

## 6. Entry and Exit Criteria

### 6.1	Test Plan

#### 6.1.1	Test Plan Entry Criteria

Opening a new pull request will execute the testprocess.

#### 6.1.2	Test Plan Exit Criteria

When all tests pass without throwing an exception.

## 7. Deliverables

### 7.1	Test Evaluation Summaries

n/a

### 7.2	Reporting on Test Coverage

tbd

### 7.3	Perceived Quality Reports

n/a

### 7.4	Incident Logs and Change Requests

n/a

### 7.5	Smoke Test Suite and Supporting Test Scripts

n/a

### 7.6	Additional Work Products

n/a

#### 7.6.1	Detailed Test Results

When executing functiontests cucumber will atomaticly generate a [HTML test report](https://cdn.rawgit.com/WMerk/vnv/master/src/test/features/Reports/cucumber-htmlreport/index.html).
for Unittest testreports see section 7.2.

#### 7.6.2 Additional Automated Functional Test Scripts

n/a
#### 7.6.3 Test Guidelines

n/a
#### 7.6.4 Traceability Matrices

n/a

## 8. Testing Workflow

At the moment tests are automatically ran via Travis CI when opening a pull request for the branches staging and master. 
This is also the case, whenever anyone builds the Docker image for each of the individual software parts of the service.

## 9. Environmental Needs

### 9.1	Base System Hardware

Ther are no general system requrements to run tests, other than meeting the requirements given by the individaul 
software pieces that are used to provide testing in the first place.

### 9.2	Base Software Elements in the Test Environment

The following base software elements are required in the test environment for this Test Plan.

| Software Element Name | Version | Type and Other Notes |
|---|---|---|
| Node.JS | v14.1.0 | Application |
| .Net Core (CLI) | 3.1 | Application |
| Docker |  19.03.8 | Application |

### 9.3	Productivity and Support Tools

The following tools will be employed to support the test process for this Test Plan.

| Tool Category or Type | Tool Brand Name | Vendor or In-house | Version |
|---|---|---|---|
| Test Management | Raider | JetBrains | 2020.1 |
| Test Management | PhpStorm | JetBrains |2020.1 |
| Test Management | WebStorm | JetBrains | 2020.1 |
| Test Management | Visual Studio Code | Microsoft | May 2020 |
| Project Management | YouTrack | JetBrains | 2020.1 |
| Image builder | Docker | Docker | 19.03.8 |
| Image hoster | Azure Container Registry | Microsoft Azure | n/a |

## 10. Responsibilities, Staffing, and Training Needs

### 10.1 People and Roles

This table shows the staffing assumptions for the test effort.

Human Resources


| Role | Minimum Resources Recommended (number of full-time roles allocated) |	Specific Responsibilities or Comments |
|---|---|---|
| Tester | 5 |	Oversees, designs, implements and executes the tests.<br> Responsibilities include:<br> implement tests and test suites<br> execute test suites<br> log results<br> analyze and recover from test failures<br> document incidents and provide feedback in issues. |
| DevOps Manager | 2 | Ensures test environment and assets are managed and maintained.<br> Responsibilities include:<br> Writing `Dockerfile` and `.traivs.yml` with included tests.  | 
| Implementer | 0 | Automatically done by the Travis CI build pipeline. |

### 10.2 Staffing and Training Needs

n/a

## 11. Iteration Milestones

| Milestone | Planned Start Date | Actual Start Date | Planned End Date | Actual End Date |
|---|---|---|---|---|
| Have Unit Tests | 08.05.2020 | - | 14.05.2020 | - |
| Have Integration Tests | - | - | - | - |
| >= 1% Test Coverage :trollface: | 08.05.2020 | - | 14.05.2020 | - |
| Tests integrated in CI | 08.05.2020 | - | 14.05.2020 | - |
| Iteration ends | - | - | - | - |
