import fs, { readFileSync } from 'fs';
import mysql from 'mysql2';

const connection = mysql.createConnection({
    host: 'localhost',  // Change to your database host (e.g., 'localhost' or an IP address)
    user: 'root',       // Your MariaDB username
    password: 'Coffee99', // Your MariaDB password
    database: 'winhacks2025db'  // The name of the database you want to use
});

function insertinfo(number) {
    connection.connect((err) => {
        if (err) {
            console.error('Error connecting to the database:', err.stack);
            return;
        }
        console.log('Connected to the database.');
    });


    for (let i = 0; i < 10; i++) {
        let obj = readMath("Arithmetics", i);

        const query = 'INSERT INTO mathquestions (Level, QuestionNumber, Question, Answer) VALUES (?, ?, ?, ?)';
        connection.execute(query, [(number+1), i, obj[0], obj[1]], (err, results) => {
            if (err) {
                console.error('Error executing query:', err.stack);
                return;
            }
            console.log('Data inserted successfully:', results);
        });
    }

    // Close the database connection
    connection.end();
}


function writeQuestions(question, answer1, answer2, answer3) {
    let data = fs.readFileSync("questions.json", 'utf8');
    var obj = JSON.parse(data);
    obj['Cubics'].push({ "question": question, "answer1": zero1, "answer2": zero2, "answer3": zero3 });
    fs.writeFileSync("questions.json", JSON.stringify(obj), 'utf8');

}


function readMath(question, number) {
    let data = fs.readFileSync("questions.json", 'utf8');
    return JSON.parse(data)[question][number];

}

console.log(readMath("Quadratics", 3));
//writeQuestions("Quadratics", "x^2 - 5x + 6", 2, 3);



insertinfo(0);
