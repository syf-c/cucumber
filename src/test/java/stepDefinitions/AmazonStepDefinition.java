package stepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import pages.amazonPage;
import utilites.ConfigReader;
import utilites.Driver;

public class AmazonStepDefinition {
    amazonPage amazonPage=new amazonPage();
    @Given("Kullanici amazon sayfasina gider")
    public void kullaniciAmazonSayfasinaGider() {
        Driver.getDriver().get(ConfigReader.getProperty("amznUrl"));

}
    @Then("kullanici nutella aratır")
    public void kullaniciNutellaAratır() {
        amazonPage.aramaKutusu.sendKeys("Nutella" + Keys.ENTER);

    }

    @And("sonuclarin nutella içerdiğini test eder")
    public void sonuclarinNutellaIçerdiğiniTestEder() {
        String arananKelime="Nutella";
        String actualAramaSonucStr= amazonPage.aramaSonucElementi.getText();
        Assert.assertTrue(actualAramaSonucStr.contains(arananKelime));
    }

    @And("sayfayı kapatır")
    public void sayfayıKapatır() {
        Driver.closeDriver();
    }

    @Then("kullanici selenium aratır")
    public void kullaniciSeleniumAratır() {
        amazonPage.aramaKutusu.sendKeys("selenium" + Keys.ENTER);
    }

    @And("sonuclarin selenium içerdiğini test eder")
    public void sonuclarinSeleniumIçerdiğiniTestEder() {
        String arananKelime="selenium";
        String actualAramaSonucStr= amazonPage.aramaSonucElementi.getText();
        Assert.assertTrue(actualAramaSonucStr.contains(arananKelime));
    }

    @Then("kullanici iphone aratır")
    public void kullaniciIphoneAratır() {
        amazonPage.aramaKutusu.sendKeys("iphone" + Keys.ENTER);
    }

    @And("sonuclarin iphone içerdiğini test eder")
    public void sonuclarinIphoneIçerdiğiniTestEder() {
        String arananKelime="iphone";
        String actualAramaSonucStr= amazonPage.aramaSonucElementi.getText();
        Assert.assertTrue(actualAramaSonucStr.contains(arananKelime));
    }

    @Then("kullanıcı{string} için arama yapar")
    public void kullanıcıIçinAramaYapar(String arankelime) {
        amazonPage.aramaKutusu.sendKeys(arankelime ,Keys.ENTER);
    }

    @And("sonucların {string} içerdiğini tes teder")
    public void sonuclarınIçerdiğiniTesTeder(String arananKelime) {
              String actualAramaSonucStr= amazonPage.aramaSonucElementi.getText();
        Assert.assertTrue(actualAramaSonucStr.contains(arananKelime));
    }


    @Given("kullanıcı {string}sayfasına gider")
    public void kullanıcıSayfasınaGider(String arananUrl) {
        Driver.getDriver().get(ConfigReader.getProperty(arananUrl));
        
    }

    @When("Url'nin {string} icerdiğini test edin")
    public void urlNinIcerdiğiniTestEdin(String istenienUrl) {
        String actualUrl=Driver.getDriver().getCurrentUrl();
        Assert.assertTrue(actualUrl.contains(istenienUrl));
    }

    @Then("kullanıcı {int} sn bekler")
    public void kullanıcıSnBekler(int istenenSure) {
        try {
            Thread.sleep(istenenSure*1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
