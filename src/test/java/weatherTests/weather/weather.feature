Feature: weatherTests

  Background:
#    The URL below is static for all tests using API KEY and units=metric
    * url 'https://api.openweathermap.org/data/2.5/weather?appid=9d50450a48809637b4862bdcb125927d&units=metric'

  Scenario: Checks correct weather for City London
    Given param id = 2643743
    And param lang = 'en'
    When method get
    Then print response
    Then match response.main.temp == '#present'
    Then match response.main.humidity == '#present'
    Then match response..* contains deep { description: '#present' }
    Then match response.main.temp_min == '#present'
    Then match response.main.temp_max == '#present'
    Then match response.id == 2643743


  Scenario: Checks correct weather for City Paris
    Given param id = 2988507
    And param lang = 'fr'
    When method get
    Then print response
    Then match response.main.temp == '#present'
    Then match response.main.humidity == '#present'
    Then match response..* contains deep { description: '#present' }
    Then match response.main.temp_min == '#present'
    Then match response.main.temp_max == '#present'
    Then match response.id == 2988507


  Scenario: Checks correct weather for City New york
    Given param id = 5128581
    And param lang = 'en'
    When method get
    Then print response
    Then match response.main.temp == '#present'
    Then match response.main.humidity == '#present'
    Then match response..* contains deep { description: '#present' }
    Then match response.main.temp_min == '#present'
    Then match response.main.temp_max == '#present'
    Then match response.id == 5128581


  Scenario: Checks correct weather for City Dehli
    Given param id = 2650225
    And param lang = 'hi'
    When method get
    Then print response
    Then match response.main.temp == '#present'
    Then match response.main.humidity == '#present'
    Then match response..* contains deep { description: '#present' }
    Then match response.main.temp_min == '#present'
    Then match response.main.temp_max == '#present'
    Then match response.id == 2650225


  Scenario: Checks correct weather for City Tokyo
    Given param id = 1850147
    And param lang = 'ja'
    When method get
    Then print response
    Then match response.main.temp == '#present'
    Then match response.main.humidity == '#present'
    Then match response..* contains deep { description: '#present' }
    Then match response.main.temp_min == '#present'
    Then match response.main.temp_max == '#present'
    Then match response.id == 1850147
