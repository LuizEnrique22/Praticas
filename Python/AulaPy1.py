#Calcular a Média de Três Números:
numero1 = float(input("Insira o primeiro número: "))
numero2 = float(input("Insira o segundo número: "))
numero3 = float(input("Insira o terceiro número: "))


media =  (numero1 + numero2 + numero3) / 3
print("A sua média é: ", media)

#Calcular a Soma de Dois Números:
numero1 = float(input("Insira o primeiro número: "))
numero2 = float(input("Insira o segundo número: "))

soma =  numero1 + numero2
print("A sua média é: ", soma)

#Converter Idade para Dias:
idade = float(input("Insira o primeiro número: "))

dias =  idade*365
print("A sua idade é: ", dias)

#Calcular o Quadrado de um Número:
numero1 = float(input("Insira o primeiro número: "))

quadrado = numero1 * numero1
print("O seu número em quadrado é: ", quadrado)


#Verificar se um Número é Par ou Ímpar: 
numero1 = float(input("Insira o primeiro número: "))

iop = numero1%2

if (iop == 0):
    print(" O seu número é ", numero1 , " par ")
    
else:
    print(" O seu número é ", numero1 , "é impar")

#Faça um programa que converta metros em centímetros:
numero1 = int(input("Insira o primeiro número: "))

centimetro = numero1 * 100
 print("Os centimetro são ", centimetro)

*Faça um programa que pergunte quanto você ganha por hora, quantas horas você tem trabalhada no mês e mostre quanto você ganharia em 3 meses:
gph = float(input("Insira o quanto você ganha no trabalho: "))
qht = float(input("Insira o seu horario de trabalho: "))

salario3mes = ( gph * qht ) * 3
print ("O salario em 3 meses é", salario3mes)

#Faça um programa que pegue o raio de um círculo e calcule sua área.
raio = float(input("Insira o raio do circulo: "))

circulo = raio * 3.14
print ("O raio do seu circulo é", circulo)

#Faça um programa que calcule a área de um quadrado:
area = float(input("Insira a area do quadrado: "))

quadrado = area*area
print ("A área do seu quadrado é", quadrado)

#Faça um programa que recebe o salário total de alguém e mostra como seria esse salário com um aumento de 5%, 15% e 30%:
salarioT = float(input("Insira o seu salario: "))

resultado = salarioT +  (salarioT * 0.05)
print("O seu aumento em 5% é: ", resultado)

resultado = salarioT + (salarioT * 0.15)
print("O seu aumento em 10% é: ", resultado)

resultado = salarioT + (salarioT * 0.30)
print("O seu aumento em 10% é: ", resultado)

#Faça um programa que recebe nome, idade e apelido de alguém e devolve uma frase de boas vindas:
 Nome = str(input("Insira o seu nome: "))
Idade = int(input("Insira a sua idade: "))
Apelido = str(input("Insira o seu apelido: "))

print(" Seja bem vindo!", Nome ,"Sua idade é:", Idade ,"seu apelido é", Apelido, "!")
