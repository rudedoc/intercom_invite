# frozen_string_literal: true

RSpec.describe IntercomInvite::Collection do
  let(:entries) do
    [
      { latitude: "53.382647", user_id: 2, name: "M50", longitude: "-6.362883" },
      { latitude: "53.365820", user_id: 4, name: "Hole In The Wall", longitude: "-6.321901" },
      { latitude: "53.514367", user_id: 3, name: "Dunsaughlin", longitude: "-6.541488" },
      { latitude: "53.578456", user_id: 1, name: "Tara", longitude: "-6.611779" }
    ]
  end

  let(:base_coordinates) { ["53.349", "-6.260"] } # The Spire, O' Connell St

  let(:collection) { IntercomInvite::Collection.new(entries, base_coordinates) }
  let(:entry) { collection.entries.first }

  describe "#entries" do
    it "maps entries from the data import to #entries" do
      expect(collection.entries).not_to be_empty
    end

    it "created a entry in the entries array" do
      expect(entry).to be_a_kind_of(IntercomInvite::Entry)
      expect(entry.latitude).not_to be_nil
      expect(entry.longitude).not_to be_nil
    end
  end

  describe "#entries_within_distance(kms)" do
    context "when 5km" do
      it "returns 1 entry" do
        expect(collection.entries_within_distance(5).size).to eq(1)
      end
    end

    context "when 10km" do
      it "returns 2 entries" do
        expect(collection.entries_within_distance(10).size).to eq(2)
      end
    end

    context "when 30km" do
      it "returns 3 entries" do
        expect(collection.entries_within_distance(30).size).to eq(3)
      end
    end
  end

  describe "#entries_within_distance_ordered_by(50, :user_id)" do
    it "returns all records ordered by :user_id" do
      expect(collection.entries_within_distance_ordered_by(50, :user_id).map(&:user_id)).to eq([1, 2, 3, 4])
    end
  end
end
