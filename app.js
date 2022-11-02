const path = require("path");
const express = require("express");
const bodyParser = require('body-parser')
const app = express();
const db = require('./db').db
const studentAPI = require('./app/student')

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(express.static(path.join(__dirname, "public")));
app.use(express.urlencoded({ extended: false }));
app.use(bodyParser.json())

app.listen(3090, () => {
  console.log("Server started (http://localhost:3090/) !");
});

app.get('/api/students', studentAPI.getStudents)
app.get('/api/student/:id', studentAPI.getStudentById)
app.post('/api/student', studentAPI.createStudent)
app.put('/api/student/:id', studentAPI.updateStudent)
app.delete('/api/student/:id', studentAPI.deleteStudent)

app.get("/", (req, res) => {
  res.render("index");
});

app.get("/about", (req, res) => {
  res.render("about");
});

app.get("/students", (req, res) => {
  const sql = "SELECT * FROM Student"
  db.all(sql, [], (err, rows) => {
    if (err) {
      return console.error(err.message);
    }
    var accept = req.headers['accept'];
    if (accept.includes("json")) {
      res.send(rows)
    } else {
      res.render("students", { model: rows });
    }
  });
});

// GET /student/create
app.get("/student/create", (req, res) => {
  res.render("student-create", { model: {} });
});

// POST /student/create
app.post("/student/create", (req, res) => {
  console.log(req)
  const sql = "INSERT INTO Student (Name, Email, DoB, AadharNumber, MobileNumber, Status, VaccinationStatus, VaccineType, VaccinationWorkerId, VaccinationDate) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  const student = [req.body.Name, req.body.Email, req.body.DoB, req.body.AadharNumber, req.body.MobileNumber, req.body.Status, req.body.VaccinationStatus, req.body.VaccineType, req.body.VaccinationWorkerId, req.body.VaccinationDate];
  db.run(sql, student, err => {
    if (err) {
      return console.error(err.message);
    }
    res.redirect("/students");
  });
});

// GET /student/edit/5
app.get("/student/edit/:id", (req, res) => {
  const id = req.params.id;
  const sql = "SELECT * FROM Student WHERE StudentID = ?";
  db.get(sql, id, (err, row) => {
    if (err) {
      return console.error(err.message);
    }
    res.render("student-edit", { model: row });
  });
});

// POST /student/edit/5
app.post("/student/edit/:id", (req, res) => {
  const id = req.params.id;
  const student = [req.body.Name, req.body.Email, req.body.DoB, req.body.AadharNumber, req.body.MobileNumber, req.body.Status, req.body.VaccinationStatus, req.body.VaccineType, req.body.VaccinationWorkerId, req.body.VaccinationDate, id];
  const sql = "UPDATE Student SET Name = ?, Email = ?, DoB = ?, AadharNumber = ?, MobileNumber = ?, Status = ?, VaccinationStatus = ?, VaccineType = ?, VaccinationWorkerId = ?, VaccinationDate = ?  WHERE (StudentID = ?)";
  db.run(sql, student, err => {
    if (err) {
      return console.error(err.message);
    }
    res.redirect("/students");
  });
});

// GET /students/delete/5
app.get("/student/delete/:id", (req, res) => {
  const id = req.params.id;
  const sql = "SELECT * FROM Student WHERE StudentID = ?";
  db.get(sql, id, (err, row) => {
    if (err) {
      return console.error(err.message);
    }
    res.render("student-delete", { model: row });
  });
});

// POST student/delete/5
app.post("/student/delete/:id", (req, res) => {
  const id = req.params.id;
  const sql = "DELETE FROM Student WHERE StudentID = ?";
  db.run(sql, id, err => {
    if (err) {
      return console.error(err.message);
    }
    res.redirect("/students");
  });
});
