require 'plane'
describe Plane do

  let(:weather) { double(:weather, stormy?: true) }

  describe "#landing" do

    it "should respond to the land method" do
      expect(subject).to respond_to :land
    end

  end

  describe "#taking off" do

    it "should respond to the take off method" do
      expect(subject).to respond_to :take_off
    end

    it "should report that it is no longer at the airport when taken off" do
      subject.take_off
      expect(subject.at_airport).to eq false
    end

    it "shouldn't take off when the weather is stormy" do
      expect { subject.take_off(weather.stormy?) }.to raise_error("Weather stormy -> can't take off!")
    end

  end

end
