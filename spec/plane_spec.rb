require 'plane'
describe Plane do

  let(:weather) { double(:weather, stormy?: true) }
  let(:airport) { double(:airport, accept_plane: nil) }

  describe "#landing" do

    it "should not take off when the weather is stormy" do
      # changed the land method to accept an airport so changed this test
      expect { subject.land(weather.stormy?) }.to raise_error("Weather stormy -> can't land!")
    end

    context "A landed plane" do
      it "should report that is in an airport" do
        stormy = false
        subject.land(stormy)
        expect(subject.at_airport).to eq true
      end
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

    it "should not take off when the weather is stormy" do
      expect { subject.take_off(weather.stormy?) }.to raise_error("Weather stormy -> can't take off!")
    end

  end

end
