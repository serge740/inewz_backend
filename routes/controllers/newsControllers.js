const db = require('../models/db')


exports.getAllNews = (req,res)=>{
    const sql = 'SELECT * FROM `news` LEFT JOIN users ON news.u_id = users.u_id'
    db.query(sql, (err, data) => {
        if (err) return res.json(err)
        return res.status(200).json(data)
    })
}

exports.getOneNews =  (req, res) => {
    const sql = 'SELECT * FROM `news` LEFT JOIN users ON news.u_id = users.u_id WHERE news_id = ?'
    db.query(sql, [req.params.id], (err, data) => {
        if (err) return res.json(err)
        return res.json(data)
    })
}

exports.deletesNews =  (req, res) => {
    const sql = 'DELETE FROM news WHERE news_id = ?'
    db.query(sql, [req.params.id], (err, data) => {
        if (err) return res.json(err)
        return res.json(data)
    })
}

exports.addNews =  (req, res) => {
    const sql = 'INSERT INTO news VALUES(?)'
    const fileName = req.file.filename
    const values = [
        req.body.id = '',
        req.body.title,
        req.body.category,
        req.body.date,
        req.body.description,
        fileName,
        req.body.owner
    ]
    console.log(values);
    db.query(sql, [values], (err, data) => {
        if (err) return res.json(err)
        return res.json({ inserted: true, data: data })
    })
}

exports.updateNews =  (req, res) => {
    const sql = 'UPDATE news SET news_title = ? , news_categories = ? , news_date = ? , news_description = ? , news_image = ? WHERE news_id= ?'
    const fileName = req.file.filename
    const id = req.params.id

    db.query(sql, [req.body.title,
    req.body.category,
    req.body.date,
    req.body.description,
        fileName, id], (err, data) => {
            if (err) return res.json(err)
            return res.json({ inserted: true })
        })
}