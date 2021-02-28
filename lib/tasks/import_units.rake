task import_units: :environment do
  File.open(Rails.root.join("storage", "units_easy.json").to_s) do |file|
    hash = JSON.load(file)
    unitArray = hash["units"]
    unitArray.each do |unit|
      # Todo: nameが被るパターンの処理を加える unit["style"]が2のときはスキップ?
      # Todo: 年齢・性別不明の場合の処理を加える
      Unit.create(name: unit["name"], full_name: unit["slug"], rarity: unit["rarity"], element: unit["type"], weapon: unit["weapon"],\
                  life: unit["hpmax"], attack: unit["atkmax"], speed: unit["spd"], interval: unit["inter"], reach: unit["reach"],\
                  toughness: unit["tough"], position: unit["reacht"], growth: unit["grow"], target: unit["assault"], time: unit["combo"])
    end
  end
end
