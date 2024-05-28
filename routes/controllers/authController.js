const db = require('../models/db')

exports.Login = (req, res) => {
    const { name, password } = req.body
    const sql = 'SELECT * FROM users WHERE u_name=?'
    db.query(sql, [name], (err, data) => {
        if (err) {
            return res.json(err)
        }
        if (data.length == 0) {
            return res.status(404).json('user not found')
        }
        const check = data[0].u_password === password
        if (!check) {
            return res.status(409).json('password is incorrect')
        }

        return res.json({user:data,loggedin:true})


    })


}

exports.SignUp = (req, res) => {
    const fileName = req.file.filename

    const q = 'SELECT * FROM users WHERE u_name = ? OR u_password = ? OR u_email = ?'
    db.query(q, [req.body.name, req.body.password, req.body.email], (err, data) => {
        if (err) {
            return res.json(err)
        }
        if (data.length) {
            return res.status(409).json('user already exist')
        }

        const sql = 'INSERT INTO users VALUES(?)'
        console.log(req.body);
        const values = [
            req.body.id=null,
            req.body.name,
            req.body.password,
            req.body.email,
            fileName,
            req.body.role='basic'
        ]
        console.log(values);

        db.query(sql, [values], (err, data) => {
            if (err) return res.json(err)
            return res.json({ register: true })
        })
    })


}

