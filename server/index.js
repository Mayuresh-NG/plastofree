const express = require ("express");
const mongoose = require("mongoose");
const adminRouter = require("./routes/admin");
const productRouter = require ("./routes/product");
const authRouter = require ("./routes/auth");

//init
const port = process.env.port || 3000;
const app = express();

const DB = "mongodb+srv://mayuresh:spnpiDmbHHSARx74@cluster0.iudshl1.mongodb.net/?retryWrites=true&w=majority";
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);

//connections
mongoose.
    connect(DB).
    then(()=> {
        console.log("connection successful")
    }).catch((e) => {
        console.log(e);
    });
    app.listen(port, "0.0.0.0",() => {
        console.log(`connected at ${port}`);
    });