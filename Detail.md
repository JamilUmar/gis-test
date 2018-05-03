
This code generates random quotes based on the length of the quotes
var rand = Math.floor(Math.random() * Object.keys(quotes).length);
console.log(quotes[rand]);


This code is edited to generate quotes that have ODD Object.keys number
var rand = Math.floor(Math.random() * Object.keys(quotes).length);
    if (rand % 2 == 1) {
        console.log(quotes[rand]);
    }
