require_relative "../animal"

describe Animal do
  describe "#initialize" do
    it "should create animal instance" do
      animal = Animal.new("Simba")
      expect(animal).to be_an(Animal)
    end
  end

  describe "#name" do
    it "should give name of animal" do
      animal = Animal.new("Simba")
      expect(animal.name).to eq("Simba")
    end
  end

  describe "::cats" do
    it "should print out all the cats in the array" do
      array = Animal.cats
      expect(array).to eq(%w[lion cougar tiger leopard lynx jaguar])
    end
  end
end














