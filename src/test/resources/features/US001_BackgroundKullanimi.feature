Feature: US001 Background Kullanimi

  Background: Ortak adımlar
    Given Kullanici amazon sayfasina gider

  Scenario: TC01 kullanıcı amazonda nutella aratır

    Then  kullanici nutella aratır
    And  sonuclarin nutella içerdiğini test eder
    And  sayfayı kapatır

  Scenario: TC02 kullanıcı amazonda selenium aratır

    Then  kullanici selenium aratır
    And  sonuclarin selenium içerdiğini test eder
    And  sayfayı kapatır

  Scenario: TC03 kullanıcı amazonda iphone aratır

    Then  kullanici iphone aratır
    And  sonuclarin iphone içerdiğini test eder
    And  sayfayı kapatır