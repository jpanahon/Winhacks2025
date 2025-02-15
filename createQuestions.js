import fs, { readFileSync } from 'fs';


function writeQuestions(question, zero1, zero2, zero3) {
    let data = fs.readFileSync("questions.json", 'utf8');
    var obj = JSON.parse(data);
    obj['Cubics'].push({ "question": question, "zero1": zero1, "zero2": zero2, "zero3": zero3 });
    fs.writeFileSync("questions.json", JSON.stringify(obj), 'utf8');

}


function readMath(question, number) {
    let data = fs.readFileSync("questions.json", 'utf8');
    return JSON.parse(data)[question][number];

}

console.log(readMath("Quadratics", 3));
//writeQuestions("Quadratics", "x^2 - 5x + 6", 2, 3);


