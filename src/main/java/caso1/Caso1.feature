Feature: Delete users restful


  Scenario: Create user
    Given driver 'https://demoqa.com/login'
    When click('#newUser')
    And input('#firstname', 'Test01')
    And input('#lastname', 'Test01')
    And input('#userName', 'test01')
    And input('#password', 'Test2023*')
    * delay(60000)
    When click('#register')
    * delay(5000)
    And dialog(true)
    Then waitForUrl('https://demoqa.com/register')

  Scenario: add Book Programming JavaScript
    Given driver 'https://demoqa.com/login'
    And input('#userName', 'test01')
    And input('#password', 'Test2023*')
    When click('#login')
    * delay(2000)
    When click('/html/body/div[2]/div/div/div[2]/div[1]/div/div/div[6]/div/ul/li[2]/span')
    * delay(5000)
    And input('#searchBox', 'Programming JavaScript')
    * delay(2000)
    When click('/html/body/div[2]/div/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[2]/div[1]/div/div[2]/div/span/a')
    * delay(5000)
    When click('/html/body/div[2]/div/div/div[2]/div[2]/div[2]/div[2]/div[9]/div[2]/button')
    * delay(5000)
    And dialog(true)
    When click('/html/body/div[2]/div/div/div[2]/div[1]/div/div/div[6]/div/ul/li[3]')
    * delay(10000)
    Then waitForUrl('https://demoqa.com/profile')

  Scenario: add Book Understanding ECMAScript 6
    Given driver 'https://demoqa.com/login'
    And input('#userName', 'test01')
    And input('#password', 'Test2023*')
    When click('#login')
    * delay(2000)
    When click('/html/body/div[2]/div/div/div[2]/div[1]/div/div/div[6]/div/ul/li[2]/span')
    * delay(5000)
    And input('#searchBox', 'Understanding ECMAScript 6')
    * delay(2000)
    When click('/html/body/div[2]/div/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[2]/div[1]/div/div[2]/div/span/a')
    * delay(2000)
    When click('/html/body/div[2]/div/div/div[2]/div[2]/div[2]/div[2]/div[9]/div[2]/button')
    * delay(3000)
    And dialog(true)
    When click('/html/body/div[2]/div/div/div[2]/div[1]/div/div/div[6]/div/ul/li[3]')
    * delay(10000)
    Then waitForUrl('https://demoqa.com/profile')


  Scenario: Delete Book
    Given driver 'https://demoqa.com/login'
    And input('#userName', 'test01')
    And input('#password', 'Test2023*')
    When click('#login')
    * delay(2000)
    When click('/html/body/div[2]/div/div/div[2]/div[1]/div/div/div[6]/div/ul/li[3]')
    * delay(2000)
    When click('/html/body/div[2]/div/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[2]/div[1]/div/div[5]/div/span/svg/path')
    * delay(3000)
    And dialog(true)
    * delay(3000)
    And dialog(true)
    Then waitForUrl('https://demoqa.com/profile')




