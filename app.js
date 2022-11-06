const path = require("path");
const express = require("express");
const bodyParser = require('body-parser')
const app = express();

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(express.static(path.join(__dirname, "public")));
app.use(express.urlencoded({ extended: false }));
app.use(bodyParser.json())

app.listen(3090, () => {
  console.log("Server started (http://localhost:3090/) !");
});

const reportsAPI = require('./api/reports')
app.get('/api/reports', reportsAPI.reports)

const studentAPI = require('./api/student')
app.get('/api/students', studentAPI.getStudents)
app.get('/api/student/counts', studentAPI.getStudentCounts)
app.get('/api/students/vaccinated', studentAPI.getVaccinatedStudents)
app.get('/api/students/unvaccinated', studentAPI.getUnVaccinatedStudents)
app.get('/api/student/:id', studentAPI.getStudentById)
app.post('/api/student', studentAPI.createStudent)
app.put('/api/student/:id', studentAPI.updateStudent)
app.delete('/api/student/:id', studentAPI.deleteStudent)

const studentWeb = require('./web/student')
app.get('/students', studentWeb.getStudents)
app.get('/student/create', studentWeb.createStudentForm)
app.post('/student/create', studentWeb.createStudent)
app.get("/student/edit/:id", studentWeb.editStudentForm)
app.post("/student/edit/:id", studentWeb.updateStudent)
app.get("/student/delete/:id", studentWeb.deleteStudentForm);
app.post("/student/delete/:id", studentWeb.deleteStudent)

const vaccinationDriveAPI = require('./api/vaccinationDrive')
app.get('/api/vaccinationDrives', vaccinationDriveAPI.getVaccinationDrives)
app.get('/api/vaccinationDrives/past', vaccinationDriveAPI.getPastVaccinationDrives)
app.get('/api/vaccinationDrives/upcoming', vaccinationDriveAPI.getUpcomingVaccinationDrives)
app.get('/api/vaccinationDrive/:id', vaccinationDriveAPI.getVaccinationDriveById)
app.post('/api/vaccinationDrive', vaccinationDriveAPI.createVaccinationDrive)
app.put('/api/vaccinationDrive/:id', vaccinationDriveAPI.updateVaccinationDrive)
app.delete('/api/vaccinationDrive/:id', vaccinationDriveAPI.deleteVaccinationDrive)


const vaccinationDriveRegistrationsAPI = require('./api/vaccinationDriveRegistration')
app.get('/api/vaccinationDriveRegistrations', vaccinationDriveRegistrationsAPI.getVaccinationDriveRegistrations)
app.get('/api/vaccinationDriveRegistration/studentsRegisteredFor/:id', vaccinationDriveRegistrationsAPI.studentsRegisteredForByID)
app.get('/api/vaccinationDriveRegistration/drivesRegisteredForStudent/:id', vaccinationDriveRegistrationsAPI.drivesRegisteredForStudentByID)
app.post('/api/vaccinationDriveRegistration', vaccinationDriveRegistrationsAPI.createVaccinationDriveRegistration)
app.delete('/api/vaccinationDriveRegistrations/:vaccinationDriveID/:studentID', vaccinationDriveRegistrationsAPI.deleteVaccinationDrive)


app.get("/", (req, res) => {
  res.render("index");
});

app.get("/about", (req, res) => {
  res.render("about");
});
