# frozen_string_literal: true

RSpec.describe IntercomInvite::Entry do
  describe "#distance(base_coordinates)" do
    context "long distance example (5539km) JFK to LHR" do
      let(:distance_result) { 5539.48 }

      let(:base_coordinates) do
        # JFK
        ["40.639", "-73.778"]
      end

      let(:attrs) do
        # LHR
        { latitude: "51.477", longitude: "-0.461", user_id: 1, name: "LHR" }
      end

      let(:entry) { described_class.new(attrs) }

      it "returns float" do
        expect(entry.distance(base_coordinates).round(2)).to eq(distance_result)
      end
    end

    context "long distance example (401km) The Spire to Bletchly Park" do
      let(:distance_result) { 401.18 }

      let(:base_coordinates) do
        # The Spire, O' Connell St
        ["53.349", "-6.260"]
      end

      let(:attrs) do
        # Bletchly Park
        { latitude: "51.997475", longitude: "-0.740940", user_id: 1, name: "Bletchly Park" }
      end

      let(:entry) { described_class.new(attrs) }

      it "returns float" do
        expect(entry.distance(base_coordinates).round(2)).to eq(distance_result)
      end
    end

    context "short distance example (5km) The Spire to Poolbeg" do
      let(:distance_result) { 5.013 }

      let(:base_coordinates) do
        # The Spire, O' Connell St
        ["53.349", "-6.260"]
      end

      let(:attrs) do
        # Poolbeg Power Station
        { latitude: "53.340", longitude: "-6.186", user_id: 1, name: "Poolbeg" }
      end

      let(:entry) { described_class.new(attrs) }

      it "returns float" do
        expect(entry.distance(base_coordinates).round(3)).to eq(distance_result)
      end
    end
  end
end
