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
