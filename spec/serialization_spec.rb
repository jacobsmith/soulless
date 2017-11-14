describe 'Soulless::Serialization' do
  describe "Arrays" do
    it "serializes as an array" do
      foo = Foo.new

      foo.bar = BarSchema.new(id: "original")
      foo.bar = [BarSchema.new(id: "one"), BarSchema.new(id: "two")]

      expect(foo.valid?).to eq true
    end
  end
end
