require_relative "../warthog"

describe Warthog do
  describe "#talk" do
    it "returns the name of the warthog and grunts" do
      warthog_test = Warthog.new("pumba")
      expect(warthog_test.talk).to eq("pumba grunts")
    end
  end

end
