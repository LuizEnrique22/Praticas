import time
vida = 20
protagonista = ('')

def insira_dados():
    global protagonista
    protagonista = input("Digite o nome do seu Protagonista: ")
    comeco()

def comeco():
    global vida
    print('Você tem {} pontos de HP, pense com cuidado....'.format(vida))
    time.sleep(1)
    print("")
    print('No reino mágico de Fuchsia, antigamente, havia  uma bela donzela e um protagonista chamado {} cujo seu trabalho era proteger o reino em que a donzela. sua amada, a quem dedicava sua vida, vivia.'.format(protagonista))
    time.sleep(1)
    print("")
    print('Um dia houve um ataque no reino, onde civis eram atacados e tesouros eram saqueados por elfos ladrões.')
    time.sleep(1)
    print("")
    print('você está tentando ajudar os civis, mas ao mesmo tempo você precisa deter os ladrões e salvar a donzela')
    time.sleep(1)
    print("")
    print('Você precisara escolher entre deixar os civis para trás e salvar a donzela de um ataque ao castelo ou salvar os civis e depois ir atras da donzela')
    time.sleep(1)
    print("")
    
    print("")
    escolha_1()
    
def escolha_1():
    global vida
    escolha1 = input('1. Para salvar a donzela e deixar os civis para trás: \n2. Para salvar os civis antes da Donzela:\n3. Ação secreta!?\n{} faça sua escolha: '.format(protagonista))
    print("")
    if (escolha1 == '1'):
        print("")
        print('Os civis morrem com os ataques dos elfos e você parte diretamente para o castelo chegando a tempo de salvar a donzela')
        time.sleep(1)
        print("")
        noth()

    elif (escolha1 == '2'):
        vida-=3
        print('Você salva os civis, mas antes disso você é ferido por um elfo ladrão segurando uma adaga que foi desferida nas suas costas,sua vida agora é {}, após você derrotar todos corre para o castelo, mas já era tarde demais, todos que residiam lá dentro morreram'.format(vida))
        time.sleep(1)
        print("")  
        final_r()
        
    elif (escolha1 == '3'):
        vida-=1
        print('Você decide deixar os civis para trás, porém á caminho do castelo você é parado pelo rei goblin tomando seu tempo numa luta quase mortal, você toma {} de dano, logo após derrotar ele você tenta correr a caminho do castelo com um braço arrancado e ferimentos pelo corpo chegando lá você vê a cena de todos mortos e sua amada estirada no chão em pedaços . Pela perda de sangue você acaba morrendo'.format(vida))
        
        time.sleep(1)
        print("")
        final_mr()
        
    else:
        print('Você inseriu um número invalido, ESCOLHA NOVAMENTE\n\n')
        escolha_1()

def noth():
    print('Após salvar a donzela você sorri com ela em seus braços em segurança... ')
    time.sleep(1)
    print("")
    
    print('Depois que você percebe que não tinha uma segurança muito grande, {} sai correndo com a mesma nós braços vendo guardas enfrentando elfos e conseguindo fazer com que a invasão vai sendo dispersada aos poucos .... Ou será que não??? '.format(protagonista))
    time.sleep(1)
    print("")
    
    print('Nevoas densas começam a aparecer enquanto o portão grande do reino e suas muralhas são quebradas....\n Mais ogros daqueles que tinham te atacado antes, porém maiores e bem mais fortes, com medo de algo acontecer algo com sua amada você corre rapidamente pra um esconderijo que tinha, deixando ela lá e pegando um pergaminho secreto e uma espada mais forte saindo de lá pra ir lutar....')
    time.sleep(1)
    print("")
    luta()

def luta():
    caminho1 = input("{}, você tem dois caminhos, os dois te levam para lugares diferente, dependendo do que escolha você ira mais ou menos inimigos\n1. Esquerda:\n2. Direita:\n3. Ação kamikaze (Pergaminho será usado): ".format(protagonista))
    print("")
    if (caminho1 == '1'):
        print("")
        print("O caminho da esquerda contém 3 ogros, logo quando chega você é atacado pelos 3, desviando rapidamente, percebendo que estava em desvantagem o mesmo tenta cortar os três ao meio... ")
        print("")
        time.sleep(1)
        print("")
        print("Mais é uma tentiva falha, um deles te pega pelo pescoço e os outros 2 pegando seus dois braços e puxando tirando do corpo, logo depois suas pernas e cabeça o deixando esquartejado no chão... ")
        print("")
        final_mr()
    
    elif (caminho1 == '2'):
        print("")
        print("O caminho da direita contém apenas 1 ogro, então quando você chega rapidamente corta ele ao meio assim correndo para o centro da vila se juntando a outros guardas que protegem o reino lutando contra os ogros ... ")
        time.sleep(1)
        note()
        
    elif (caminho1 == '3'):
        print("")
        print("Você usou o pergaminho sagrado?!....\nVocê conjura a mágia no pergaminho e tudo que era mosntro ao redor do vilarejo é explodido, mais isso tinha um preço.... A vida do Usuário")
        print("")
        final_meio()
    
    else:
        print('Você inseriu um número invalido, ESCOLHA NOVAMENTE\n\n')
        luta()
        
def note():
    donzela = input("{}, Você pode escolher novamente dois caminhos\n1. Continuar lutando contra os ogros no centro do reino:\n2. Ir no esconderijo da princesa:".format(protagonista))
    if (donzela == '1'):
        print("")
        print("Vocês conseguem matar muitos ogros porém parecia que não acabava...\n NÃO ACABOU!\nAo longe você vê sua amada sendo carregada por ogros junto com alguns civis você então deixa os restantes dos ogros correndo até eles vendo que eram poucos você pega a espada cortando um por um, soltando os civis e a donzela vendo que tudo tinha acabado ele olha pra sua amada que o olha de volta....  ")
        print("")
        time.sleep(1)
        print('{} - É-É bom ver que você está bem....'.format(protagonista))
        print("")
        time.sleep(1)
        print('Iris- Sabia que você me salvaria {}, obrigado e como agradecimento deixo você passar uns dias como guarda pessoal'.format(protagonista))
        print("")
        time.sleep(1)
        print('Ela pisca pra você e da um selinho....  ')
        print("")
        final_mb()
        time.sleep(1)
    
    elif (donzela == '2'):
        print("Você sai correndo até o esconderijo vendo que o centro da cidade já estava calmo e então entra lá vê a donzela segura com um sorriso você então vai até a mesma pegando novamente no colo e então vê o reino pacificado.... tudo tinha acabado... ")
        print('Iris - Obrigado por me salvar {}, fico te devendo uma'.format(protagonista))
        print("Ela te dá um beijo e tudo ocorreu bem, Parabéns!")
        final_bom()
    


























def final_r():
    print('Final ruim, todos que habitavam no castelo morreram incluindo sua amada Iris, FIM DE JOGO')
    
def final_mr():
    print('Final muito ruim, você morreu, sua amada Iris morreu e reino inteiro foi destruido, FIM DE JOGO')
    
def final_meio():
    print('Final médio, você morreu porém salvou o reino, todos lembram do seu nome e uma estatua é posta no centro dela, sua amada te admira demais')

def final_mb():
    print('Final Muito Bom, Você salvou o reino e a Donzela, com o passar dos anos vocês forem se aproximando e você acabou casando com ela e virando Rei de Fuchsia.')
def final_bom():
    print('Final Bom, Você salvou o reino e a Donzela, porém você não fez com que ela se apaixonasse ')




insira_dados()
