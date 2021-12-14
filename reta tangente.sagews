︠905d1969-9474-415e-b7cc-f92d7b0d0707r︠
# Permite que usemos o comando np qu vai criar a lista dos h`s que vamos usar na animação
import numpy as np


# Cria uma lista vazia de graficos
graficos=[]
def f(x):
    return x^3 + 4*x + 1

# Cria lista dos hs usados na animação
lista=np.arange(3,0, -0.1)

for h in lista:
    # x1 é o ponto onde calcularemos a derivada. x1 faz o papel do c
    x1 = 4
    y1 = f(x1)
    # x2 está fazendo o papel de c+h
    x2=h
    y2=f(x2)
    #inclinação da reta secante
    coef_ang=(y2-y1)/(x2-x1)


    #Vamos plotar o gráfico de fundo da animação
    p = plot(f(x), x, 1, 5)

    #pt1 e pt2 são as linhas de codigos que plotam os dois pontos da secante.
    pt1 = point((x1, y1), rgbcolor=(0,1,0), pointsize=30)
    pt2 = point((x2, y2), rgbcolor=(1,0,0), pointsize=30)


    d=2
    l = line([(x1-d, y1-d*coef_ang), (x2+d, y2+d*coef_ang)], rgbcolor=(1,1,0))


    # plotar os textos
    t1 = text("(%s, %s)" % (round(x1,2), round(y1,2)), (x1+0.5, y1-1.6), rgbcolor=(1,0,0))
    t2 = text("(%s, %s)" % (round(x2,2), round(y2,2)), (x2+0.5, y2+0.8), rgbcolor=(1,0,0))
    t3 = text("ca: %s" % round(coef_ang,4), ((x1+2)/2-1.0, (y1+12)/2), rgbcolor=(1,0,0))
    # Juntar todos os elementos gráficos na figura
    g = p+pt1+pt2+l+t1+t2+t3


    graficos.append(g)

a=animate(graficos)
a.show(delay=20)
︡a66e7e48-9fe9-401f-8e18-eb5e3a8a8480︡









