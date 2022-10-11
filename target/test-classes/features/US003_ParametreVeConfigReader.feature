Feature: parametre kullanımı

  Scenario: paremetre kullanımında configReader kullanımı
    Given kullanıcı "amazon" sayfasına gider
    When url'nin "amazon" icerdiğini test edelim
    Then sonucların "nutella" içerdiğini tes teder
    And  sayfayı kapatır