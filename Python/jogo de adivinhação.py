import random 

rand = random.randint(1,100)
print(rand)

def dados():
    for i in range(7):
        n1 = int(input("Insira o seu número: "))
        
        if (rand == n1):
            print("Você acertou: Parabéns! Na ",i+1, "Tentativa")
            print("")
            break
        
        elif (rand > n1):
            print("Seu número é maior!")
            print("")

            
        elif (rand < n1):
            print("Seu número é menor!")
            print("")
            
    else:
        print('Você superou o limite de tentativas, o seu número certo é: ',rand)
        


dados()
