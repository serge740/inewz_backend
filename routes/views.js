const express = require('express')
const router = express.Router()
const upload = require('./models/upload')
const viewsController = require('./controllers/viewsController')


router.get('/',viewsController.getViews)

router.post('/',viewsController.viewsOfNews)

module.exports = router