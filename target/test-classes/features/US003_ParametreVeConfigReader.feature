Feature: parametre kullanımı
@gb1
  Scenario: TC01 Parametre kullaniminda ConfigReader Kullanimi
    Given kullanıcı "faceUrl"sayfasına gider
    Then kullanıcı 3 sn bekler
    When Url'nin "facebook" icerdiğini test edin
    And sayfayı kapatır
@gb2
  Scenario: TC02 Parametre kullaniminda ConfigReader Kullanimi
    Given kullanıcı "google"sayfasına gider
    Then kullanıcı 3 sn bekler
    When Url'nin "google" icerdiğini test edin
    And sayfayı kapatır
@gb1
  Scenario: TC03 Parametre kullaniminda ConfigReader Kullanimi
    Given kullanıcı "brcUrl"sayfasına gider
    Then kullanıcı 3 sn bekler
    When Url'nin "blue" icerdiğini test edin
    And sayfayı kapatır
@gb2
  Scenario: TC04 Parametre kullaniminda ConfigReader Kullanimi
    Given kullanıcı "amznUrl"sayfasına gider
    Then kullanıcı 3 sn bekler
    When Url'nin "amazon" icerdiğini test edin
    And sayfayı kapatır