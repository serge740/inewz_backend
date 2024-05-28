
const db = require("../models/db")

exports.viewsOfNews =(req,res)=>{
    if(req.body.u_id){

        const sql = 'SELECT * FROM viewz left'
        db.query(sql,[req.body.u_id],(err,data)=>{
            if(err) return res.json(err)
            if(data.length==0){
                res.status(409).json('already seen the news')
            }
            else{
                const q = 'INSERT INTO newz VALUES(?)'
                const values = [
                    req.body.id=null,
                    req.body.news_id,
                    req.body.u_id,
                    req.body.us_id,
                    req.body.views 
                ]
                db.query()
            }
        })
    }
    else{
        res.json('shit')
    }
}

exports.getViews =(req,res)=>{
        const sql = 'SELECT * FROM viewz'
        db.query(sql,[req.body.u_id],(err,data)=>{
            if(err) return res.json(err)
            return res.json(data)
})
}

