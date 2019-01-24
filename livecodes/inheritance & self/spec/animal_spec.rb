require_relative "../animal"
describe Animal do
  describe "#initialize" do
    it "animals class instance is created" do
      animal_test = Animal.new("lion")
      expect(animal_test).to be_an(Animal)
    end
  end
  describe "#name" do
    it "name of the animal instance returned" do
      name_test = Animal.new("penguin")
      expect(name_test.name).to eq("penguin")
    end
  end
end
