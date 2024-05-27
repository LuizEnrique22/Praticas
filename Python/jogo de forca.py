forca = 'churrasco'
letras_corretas = set(forca)
letras_descobertas = set()
erros = 0 

print("Bem-Vindo ao jogo de Adivinhar Palavras!")

while True:
    letra = input("Digite uma letra: ").lower()
    
    if letra in letras_corretas:
        letras_descobertas.add(letra)
        print("Correto!")
        
    else:
        erros += 1
        print("Errado! Você tem", 3 - erros, "Tentativas restantes." )
        
    print("Palavra: ", ''.join([letra if letra in letras_descobertas else '_' for letra in forca]))
    
    if (letras_corretas == letras_descobertas) :
        print("Parabéns! você acertou a palavra secreta: ", forca)
        break
    
    elif (erros == 3) :
        print("Você errou 3 vezes! A palavra secreta era: ", forca)
        break
