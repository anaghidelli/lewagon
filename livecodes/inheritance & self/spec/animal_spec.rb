require_relative "../animal"

describe Animal do
  describe "#initialize" do
    it "creates an animal" do
      animal = Animal.new("sam")
      expect(animal).to be_an(Animal)
    end
  end

  describe "::phyla" do
    it "returns the four phyla of the animal kingdom" do
      phyla = Animal.phyla
      expect(phyla.size).to eq(4)
    end
  end
end
