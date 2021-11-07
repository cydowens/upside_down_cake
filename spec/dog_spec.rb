require './lib/dog'

RSpec.describe 'Dog', type: :feature do
  before(:each) do
    @jax = Dog.new({ 
      name: 'Jax',
      breed: 'poodle',
      health: 4
     })
  end

  it 'exists and has attributes' do
    expect(@jax.name).to eq('Jax')
    expect(@jax.breed).to eq('poodle')
    expect(@jax.health).to eq(4)
  end
  
  it 'can speak' do
    expect(@jax.speak).to eq('Woof')
    puts @jax.speak
  end
end