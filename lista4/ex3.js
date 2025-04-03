function test(numero) {
    return new Promise((resolve, reject) => {
      if (typeof numero !== "number") {
        reject("erro"); // Rejeita instantaneamente se não for um número
      } else if (numero % 2 !== 0) {
        setTimeout(() => {
          resolve("ímpares"); // Resolve após 1 segundo se for ímpar
        }, 1000);
      } else {
        setTimeout(() => {
          reject("par"); // Rejeita após 2 segundos se for par
        }, 2000);
      }
    });
  }
  
  // Exemplos de uso:
  test("teste").catch(erro => console.log(erro)); // "erro" (instantâneo)
  test(5).then(res => console.log(res)).catch(err => console.log(err)); // Após 1s: "ímpares"
  test(8).then(res => console.log(res)).catch(err => console.log(err)); // Após 2s: "par"
    