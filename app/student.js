
const db = require('./../db').db

exports.getStudents = (request, response) => {
  const sql = "SELECT * FROM Student"
  db.all(sql, [], (err, rows) => {
    if (err) {
      return console.error(error.message);
    }
    response.status(200).json(rows)
  })
}

exports.getStudentById = (request, response) => {
  const id = parseInt(request.params.id)
  const sql = "SELECT * FROM Student where StudentID = $1"
  db.all(sql, [id], (err, rows) => {
    if (err) {
      console.error(error.message);
      response.status(500)
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
      response.status(500)
    } else {
      response.status(201).send(`Student added`)
    }

  })
}

exports.updateStudent = (request, response) => {
  const id = parseInt(request.params.id)
  const { name, email } = request.body

  db.run(
    'UPDATE students SET name = $1, email = $2 WHERE id = $3',
    [name, email, id],
    (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).send(`Student modified with ID: ${id}`)
    }
  )
}

exports.deleteStudent = (request, response) => {
    const id = parseInt(request.params.id)

    db.query('DELETE FROM students WHERE id = $1', [id], (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).send(`Student deleted with ID: ${id}`)
    })
}
