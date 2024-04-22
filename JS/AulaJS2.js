//1) Questão

var n1 = parseFloat(prompt("Insira o primero numero:"));
var n2 = parseFloat(prompt("Insira o segundo numero:"));

let soma = n1 + n2;
let subtração = n1 - n2;
let multiplicação = n1 * n2;
let divisão = n1 / n2;
console.log("A soma dos dois números são:" + soma);
console.log("A subtração dos dois números são:" + subtração);
console.log("A multiplicação dos dois números são:" + multiplicação);
console.log("A divisão dos dois números são:" + divisão);

//2) Questão

var peso = parseFloat(prompt("Insira o seu peso: "));
var altura = parseFloat(prompt("Insira o seu altura: "));

let IMC = peso/ (altura*altura)
console.log(" Seu IMC é: " + IMC )

if (IMC >= 18.5 && IMC <= 24.9 )
 console.log("Seu IMC é Saudavel ")
else
console.log("Seu IMC não é Saudavel")

// 3) Questão

var escolha = prompt("Insira C para celsius e F para Fahrenheit: ").toUpperCase();

if (escolha === "C"){
    var cel = parseFloat(prompt("Insira a temperatura em Celsius para ser convertida para Fahrenheit: "))
  let c = (cel * 9/5) + 32
  console.log ("Sua temperatura em Fahrenheit é:" + c)
}

 if (escolha === "F"){
    var fah = parseFloat(prompt("Insira a temperatura em Fahrenheit para ser convertida para Celcius: "))
    let f = (fah - 32) * 5/9
    console.log("Sua temperatura em Fahrenheit é: " +f)
    
}

//4) Questão

var escolha = prompt("Insira M para Macho e F para Femêa: ").toUpperCase();
var idade = parseFloat(prompt("Insira sua idade: "));

if (escolha === "M" && idade >= 18 ){
console.log ("Você é Macho e Maior de idade")

}

else{
 console.log ("Você não é Macho ou é Menor de idade")
}
