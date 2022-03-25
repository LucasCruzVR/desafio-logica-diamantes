diamonds = 0
expression = File.read('expression.txt')
left = 0
right = 0

# Retirar os '<' '>' das pontas que nunca formarão um diamante
expression_sliced = expression
j = 0
while expression[j] == '>' do
    expression_sliced.slice!(j)
end

j = expression_sliced.length - 1
while expression[j] == '<' do
    expression_sliced.slice!(j)
    j -= 1
end

# Verificar qual possui a quantidade maior de repetições na expressão ('<' ou '>'), pois o que tiver menos será o máximo de diamantes
# que serão possíveis de serem formados.
(0..expression_sliced.length).each do |i|
  left += 1 if expression[i] == '<'
  right += 1 if expression[i] == '>'
end
puts "'<' inicial: " + left.to_s
puts "'>' inicial: " + right.to_s

if left <= right
  @lowest_count = left
elsif right > left
  @lowest_count = right
end

while @lowest_count != 0
  (0..expression.length).each do |i|
    if expression[i] == '<' ## Trava em uma posição e percorre o caminho a frente para verificar se é um diamante
      (i + 1..expression.length).each do |k|
        if expression[k] == '>' ## Quando encontra um '>' antes de um '<' é porque existe um diamante para ser retirado
          while true
            if i + 1 == k ## Caso o diamante já esteja correto basta retirar
              puts 'retirar diamante - ' + expression + ' - ' + 'i:' + i.to_s + '  ' + 'k:' + k.to_s
              puts expression.slice!(k)
              puts expression.slice!(i)
              @lowest_count -= 1
              diamonds += 1
              # puts "saiu " + expression + ' - ' + expression.length.to_s
              break
            else  ## Caso existam areias no diamante, elas são retiradas antes
              puts 'retirar areia - ' + expression + ' - ' + 'i:' + i.to_s + '  ' + 'k:' + k.to_s
              puts expression.slice!(i + 1)
              k -= 1
            end
          end
          break
        elsif expression[k] == '<'
          break
        end
      end
    end
  end
end

puts 'EXPRESSÃO FINAL: ' + expression
puts 'Diamantes extraídos: ' + diamonds.to_s
