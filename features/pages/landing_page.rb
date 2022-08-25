class LandingPage
  include BasePage

  def reject_terms
    find('#W0wltc').click
    sleep(2)
  end
end