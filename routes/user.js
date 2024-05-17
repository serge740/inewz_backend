
const express = require("express")
const router = express.Router()
const upload = require('./models/upload')
const db = require('./models/db')
const userController = require('./controllers/userController')

router.get('/:id',(req,res)=>{
    const sql = 'SELECT * FROM users WHERE u_id = ?'
    db.query(sql, [req.params.id], (err, data) => {
        if (err) return res.json(err)
        return res.json(data)
    })
})
router.get('/', userController.getAllUSers)

router.put('/:id', upload.single('file'), userController.updateUsers)

module.exports = router