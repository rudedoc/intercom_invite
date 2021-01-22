# frozen_string_literal: true

RSpec.describe IntercomInvite::FileRenderer do
  let(:entries) do
    [
      { latitude: "53.382647", user_id: 2, name: "M50", longitude: "-6.362883" },
      { latitude: "53.365820", user_id: 4, name: "Hole In The Wall", longitude: "-6.321901" },
      { latitude: "53.514367", user_id: 3, name: "Dunsaughlin", longitude: "-6.541488" },
      { latitude: "53.578456", user_id: 1, name: "Tara", longitude: "-6.611779" }
    ]
  end

  let(:base_coordinates) { ["53.349", "-6.260"] } # The Spire, O' Connell St

  let(:ordered_entries) do
    IntercomInvite::Collection.new(entries, base_coordinates).entries_within_distance_ordered_by(100, :user_id)
  end

  let(:file_path) { "tmp/output.txt" }

  let(:renderer) { IntercomInvite::FileRenderer.new(ordered_entries, file_path) }

  before do
    FileUtils.rm_rf("tmp")
    FileUtils.mkdir("tmp")
    renderer.render
  end

  describe "#render" do
    it "renders file to disk" do
      expect { File.open(file_path) }.not_to raise_error
    end

    it "renders a file with content" do
      file = File.open(file_path)
      lines = file.readlines.to_a
      expect(lines.first).to eq("1, Tara\n")
    end
  end
end
