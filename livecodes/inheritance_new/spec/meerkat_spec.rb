require_relative "../meerkat"
describe Meerkat do
  describe "#talk" do
    it "should bark" do
      meerkat = Meerkat.new("Timone")
      expect(meerkat.talk).to eq("Timone barks")
    end
  end
end
