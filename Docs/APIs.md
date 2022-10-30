## REST API Documentation

All request/response body in JSON format.

1. Get all student details
GET
/students/all

Returns a list of all students.

{
    {
        "student_id": 1234,
        "student_name": "Arvind Babu"
    },
    {
        "student_id": 3421,
        "student_name": "Sonal Ram"
    },
    ...
}

2. Get Student details
GET
/student/{student_id}

Returns details of a given student

{
    "student_id": 1234,
    "student_name": "Arvind Babu"
    "dob": "1-Oct-2011",
    "aadhar_number": "3234 xxxx yyyy",
    "email": "abc@xyz.com",
    "vaccination_status": true,
    "vacccine_type": "covaxin",
    "vaccination_date": "3-Sep-2021 11:50 +0530"
    "vaccination_worker_id": "5467",
    ...
}

3. POST
/student/new

Add new student details

4. POST
/students/buld_add

Bulk add new students
