
const express = require('express')
const db = require('./routes/models/db')
const cors = require('cors')
const morgan = require('morgan')
const auth = require("./routes/auth")
const news = require("./routes/news")
const user = require("./routes/user")
const views = require("./routes/views")
const comment = require('./routes/comment')
const app = express()



app.use('/news', express.static('public'))
app.use(express.json())
app.use(cors())
app.use(morgan('dev'))
app.get('/',(req,res)=>{
    res.redirect('/news')
})
app.use('/',auth)
app.use('/news',news)
app.use('/user',user)
app.use('/comment',comment)
app.use('/views',views)



app.use((req,res)=>{
    res.status(404).send('your shit does not exist')
})


app.listen(7000, () => {
    console.log('http://localhost:7000');
})