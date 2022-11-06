
const db = require('./../db').db

exports.reports = (request, response) => {
    const getStudentSql = "SELECT * FROM Student"
    db.all(getStudentSql, [], (err, students) => {
        var vaccinated = 0
        var unvaccinated = 0
        var notEligible = 0
        var all = 0
        // var scheduled = 0
        // var not eleigible

        all = students.length
        for (let i = 0; i < all; i++) {
            var student = students[i]
            const VaccinationStatus = student.VaccinationStatus
            if (VaccinationStatus == 'DONE') {
                vaccinated += 1
            } else {
                unvaccinated += 1
                if (VaccinationStatus == 'MEDICAL_ISSUES_CANNOT_VACCINATE') {
                    notEligible += 1
                }
            }
        }

        const vaxDriveSql = "SELECT * FROM VaccinationDrive"
        db.all(vaxDriveSql, [], (err, vaxDrives) => {
            var pastDrives = 0
            var upcomingDrives = 0

            for (i = 0; i < vaxDrives.length; i++) {
                let drive = vaxDrives[i]
                let date1 = drive.Date
                let dateObj = new Date(date1)
                let dateNow = new Date()
                if (dateObj >= dateNow) {
                    upcomingDrives += 1
                } else {
                    pastDrives += 1
                }
            }

            response.status(200).json({
                'vaccinated': vaccinated,
                'unvaccinated': unvaccinated,
                'notEligible': notEligible,
                'all': all,
                'pastDrives': pastDrives,
                'upcomingDrives': upcomingDrives,
                'x-comment-ignore': 'notEligible is unvaccinated'
            })

        })

    })
}

