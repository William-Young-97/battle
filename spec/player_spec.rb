require 'player'

describe Player do

  subject(:player_1) {Player.new('John')}
  subject(:player_2) {Player.new('Bob')}

  describe '#name' do
    it 'Returns the Players name' do
      expect(player_1.name).to eq('John')
    end
  end

  describe '#hitpoints' do
    it 'Reduces a players hitpoints by 10' do
      expect(subject.hitpoints).to eq(described_class::DEFAULT_HITPOINTS)
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      player_1.attack(player_2)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { player_2.receive_damage }.to change { player_2.hitpoints}.by(-10)
    end
  end
end