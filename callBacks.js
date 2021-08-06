// setTimeout((alert) => {
//     console.log('HAMMERTIME')
// }, 5000);

// function hammerTime(time) {
//     window.setTimeout(function () {
//         console.log(`${time} is hammertime!`);
//     }, 5000)
//     console.log(`Hammertime is set for ${time}`);
// };

// const readline = require('readline');

// const reader = readline.createInterface({
//     input: process.stdin,
//     output: process.stdout
// });

// function teaAndBiscuits (callback) {

//     reader.question('Would you like some tea?', function (res1) {
//         reader.question('Would you like some bisciots?', function (res2) {
//             callback(res1, res2)
//         });
//     });
// }

// teaAndBiscuits( function callback (response1, response2) {
//     if ( response1 === 'yes' && response2 === 'yes') {
//         console.log(`So you ${response1} you want tea and ${response2} you want biscuits.`);
//         reader.close();
//     };
// });

const readline=require('readline');

const reader=readline.createInterface({
    input:process.stdin,
    output:process.stdout});

function teaAndBiscuits() {
    reader.question('Would you like some tea?',
    function(res){

        console.log(`You replied ${res}.`);

        reader.question('Would you like some biscuits?',
        function(res2){

            console.log(`You replied ${res2}.`);

            const first=(res==='yes')?'do':'don\'t';
            const second=(res2==='yes')?'do':'don\'t';

            console.log(`So you ${first} want tea and you ${second} want biscuits.`);

            reader.close();
        });
    });
}

teaAndBiscuits();