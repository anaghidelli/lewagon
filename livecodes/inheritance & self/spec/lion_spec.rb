require_relative "../lion"

describe Lion do
  describe "#talk" do
    it "returns the name of the lion and roar" do
      lion_test = Lion.new("simba")
      expect(lion_test.talk).to eq("simba roars")
    end
  end

end
