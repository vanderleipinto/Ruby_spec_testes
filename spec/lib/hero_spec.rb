#importa o arquivo de configuração e a classe hero (rspec já entende a relação entre as pastas)
require 'spec_helper'
require 'hero'

#descreve o teste. Hero é a classe criada
describe Hero do
  it 'has a sword' do
    hero = Hero.new
    expect(hero.weapon).to eq('sword')
  end
  it 'has a more than 1000 HP points' do
    hero = Hero.new
    expect(hero.hp).to be > 1000
  end
end
