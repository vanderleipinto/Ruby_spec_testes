# Ruby_spec_testes

# Curso de Testes Ruby com RSPEC

## Mini curso do One Bit Code

### Criando seu primeiro teste

https://www.youtube.com/watch?v=_h4jszFYkq4&list=PLdDT8if5attGc3fgFsFe5cvV9MwlVFNLW&index=4&ab_channel=OneBitCode

É necessária a instalação do rspec
gem install rspec (usaremos a versão 3.12)

Vamos iniciar o rspec
rspec --init
Esse comando vai criar o arquivo spec_helper dentro da pasta spec

Agora vamos criar uma pasta lib e dentro da pasta spec vamos criar uma outra pasta lib
mkdir lib && mkdir spec/lib
OBS: as pastas do lado de fora serão sempre repetidas dentro do spec para ele fazer a importação automática.

Agora vamos preparar o primeiro arquivo de teste dentro da pasta spec/lib o arquivo se chama hero_spec.rb
OBS: Todo arquivo de teste terá o sufixo \_spec.rb

    require 'spec_helper'
    describe Hero do
      it 'has a sword'
    end

Agora para rodar o teste usa-se o comando:
rspec spec/lib/hero_spec.rb (não vai testar porque não temos ainda a classe Hero)

Enão vamos criar a classe Hero. em lib/hero.rb e vamos importar para o nosso arquivo de teste.
Ao rodar o teste novamente ele estará pendente

Vamos aprimorar o arquivo de teste

require 'spec_helper'
describe Hero do
it 'has a sword' do  
 hero = Hero.new
expect(hero.weapon).to eq('sword') # é esperado que o atributo weapon de hero seja equals to 'sword'
end

Vamos então dar uma espada para nosso herói

    class Hero
      attr_accessor :weapon # getters and setters

      def initialize
        @weapon = 'sword' # ao criar o herói ele já vem com a espada.
      end
    end

Ao rodar o comando de testes novamente não temos falha
rspec spec/lib/hero_spec.rb
Finished in 0.00265 seconds (files took 0.06151 seconds to load)
1 example, 0 failures

---

https://www.youtube.com/watch?v=hC2XVkIs9wU&list=PLdDT8if5attGc3fgFsFe5cvV9MwlVFNLW&index=9&ab_channel=OneBitCode

### Desafio do Heroi #1

Fazer um teste de comparação do hp. Depois de criado o atributo hp, criei o teste.

it 'has a more than 1000 HP points' do
hero = Hero.new
expect(hero.hp).to be > 1000
end

Referências: https://www.rubydoc.info/gems/rspec-expectations/frames

---

https://www.youtube.com/watch?v=rzXSenE4mnI&list=PLdDT8if5attGc3fgFsFe5cvV9MwlVFNLW&index=6&ab_channel=OneBitCode

### Principais elementos do Rspec

- describe
- context
- it
- expect

- Describe define um grupo de exemplos
- Pode receber um nome de classe ou uma string como parâmetros

  - Hero
  - '#destroy'

- Context agrupa testes associados ao mesmo contexto

  - Não é obrigatório mas ajuda a tornar os testes mais legíveis e simples

    describe Hero do
    context 'quando está com a armadura' do
    ...
    ...
    end
    end

- it é usado para definir um exemplo (teste)

  describe Hero do
  context 'quando está com a armadura' do
  it 'tem 5000 pontos de hp' do
  expect(hero.hp).to eq(5000)
  end
  end
  end

- expect é onde verificamos se uma determinada condição está ocorrendo para concluirmos que nosso teste passou.

  describe Hero do
  context 'quando está com a armadura' do
  it 'tem 5000 pontos de hp' do
  expect(hero.hp).to eq(5000)
  end
  end
  end

---

https://www.youtube.com/watch?v=R0v55Fk5v4g&list=PLdDT8if5attGc3fgFsFe5cvV9MwlVFNLW&index=7&ab_channel=OneBitCode

### O que são os matchers

Um matcher é uma instrução para verificar se uma determinada condição está sendo atendida

expect(message).to eq "Hello Hero!"

- Equivalencia e identidade.
- Comparação
- Classe e tipo
- True/false/nil
- Erro

referência: https://www.rubydoc.info/gems/rspec-expectations/RSpec/Matchers

---

https://www.youtube.com/watch?v=POLPbl0I2do&list=PLdDT8if5attGc3fgFsFe5cvV9MwlVFNLW&index=8&ab_channel=OneBitCode

### Instalando o Rspec no Rails

Vou criar outro repositório para tal tarefa.
