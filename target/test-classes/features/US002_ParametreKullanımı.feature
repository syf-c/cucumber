Feature: US002 Prametre kullanımı

  Background: ORTAK ADIM
    Given Kullanici amazon sayfasina gider


  Scenario:  TC01 kullanıcı amazonda parametrili arama yapar

    Then  kullanıcı"nutella" için arama yapar
    And sonucların "nutella" içerdiğini tes teder
    And  sayfayı kapatır



  Scenario:  TC02 kullanıcı amazonda parametrili arama yapar

    Then  kullanıcı"pens" için arama yapar
    And sonucların "pens" içerdiğini tes teder
    And  sayfayı kapatır

  Scenario:  TC03 kullanıcı amazonda parametrili arama yapar

    Then  kullanıcı"car" için arama yapar
    And sonucların "car" içerdiğini tes teder
    And  sayfayı kapatır



  Scenario:  TC04 kullanıcı amazonda parametrili arama yapar

    Then  kullanıcı"maps" için arama yapar
    And sonucların "maps" içerdiğini tes teder
    And  sayfayı kapatır