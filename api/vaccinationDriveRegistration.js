
const db = require('./../db').db

exports.getVaccinationDriveRegistrations = (request, response) => {
  const sql = "SELECT * FROM VaccinationDriveRegistration"
  db.all(sql, [], (error, rows) => {
    if (error) {
      console.error(error.message);
      response.status(500).send(error.message)
    } else {
      response.status(200).json(rows)
    }
  })
}

exports.studentsRegisteredForByID = (request, response) => {
  const id = parseInt(request.params.id)
  const sql = "SELECT * FROM VaccinationDriveRegistration where VaccinationDriveID = $1"
  db.all(sql, [id], (error, rows) => {
    if (error) {
      console.error(error.message);
      response.status(500).send(error.message)
    } else {
      response.status(200).json(rows)
    }
  })
}

exports.drivesRegisteredForStudentByID = (request, response) => {
    const id = parseInt(request.params.id)
    const sql = "SELECT * FROM VaccinationDriveRegistration where StudentID = $1"
    db.all(sql, [id], (error, rows) => {
      if (error) {
        console.error(error.message);
        response.status(500).send(error.message)
      } else {
        response.status(200).json(rows)
      }
    })
  }

exports.createVaccinationDriveRegistration = (request, response) => {
  const { VaccinationDriveID, StudentID } = request.body

  db.run('INSERT INTO VaccinationDriveRegistration (VaccinationDriveID, StudentID) VALUES ($1, $2)', [VaccinationDriveID, StudentID], (error, results) => {
    if (error) {
      console.error(error.message);
      response.status(500).send(error.message)
    } else {
      response.status(201).send(`VaccinationDriveRegistration added`)
    }

  })
}

exports.deleteVaccinationDrive = (request, response) => {
    const VaccinationDriveID = parseInt(request.params.vaccinationDriveID)
    const StudentID = parseInt(request.params.studentID)

    db.run('DELETE from VaccinationDriveRegistration WHERE VaccinationDriveID = $1 and StudentID = $2;', [VaccinationDriveID, StudentID], (error, results) => {
      if (error) {
        console.error(error.message);
        response.status(500).send(error.message)
      } else {
        response.status(200).send(`VaccinationDriveRegistration deleted with VaccinationDriveID: ${VaccinationDriveID} StudentID: ${StudentID}`)
      }
    })
}
