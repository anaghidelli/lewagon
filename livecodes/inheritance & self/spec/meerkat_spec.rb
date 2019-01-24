require_relative "../meerkat"

describe Meerkat do
  describe "#talk" do
    it "returns the name of the meerkat and sings" do
      meerkat_test = Meerkat.new("simon")
      expect(meerkat_test.talk).to eq("simon sings")
    end
  end

end
