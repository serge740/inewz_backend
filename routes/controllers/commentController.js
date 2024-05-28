const db = require('../models/db')

exports.addComment =(req,res) =>{
  
    const sql = 'INSERT INTO comments VALUES(?)'
    const values = [
        req.body.id=null,
        req.body.u_id,
        req.body.news_id,
        req.body.comment,
        req.body.date,
        req.body.us_id,
    ]
    console.log(values);
    db.query(sql,[values],(err,data)=>{
        if(err) return res.json(err)
        return res.json(data)
    })

}

exports.getAllCommentNews = (req, res) => {
    const sql = 'SELECT * FROM comments LEFT JOIN users ON comments.u_id = users.u_id LEFT JOIN news ON (comments.news_id = news.news_id AND comments.u_id = users.u_id);'
    db.query(sql,[req.params.id] ,(err, data) => {
        if (err) return res.json(err)
        if (data.length < 0) {
            return res.status(404).json('no comment of news')
        }
        else {
            return res.status(200).json(data)
        }
    })
}

exports.deleteComment =(req,res)=>{
    const sql = 'DELETE FROM comments WHERE comment_id = ?'
    db.query(sql, [req.params.id], (err, data) => {
        if (err) return res.json(err)
        return res.json(data)
    })
}

