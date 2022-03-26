# Desafio de lógica - Diamantes

Dado um conjunto de caracteres, é preciso extrair os "diamantes"  `<>` e as "areias" `.` da expressão, e no final exibir a quantidade de diamantes extraídos.

### **Expressão:**

```
<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>
```

A expressão que será analisada pelo algoritmo pode ser a acima citada ou qualquer outra que componha os lados do diamante e areias. Caso queira mudar a expressão basta apenas alterar o arquivo **"expression.txt"** para que a análise seja feita com a expressão personalizada.

## Execução do projeto
O projeto se concentra no arquivo **main.rb** e pode ser executado com o comando abaixo. Caso queira alterar a expressão, basta no arquivo texto nomeado como **"expression.txt"**

```
ruby main.rb
```

### **Requisitos:**

- Extrair os diamantes e areias da expressão até que não haja mais o que ser extraído.
- Exibir a quantidade de diamantes extraídos.
- O projeto deve ser disponibilizado em um repositório aberto no GitHub

### **Dicas:**

- O diamante é a junção dos sinais menor `<` e maior `>` sem que não haja nada entre eles.
- Areia é o ponto final.
- Considerando a entrada `<<>>><` Ao extrair um diamante `<>`, é formado um novo diamante para ser extraído `<>><`



## Utilizando o projeto com o docker
Na raíz do projeto, gerar o build antes da execução.

```
docker-compose build
```

Após gerar o build do projeto basta digitar o comando abaixo, permitindo que abra o terminal para digitar comandos linux e da linguagem.

```
docker-compose run desafio bash
```


