Given('I am on google home page') do
  #$browser.goto "https://www.google.co.uk"
  visit ('/')
  sleep(3)
  puts "--- Google home page launch successfully ----"

end
When('I click on reject terms') do
  @pages.landing_page.reject_terms
  # find('#W0wltc').click
  # sleep(2)
end

Then('I verify gmail link is available on the home page') do
  @pages.search_page.click_email_link
  # find(:xpath,'//*[@id="gb"]/div/div[1]/div/div[1]/a').click
  # sleep(2)
end