require_relative "../animal"

describe Animal do
  describe "#initialize" do
    it "creates an animal" do
      animal = Animal.new("sam")
      expect(animal).to be_an(Animal)
    end
  end
end
