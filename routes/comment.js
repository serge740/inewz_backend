const express = require('express')
const router = express.Router()
const upload = require('./models/upload')
const commentController = require('./controllers/commentController')


router.get('/',commentController.getAllCommentNews)
router.post('/',commentController.addComment)
router.delete('/:id',commentController.deleteComment)


module.exports = router