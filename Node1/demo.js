console.log('message 1');

setTimeout(function(){
    console.log('Message 2');
},500);
setTimeout(function(){
    console.log('Message 3');
},0);

console.log('message 4');