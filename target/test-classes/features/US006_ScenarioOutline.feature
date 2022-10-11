Feature: US006 kullanıcı istediği kelimeleri arartır

  Scenario Outline: TC01 kullanıcı istediği kelimeri aratır
    Given kullanıcı amazon sayfasına gider
    Then kullanıcı "<istenilenKelime>"icin arama yapar
    And sonucların "<istenenKelime>" icerdiğini test eder
    And  sayfayı kapatır


