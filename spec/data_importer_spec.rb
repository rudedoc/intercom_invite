# frozen_string_literal: true

RSpec.describe IntercomInvite::DataImporter do
  describe "new" do
    it "requires path to existing file" do
      expect { IntercomInvite::DataImporter.new("spec/fixtures/customers.txt") }.not_to raise_error
    end

    it "parses entries in file to an entries array of hash objects" do
      data_import = IntercomInvite::DataImporter.new("spec/fixtures/customers.txt")
      expect(data_import.entries).not_to be_empty
      expect(data_import.entries.first.keys).to include("name")
    end
  end
end
