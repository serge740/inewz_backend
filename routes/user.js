
const express = require("express")
const router = express.Router()
const upload = require('./models/upload')
const db = require('./models/db')
const userController = require('./controllers/userController')
router.get('/:id',userController.getOneUsers)
router.get('/', userController.getAllUSers)

router.put('/:id', upload.single('file'), userController.updateUsersImage)
router.put('/data/:id',userController.updateUsersData)
router.delete('/:id', userController.deletesUsers)

module.exports = router