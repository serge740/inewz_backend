const express = require('express')
const router = express.Router()
const upload = require('./models/upload')
const newController = require('./controllers/newsControllers')


// the middleware which gets the news from DB
router.get('/', newController.getAllNews)

// the middleware which gets single news from DB

router.get('/:id', newController.getOneNews)

// the middleware which deletes the news from DB

router.delete('/:id', newController.deletesNews)

// the middleware which adds the news from DB

router.post('/', upload.single('file'), newController.addNews)

// the middleware which Updates the news from DB

router.put('/:id', upload.single('file'),  newController.updateNews)






module.exports = router