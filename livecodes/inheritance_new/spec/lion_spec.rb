require_relative "../lion"
describe Lion do
  describe "#talk" do
    it "should roar" do
      lion = Lion.new("Simba")
      expect(lion.talk).to eq("Simba roars")
    end
  end

  describe "#eat" do
    it "should eat some food and yell its hungry" do
      lion = Lion.new("Simba")
      expect(lion.eat("springbok")).to eq("Simba eats springbok. Still hungry!!")
    end
  end
end
