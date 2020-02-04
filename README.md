DBA Candidate Problem
================
## Background
As described by [Radiology Info](http://www.radiologyinfo.org), radiologists are medical doctors who specialize in diagnosing and treating disease and injury through the use of medical imaging techniques such as x-rays, computer tomography (CT), magnetic resonance  imaging (MRI), positron emission tomography (PET), fusion imaging, and ultrasound. Each collection of images for a patient is represented in the RIS as a study. Envision Healthcare radiologists use the RIS to dictate study reports to communicate diagnosis and treatment details to physicians.

## Problem Definition
It is important to know the amount of time a radiologist spent dictating each study. It is possible for a radiologist to start dictation on one study, then stop to do something else, including dictation for another study.

### SQL Tables
The tables below have been simplified to not contain unnecessary data.

|Table|Description|
|---|---|
|``Study``|Contains radiology studies|
|``StudyStatus``|Study workflow statuses|
|``StudyStatusLog``|Log of when studies entered each state|

### Notes
* When a study is valid for dictation, it is considered _Ready_
* When a study is being dictated, it is considered _In Progress_
* If a radiologist pauses dictation, the study becomes _Ready_ again
* When a radioligist finishes dictation, the study becomes _Deliverable_
* Once the study's report has been delivered, the study is considered _Completed_

### Example

**Study A** below was in dictation for **20 minutes** - not 31 minutes.

|Study|Status|Timestamp|
|---|---|---|
|Study A|Received|2015-02-02 10:00:00|
|Study A|Ready|2015-02-02 10:02:00|
|Study A|In Progress|2015-02-02 10:05:00|
|Study A|Ready|2015-02-02 10:15:00|
|Study A|In Progress|2015-02-02 10:20:00|
|Study A|Deliverable|2015-02-02 10:30:00|
|Study A|Completed|2015-02-02 10:31:00|

## Instructions
1. Execute the provided T-SQL script to create the tables above and insert data. If you wish to use MySQL or Postgresql, you will have to convert the T-SQL script to the appropriate SQL script.
2. Using T-SQL/SQL, create a stored procedure to determine the number of minutes (precision 2 for seconds) it took to dictate each study.
3. Submit the stored procedure script via email to [Ivo Yueh](ivo.yueh@envisionhealth.com)

### Requirements
1. The procedure should accept 2 parameters. These will serve as a date range within which if a study was _Received_, the study should be included in the result set.
    1. StartDate
    2. EndDate
2. The result set must have 2 fields
    1. StudyName
    2. TotalDictationTime
3. The query result should be functionally accurate for additional studies and log entries
4. Procedure should include comments describing the procedure's purpose, parameters, and results
