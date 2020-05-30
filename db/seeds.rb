User.destroy_all #delete this later
Game.destroy_all  #delete this later
Country.destroy_all
President.destroy_all

User.reset_pk_sequence
Game.reset_pk_sequence
Country.reset_pk_sequence
President.reset_pk_sequence

country_json = RestClient.get('https://restcountries.eu/rest/v2/all')

country_hash = JSON.parse(country_json)

country_hash.each do |country|
    Country.create(
        name: country["name"],
        flag_url: country["flag"],
        region: country["region"],
        sub_region: country["subregion"],
        population: country["population"],
        language: country["languages"][0]["name"],
        capital: country["capital"]
    )
end

element_json = RestClient.get('https://neelpatel05.pythonanywhere.com/')

element_hash = JSON.parse(element_json)

element_hash.each do|element|
    Element.create(
        name: element["name"],
        symbol: element["symbol"],
        atomic_weight: element["atomicMass"],
        atomic_number: element["atomicNumber"],
        color: element["cpkHexColor"],
        bonding_type: element["bondingType"],
        group_block: element["groupBlock"],
        standard_state: element["standardState"],
        boiling_point: element["boilingPoint"],
        melting_point: element["meltingPoint"],
        year_discovered: element["yearDiscovered"]
    )
end