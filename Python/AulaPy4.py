#1 - Liste uma sequência de 10 números do maior para o menor.


for var in range(10, 0, -1):
    print (var)

#2 - liste uma sequência numérica que começa em um valor inserido pelo usuário e acaba em um outro valor escolhido pelo usuário

n1 = int(input("Insira o seu primeiro número: "))
n2 = int(input("Insira o seu segundo número: "))

if (n1 < n2):
    while n1 <= n2:
        print(n1)
        n1 += 1
    
else:
    for n2 in range(n1, n2-1, -1):
        print(n2)

#3 -Solicite um número ao usuário e imprima a tabuada desse número, de 1 a 10


n1 = int(input("Insira o seu primeiro número: "))

for i in range(1, 11 ):
    print('{} x {} = {}'.format(n1,i,n1*i))



















#4 -Solicite dois números ao usuário e verifique quantos números pares ou ímpares existem entre esses dois números.


par = 0
impar = 0
n1 = int(input("Insira o seu primeiro número: "))
n2 = int(input("Insira o seu segundo número: "))

for i in range(n1, n2+1):
    if ( i%2 == 0 ):
        par+=1
        print(i)
        

    else:
        impar+=1
        print(i)
        print("Quantidade números par são: {}  ".format(par))        
        print("Quantidade de números impar são: {}".format(impar))

#5 - Solicite um número inteiro positivo N ao usuário e calcule a soma dos primeiros N números naturais.


soma = 0
n1 = int(input("Insira um número positivo: "))

for i in range(1, n1+1):
    soma+=i
    print(i)

print("A soma dos seus números naturais é: ",soma)

#6 - Solicite ao usuário a quantidade de notas que ele deseja inserir, em seguida, solicite essas notas e calcule a média.

soma = 0
qntd = int(input("Solicite a quantidade de notas desejada: "))

for i in range(qntd):
    nt1 = int(input("Insira sua {} nota: ".format(i+1))) 
    soma+=nt1

media = soma/qntd
print('Sua Média é: ',media)

#7 - Solicite um número inteiro positivo ao usuário e calcule o fatorial desse número.

soma = 1
n1 = int(input("Insira um número positivo: "))

for i in range(1, n1+1):
    soma*=i
    print(i)

print("O calculo fatorial é: ",soma)

#8 - Desenvolva um programa em Python que permita ao usuário escolher um número e gere a tabuada desse número até um limite especificado pelo próprio usuário.



