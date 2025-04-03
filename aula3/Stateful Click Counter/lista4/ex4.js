function firstPromise(numInt){
    return new Promise((resolve, reject) => {
        if(numInt > 2){
            resolve(numInt);
        }else{
            reject("Rejeitado pois não pe maior que 2");
        }
    });
}

function secondPromise(data){
    return new Promise((resolve, reject) =>{
        if((data +1 ) % 2 ==0){
            resolve("second resolvida");
        }else{
            reject("é impar");
        }
    });
}

//teste
firstPromise(3)
    .then(data => secondPromise(data))
    .then(data =>{console.log(data) })
    .catch(e => {console.log(e)})

firstPromise(1)
    .then(data => secondPromise(data))
    .then(data =>{console.log(data) })
    .catch(e => {console.log(e)})

firstPromise(4)
    .then(data => secondPromise(data))
    .then(data =>{console.log(data) })
    .catch(e => {console.log(e)})