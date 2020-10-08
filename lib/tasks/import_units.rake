task import_units: :environment do
  File.open(Rails.root.join("storage", "units_easy.json").to_s) do |file|
    hash = JSON.load(file)
    unitArray = hash["units"]
    unitArray.each do |unit|
      # Todo: nameが被るパターンの処理を加える
      Unit.create(name: unit["name"], full_name: unit["slug"], rarity: unit["rarity"], element: unit["type"], weapon: unit["weapon"])
    end
  end
end
