User.destroy_all #delete this later
Game.destroy_all  #delete this later
Country.destroy_all
President.destroy_all

User.reset_pk_sequence
Game.reset_pk_sequence
Country.reset_pk_sequence
President.reset_pk_sequence

country_json = RestClient.get('https://restcountries.eu/rest/v2/all')
