const multer = require('multer')

// // naming the uploaded images

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

module.exports = upload