// window.setTimeout(function () {
//   alert('HAMMERTIME');
// }, 5000);


// function hammertime(time) {  
//   window.setTimeout(function () {
//     alert(`${time} is hammertime`);
//   }, time);
// }

const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits () {
  let first, second;

  reader.question('Would you like some tea?', (res) => {
    console.log(`You replied ${res}.`);
    reader.question('Would you like some biscuits?', (res1) => {
      console.log(`You replied ${res1}.`);

      const firstRes = (res === 'yes') ? 'do' : 'don\'t';
      const secondRes = (res1 === 'yes') ? 'do' : 'don\'t';

      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
      reader.close();

    });
  });
}

teaAndBiscuits()