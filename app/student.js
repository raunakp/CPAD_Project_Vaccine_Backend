
const db = require('./../db').db

exports.getStudents = (request, response) => {
  const sql = "SELECT * FROM Student"
  db.all(sql, [], (err, rows) => {
    if (err) {
      console.error(error.message);
      response.status(500).send(error.message)
    } else {
      response.status(200).json(rows)
    }
  })
}

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

exports.createStudent = (request, response) => {
  const { Name, Email, DoB, AadharNumber, MobileNumber, Status, VaccinationStatus, VaccineType, VaccinationWorkerId, VaccinationDate } = request.body

  db.run('INSERT INTO Student (Name, Email, DoB, AadharNumber, MobileNumber, Status, VaccinationStatus, VaccineType, VaccinationWorkerId, VaccinationDate) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)', [Name, Email, DoB, AadharNumber, MobileNumber, Status, VaccinationStatus, VaccineType, VaccinationWorkerId, VaccinationDate], (error, results) => {
    if (error) {
      console.error(error.message);
      response.status(500).send(error.message)
    } else {
      response.status(201).send(`Student added`)
    }

  })
}

exports.updateStudent = (request, response) => {
  const id = parseInt(request.params.id)
  const { Name, Email, DoB, AadharNumber, MobileNumber, Status, VaccinationStatus, VaccineType, VaccinationWorkerId, VaccinationDate } = request.body

  db.run(
    'UPDATE Student SET Name = $1, Email = $2, DoB = $3, AadharNumber = $4, MobileNumber = $5, Status = $6, VaccinationStatus = $7, VaccineType = $8, VaccinationWorkerId = $9, VaccinationDate = $10 WHERE StudentID = $11',
    [Name, Email, DoB, AadharNumber, MobileNumber, Status, VaccinationStatus, VaccineType, VaccinationWorkerId, VaccinationDate, id],
    (error, results) => {
      if (error) {
        console.error(error.message);
        response.status(500).send(error.message)
      } else {
        response.status(200).send(`Student modified with ID: ${id}`)
      }
    }
  )
}

exports.deleteStudent = (request, response) => {
    const id = parseInt(request.params.id)

    db.run('DELETE FROM Student WHERE StudentID = $1', [id], (error, results) => {
      if (error) {
        console.error(error.message);
        response.status(500).send(error.message)
      } else {
        response.status(200).send(`Student deleted with ID: ${id}`)
      }
    })
}
