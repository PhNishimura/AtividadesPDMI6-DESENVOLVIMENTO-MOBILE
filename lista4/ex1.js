function dobrarEm5Segundos(x){
    return new Promise((resolve) => {
        setTimeout(() => {
            resolve (x*2);
        }, 5000);
    });
}


    dobrarEm5Segundos(5).then(resultado => console.log(resultado)); 
    