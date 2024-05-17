const express = require('express')
const router =  express.Router()
const db = require('./models/db')
const upload = require('./models/upload')
const authController = require('./controllers/authController')

// the middleware which allows you to login

router.post('/login', authController.Login )

// the middleware which allows you to signup

router.post('/sign-up', upload.single('file'), authController.SignUp)

module.exports = router