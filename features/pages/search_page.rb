class SearchPage
  include BasePage
  def click_email_link
    find(:xpath,'//*[@id="gb"]/div/div[1]/div/div[1]/a').click
    sleep(2)
  end
end