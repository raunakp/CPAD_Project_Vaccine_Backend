
const db = require('./../db').db

exports.getVaccinationDrives = (request, response) => {
  const sql = "SELECT * FROM VaccinationDrive"
  db.all(sql, [], (err, rows) => {
    if (err) {
      console.error(error.message);
      response.status(500).send(error.message)
    } else {
      response.status(200).json(rows)
    }
  })
}

exports.getVaccinationDriveById = (request, response) => {
  const id = parseInt(request.params.id)
  const sql = "SELECT * FROM VaccinationDrive where VaccinationDriveID = $1"
  db.all(sql, [id], (err, rows) => {
    if (err) {
      console.error(error.message);
      response.status(500).send(error.message)
    } else {
      response.status(200).json(rows[0])
    }
  })
}

exports.createVaccinationDrive = (request, response) => {
  const { Date, CoordinatorName, CoordinatorID, CoordinatorMobileNumber, Capacity, Status } = request.body

  db.run('INSERT INTO VaccinationDrive (Date, CoordinatorName, CoordinatorID, CoordinatorMobileNumber, Capacity, Status) VALUES ($1, $2, $3, $4, $5, $6)', [Date, CoordinatorName, CoordinatorID, CoordinatorMobileNumber, Capacity, Status], (error, results) => {
    if (error) {
      console.error(error.message);
      response.status(500).send(error.message)
    } else {
      response.status(201).send(`VaccinationDrive added`)
    }

  })
}

exports.updateVaccinationDrive = (request, response) => {
  const id = parseInt(request.params.id)
  const { Date, CoordinatorName, CoordinatorID, CoordinatorMobileNumber, Capacity, Status } = request.body

  db.run(
    'UPDATE VaccinationDrive SET Date = $1, CoordinatorName = $2, CoordinatorID = $3, CoordinatorMobileNumber = $4, Capacity = $5, Status = $6 WHERE VaccinationDriveID = $7',
    [Date, CoordinatorName, CoordinatorID, CoordinatorMobileNumber, Capacity, Status, id],
    (error, results) => {
      if (error) {
        console.error(error.message);
        response.status(500).send(error.message)
      } else {
        response.status(200).send(`VaccinationDriveID modified with ID: ${id}`)
      }
    }
  )
}

exports.deleteVaccinationDrive = (request, response) => {
    const id = parseInt(request.params.id)

    db.run('DELETE FROM VaccinationDrive WHERE VaccinationDriveID = $1', [id], (error, results) => {
      if (error) {
        console.error(error.message);
        response.status(500).send(error.message)
      } else {
        response.status(200).send(`VaccinationDrive deleted with ID: ${id}`)
      }
    })
}
