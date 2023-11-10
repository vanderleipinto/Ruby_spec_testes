#importa o arquivo de configuração e a classe hero (rspec já entende a relação entre as pastas)
require 'spec_helper'
require 'hero'

#descreve o teste. Hero é a classe criada
describe Hero do
  it 'has a sword' do
    hero = Hero.new
    expect(hero.weapon).to eq('sword')
  end
end
