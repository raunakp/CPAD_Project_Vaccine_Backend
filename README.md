# CPAD_Project1_Group42_Backend

BITS Pilani WILP | M Tech 2022 | CPAD Project | Group 42 | Oct 2022\
CROSS-PLATFORM APPLICATION DEVELOPMENT | SEZG585/SSZG585\
[PROJECT 1 – CROSS-PLATFORM APP DESIGN AND IMPLEMENTATION SCHOOL VACCINATION TRACKER](https://github.com/CJ190795/CPAD_Project1_42_Backend/blob/main/Docs/2022_CPAD__Assign1_stmt_1.pdf)

Project name: SCHOOL VACCINATION TRACKER

## Members

| Name | email |
| ----------- | ----------- |
| Mary John Madathil | 2021mt93505@wilp.bits-pilani.ac.in |
| Chitresh Jain | 2021mt12437@wilp.bits-pilani.ac.in |
| Raunak Poddar | 2021mt12277@wilp.bits-pilani.ac.in |

## Reference Links

| Purpose | URL | Description | Comments |
| ----------- | ----------- | ----------- | ----------- |
| Backed, hosting APIs |<https://nodejs.org/en/>|Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine.| Some Geek had the idea of harnessing the power of JS community beyond the browser |
| Database | <https://www.sqlite.org/index.html> | SQLite is a C-language library that implements a small, fast, self-contained, high-reliability, full-featured, SQL database engine. SQLite is the most used database engine in the world. SQLite is built into all mobile phones and most computers and comes bundled inside countless other applications that people use every day. | - |
| Cross platform Frontend | <https://reactnative.dev/> | Create native apps for Android and iOS using React | React Native combines the best parts of native development with React, a


[SQL Scripts](./SQLScripts)
## Node libraries used
1. express https://expressjs.com/ (Fast, unopinionated, minimalist web framework for Node.js)
2. ejs - view engine - https://github.com/mde/ejs/
3. sqlite3 - Nodejs wrapper for sqlite3 - https://www.npmjs.com/package/sqlite3 (https://github.com/mapbox/node-sqlite3)

## Installation
This project is compatible across major development platforms available today, i.e. Windows, Mac OS, Linux, etc.

- To install nodejs on your computing environment, follow the instructions here: https://nodejs.org/en/
- SQLite3: https://www.sqlite.org/index.html

### NPM Libraries
The folder [node_modules](./node_modules) contains the dependencies as required by my platform.

**Please ensure that delete this folder and run *$npm install* if you encounter any node dependency issues.**

install npm dependencies:
*$npm install*

## Important files/directories

| Path | Description | Comments |
| ----------- | ----------- | ----------- |
| views | [./views](./views) | Embedded javascript templatized html views  rendered by ejs |
| data | [./data/ecomm.db](./data/ecomm.db) | The sqlite db file. |
| package.json | [./package.json](./package.json) | The nodejs Application definition & dependencies |
| index.js | [./index.js](./index.js) | Entry point of the Node.js application |
| public | [./public](public) | Contains the css and any other piblicly available files as required|

## Creating the Schema, Populate initial data

- Enter the sqlite prompt from the data/ directory
  - $sqlite3 vaccinedb.sqlite3
- Run the script to create tables
  - .read ./../SQLScripts/DDL/create_tables.sql
- Run the scripts to populate initial data
  - .read ./../SQLScripts/DML/StudentsInsertScript.sql
  - .read ./../SQLScripts/DML/VaccinationDrivesInsertScript.sql
  - .read ./../SQLScripts/DML/VaccinationDriveRegistrationsInsertScript.sql

## Run the project
To run the project, simply execute the following command:
*$node index*

This command instructs node to begin executing the file index.js - the entry-point to our Application. Once the execution starts, open [http://localhost:3090](http://localhost:3090) on your browser to see the demo.
Note that the project is configured to run the App on port 3090. To change the port number simply modify the line:
app.listen(3090...) to any other port of your choice.

## API Documentation
- Import this [Postman collection](./Docs/CPAD%20Assignment1.postman_collection.json) to test the APIs locally.
- [Documentation available here](https://documenter.getpostman.com/view/454/2s8YRqjpu4)
