const express = require('express')
const mysql = require("mysql")
const multer = require('multer')
const cors = require('cors')
const morgan = require('morgan')

const app = express()

app.use(express.json())
app.use(cors())
app.use(morgan('dev'))

app.use('/news', express.static('public'))

// connecting to mysql database
const db = mysql.createConnection({
    host: 'localhost',
    user: "root",
    password: '',
    database: "inews"
})

// naming the uploaded images

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './public')
    },
    filename: (req, file, cb) => {
        cb(null, `${Date.now()}_${file.originalname}`)
    }
})

// iniatialzing multer
const upload = multer({ storage })


app.get("/", (req, res) => {
    res.json('shit is live')

})

// the middleware which gets the news from DB
app.get('/news', (req, res) => {
    const sql = 'SELECT * FROM news'
    db.query(sql, (err, data) => {
        if (err) return res.json(err)
        return res.status(200).json(data)
    })
})

// the middleware which gets single news from DB

app.get('/news/:id', (req, res) => {
    const sql = 'SELECT * FROM news WHERE news_id = ?'
    db.query(sql, [req.params.id], (err, data) => {
        if (err) return res.json(err)
        return res.json(data)
    })
})

// the middleware which deletes the news from DB

app.delete('/news/:id', (req, res) => {
    const sql = 'DELETE FROM news WHERE news_id = ?'
    db.query(sql, [req.params.id], (err, data) => {
        if (err) return res.json(err)
        return res.json(data)
    })
})

// the middleware which adds the news from DB

app.post('/news', upload.single('file'), (req, res) => {
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
})

// the middleware which Updates the news from DB

app.put('/news/:id', upload.single('file'), (req, res) => {
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
})

// the middleware which allows you to login

app.post('/login', (req, res) => {
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


})

// the middleware which allows you to signup

app.post('/sign-up', upload.single('file'), (req, res) => {
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
            req.body.id = '',
            req.body.name,
            req.body.password,
            req.body.email,
            fileName
        ]
        console.log(values);

        db.query(sql, [values], (err, data) => {
            if (err) return res.json(err)
            return res.json({ register: true })
        })
    })


})

app.get('/user/:id',(req,res)=>{
    const sql = 'SELECT * FROM users WHERE u_id = ?'
    db.query(sql, [req.params.id], (err, data) => {
        if (err) return res.json(err)
        return res.json(data)
    })
})

app.put('/user/:id', upload.single('file'), (req, res) => {
    const sql = 'UPDATE users SET  u_image = ? WHERE u_id= ?'
    const fileName = req.file.filename
    const id = req.params.id

    db.query(sql, [fileName, id], (err, data) => {
            if (err) return res.json(err)
            return res.json({ updated: true ,user:data})
        })
})


app.listen(7000, () => {
    console.log('http://localhost:7000');
})
