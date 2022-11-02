const db = require('./../db').db

exports.getStudents = (req, res) => {
    const sql = "SELECT * FROM Student"
    db.all(sql, [], (err, rows) => {
        if (err) {
            return console.error(err.message);
        }
        var accept = req.headers['accept'];
        if (accept.includes("json")) {
            res.send(rows)
        } else {
            res.render("students", {
                model: rows
            });
        }
    });
};

exports.getStudentById = (request, response) => {
    const id = parseInt(request.params.id)
    const sql = "SELECT * FROM Student where StudentID = $1"
    db.all(sql, [id], (err, rows) => {
        if (err) {
            console.error(error.message);
            response.status(500).send(error.message)
        } else {
            response.status(200).json(rows)
        }
    })
}

exports.createStudentForm = (req, res) => {
    res.render("student-create", {
        model: {}
    });
}

exports.createStudent = (req, res) => {
    console.log(req)
    const sql = "INSERT INTO Student (Name, Email, DoB, AadharNumber, MobileNumber, Status, VaccinationStatus, VaccineType, VaccinationWorkerId, VaccinationDate) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    const student = [req.body.Name, req.body.Email, req.body.DoB, req.body.AadharNumber, req.body.MobileNumber, req.body.Status, req.body.VaccinationStatus, req.body.VaccineType, req.body.VaccinationWorkerId, req.body.VaccinationDate];
    db.run(sql, student, err => {
        if (err) {
            return console.error(err.message);
        }
        res.redirect("/students");
    });
}

exports.editStudentForm = (req, res) => {
    const id = req.params.id;
    const sql = "SELECT * FROM Student WHERE StudentID = ?";
    db.get(sql, id, (err, row) => {
        if (err) {
            return console.error(err.message);
        }
        res.render("student-edit", {
            model: row
        });
    });
}

exports.updateStudent = (req, res) => {
    const id = req.params.id;
    const student = [req.body.Name, req.body.Email, req.body.DoB, req.body.AadharNumber, req.body.MobileNumber, req.body.Status, req.body.VaccinationStatus, req.body.VaccineType, req.body.VaccinationWorkerId, req.body.VaccinationDate, id];
    const sql = "UPDATE Student SET Name = ?, Email = ?, DoB = ?, AadharNumber = ?, MobileNumber = ?, Status = ?, VaccinationStatus = ?, VaccineType = ?, VaccinationWorkerId = ?, VaccinationDate = ?  WHERE (StudentID = ?)";
    db.run(sql, student, err => {
        if (err) {
            return console.error(err.message);
        }
        res.redirect("/students");
    });
}

exports.deleteStudentForm = (req, res) => {
    const id = req.params.id;
    const sql = "SELECT * FROM Student WHERE StudentID = ?";
    db.get(sql, id, (err, row) => {
        if (err) {
            return console.error(err.message);
        }
        res.render("student-delete", {
            model: row
        });
    });
}

exports.deleteStudent = (req, res) => {
    const id = req.params.id;
    const sql = "DELETE FROM Student WHERE StudentID = ?";
    db.run(sql, id, err => {
      if (err) {
        return console.error(err.message);
      }
      res.redirect("/students");
    });
  }
