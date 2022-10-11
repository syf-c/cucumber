Feature: amazon search
  @gb1
  Scenario: TC01 kullanıcı amazonda nutella aratır
    Given Kullanici amazon sayfasina gider
    Then  kullanici nutella aratır
    And  sonuclarin nutella içerdiğini test eder
    And  sayfayı kapatır

  Scenario: TC02 kullanıcı amazonda selenium aratır
    Given Kullanici amazon sayfasina gider
    Then  kullanici selenium aratır
    And  sonuclarin selenium içerdiğini test eder
    And  sayfayı kapatır

@gb2
  Scenario: TC03 kullanıcı amazonda iphone aratır
    Given Kullanici amazon sayfasina gider
    Then  kullanici iphone aratır
    And  sonuclarin iphone içerdiğini test eder
    And  sayfayı kapatır