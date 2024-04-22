//1) QUESTÃO

var peso=parseFloat(prompt("Digite seu peso: "));
var altura=parseFloat(prompt("Digite sua altura: "));

let IMC= peso/(altura*altura);
console.log("Seu IMC é: " + IMC)

if(IMC >= 18.5 && IMC <= 24.9 ){
console.log("Seu peso é normal");
}else if(IMC >= 25 && IMC <=29.9 ){
console.log("Você está sobrepeso");
}else if(IMC >= 30){
console.log("Você está com obesidade")
}else{
console.log("Você tem o peso abaixo do normal")
}

//2) QUESTÃO 

var n1=parseFloat(prompt("Digite o primeiro número: "));
var n2=parseFloat(prompt("Digite o segundo número: "));
var n3=parseFloat(prompt("Digite o terceiro número: "));

if (n1> n2 && n2 > n3){
console.log("A ordem decrescente é: " + n1 + ", "+ n2+ " e " + n3);
}else if(n2 > n1 && n1 > n3){
console.log(" A ordem decrescente é: " + n2 + ", "+ n1+ " e " + n3);
}else if(n3 > n2 && n2 > n1){
console.log(" A ordem decrescente é: " + n3 + ", "+ n2+ " e " + n1);
}else if(n1 > n3 && n3 > n2){
console.log(" A ordem decrescente é: " + n1 + ", "+ n3+ " e " + n2);
}else if(n2 > n3 && n3 > n1){
console.log(" A ordem decrescente é: " + n2 + ", "+ n3+ " e " + n1);
}else if(n3 > n1 && n1 > n2){
console.log(" A ordem decrescente é: " + n3 + ", "+ n1+ " e " + n2);
}


//3) QUESTÃO

var nome = prompt("Digite seu nome: ");
var idade = parseFloat(prompt("Digite sua idade: "));
var sexo= prompt("Insira M para Masculino e F para Feminino: ").toUpperCase();

if(idade >35){
console.log("Você foi recusado, usuário mais velho que 35 anos")
}else if(sexo === "M" && idade >= 18){
console.log("Você foi contratado")
}else if(sexo === "F" && idade >= 18){
console.log("Você foi contratada pelo RH ")
}else if(sexo === "M" && idade <=18){
console.log("Você foi contratado como estagiário ")
}

//4) QUESTÃO 

var n1 = parseFloat(prompt("Digite a primeira nota: "));
var n2 = parseFloat(prompt("Digite a segundo nota: "));
var n3 = parseFloat(prompt("Digite a terceira nota: "));

var media = (n1 + n2 + n3)/3
if(media >= 7){
console.log("Sua nota final foi "+media+" Parabéns você passou")
}else if(media >= 5){
console.log("Sua nota final foi " +media+ " Você está de recuperação")
}else if(media <5){
console.log("Sua nota final foi " +media+ " Você foi buro e repetiu")
}

//5) QUESTÃO

var n1 = parseFloat(prompt("Insira um número: "));
var ip= n1%2
var m = n1%3

if (ip == 1){
console.log("O número " + n1 + " é impar")
}else{
console.log("O número " + n1 + " é par")}
if (m == 0 ){
console.log("o número "+n1+" é multiplo de 3")
}else if(m == 1){
console.log("O número "+n1+" não é multiplo 3")
}

//6) QUESTÃO 

var ano = parseFloat(prompt("Insira um ano: "));

if((ano%100 !== 0 && ano%4==0)|| ano%400==0){
console.log("O ano "+ano+" é bissexto ")
}else if(ano % 4 && ano % 100){
console.log("O ano "+ano+" não é bissexto ")
}

