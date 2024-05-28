const db = require('../models/db')

exports.getAllUSers = (req, res) => {
    const sql = 'SELECT * FROM users '
    db.query(sql, [req.params.id], (err, data) => {
        if (err) return res.json(err)
        return res.json(data)
    })
}

exports.getOneUsers = (req,res)=>{
    const sql = 'SELECT * FROM users WHERE u_id = ?'
    db.query(sql, [req.params.id], (err, data) => {
        if (err) return res.json(err)
        return res.json(data)
    })
}

exports.updateUsersImage = (req, res) => {
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

exports.updateUsersData = (req, res) => {
    const sql = 'UPDATE users SET  u_name = ?, u_email = ? , u_role = ? , u_password = ? WHERE u_id= ?'
    const id = req.params.id

    db.query(sql, [req.body.name,req.body.email,req.body.role, req.body.password,id], (err, data) => {
        if (err) return res.json(err)
        db.query('SELECT * FROM users WHERE u_id = ?', [req.params.id], (error, payload) => {
            if (error) return res.json(error)
            return res.json({ updated: true, user: payload })
        })
    })
}

exports.deletesUsers =  (req, res) => {
    const sql = 'DELETE FROM users WHERE u_id = ?'
    db.query(sql, [req.params.id], (err, data) => {
        if (err) return res.json(err)
        return res.json(data)
    })
}