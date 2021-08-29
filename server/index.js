const express = require('express');
const app = express();
const cors = require('cors');
const pool = require("./db");
const bodyParser = require("body-parser");


app.use(cors())
app.use(express.json());

app.post('/submit', async(req, res) =>  {
    try {
        const {name} = req.body
        const newSubmit = await pool.query(
            "INSERT INTO student_submit(name) VALUES($1) RETURNING *",
            [name]
        );
        res.json(newSubmit.rows[0])
    } catch (err) {
        console.error(err.message);
    }
});

app.get('/submit', async(req, res) => {
    try {
        const allSubmit = await pool.query("SELECT * FROM student_submit")
        res.json(allSubmit.rows)
    } catch (err) {
        console.error(err.message)
    }
});

app.get('/submit/:id', async(req, res) => {
    try {
        const {id} = req.params;
        const submit = await pool.query("SELECT * FROM student_submit WHERE id = $1", [id],
        [name, id])
        res.json(submit.rows[0]);
        res.json("Đã chỉnh sửa");
    } catch (err) {
        console.error(err.message)
    }
})

app.put('/submit/:id', async(req, res) => {
    try {
        const {id} = req.params
        const {name} = req.body;
        const updateSubmit = await pool.query("UPDATE student_submit SET name = $1 WHERE id = $2")
    } catch (err) {
        console.error(err.message)
    }
});

app.delete('/submit/:id', async(req, res) => {
    try {
        const {id} = req.params;
        const deleteSubmit = await pool.query("DELETE FROM student_submit WHERE id = $1",
        [id]);
        res.json("Đã xoá");
    } catch (err) {
        console.error(err.message)
    }
});

app.listen(5000, () => {
    console.log("Server on 5000")
});

app.get('/result', (req, res)=>{
    pool.query(`Select * from bkstudent`, (err, result)=>{
        if(!err){
            res.send(result.rows);
        }
    });
    pool.end;
})

app.get('/submit', (req, res)=>{
    pool.query(`Select * from submit`, (err, result)=>{
        if(!err){
            res.send(result.rows);
        }
    });
    pool.end;
})
pool.connect();
