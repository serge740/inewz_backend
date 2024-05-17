const db = require('../models/db')

exports.getAllUSers = (req, res) => {
    const sql = 'SELECT * FROM users '
    db.query(sql, [req.params.id], (err, data) => {
        if (err) return res.json(err)
        return res.json(data)
    })
}

exports.updateUsers = (req, res) => {
    const sql = 'UPDATE users SET  u_image = ? WHERE u_id= ?'
    const fileName = req.file.filename
    const id = req.params.id

    db.query(sql, [fileName, id], (err, data) => {
        if (err) return res.json(err)
        db.query('SELECT * FROM users WHERE u_id = ?', [req.params.id], (error, payload) => {
            if (error) return res.json()
            return res.json({ updated: true, user: payload })
        })
    })
}