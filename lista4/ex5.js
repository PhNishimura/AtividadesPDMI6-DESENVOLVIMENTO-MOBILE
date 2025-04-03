function somar(x,y){
    return new Promise((resolve, reject) => {
        const resultado = x+y; 

        if (resultado % 2 ==0){
            resolve("Operação ok o numero é par");
        }else{
            reject("operação é impar");
        }
    });
}

function callbackSucesso(mensagem){
    console.log("sucesso:", mensagem);
};

function callbackError(erro){
    console.log("erro:", erro);
};

//exemplo:

somar(4, 6)
  .then(callbackSucesso)
  .catch(callbackError);


somar(6, 9)
  .then(callbackSucesso)
  .catch(callbackError);

somar(10, 1)
  .then(callbackSucesso)
  .catch(callbackError);