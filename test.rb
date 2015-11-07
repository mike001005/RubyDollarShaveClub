gem 'selenium-webdriver', '~> 2.48', '>= 2.48.1'
gem 'watir-webdriver'
require 'selenium-webdriver'
require 'watir-webdriver'
require 'minitest/autorun'


def find_Click(element)

  element.exist?
  element.click

end



class Test < MiniTest::Unit::TestCase

  def test_Dollar_shave_club
# Driver

  driver = Watir::Browser.new :firefox

# resize window

  driver.window.resize_to(2000, 1080)

#driver.navigate.to "https://www.dollarshaveclub.com/our-products"

  driver.goto 'https://www.dollarshaveclub.com/our-products'

# Click on the shave span
  driver.span(:id,'ember1554').wait_until_present
  find_Click(driver.span(:id,'ember1554'))

# Click on the orange add button
  driver.li(:id,'ember1932').button(:class,'orange').wait_until_present
  find_Click(driver.li(:id,'ember1932').button(:class,'orange'))

# Click on the plus sign
  driver.div(:id,'ember2171').i(:id,'ember2173').wait_until_present
  find_Click(driver.div(:id,'ember2171').i(:id,'ember2173'))

# Click on the orange ok button
  driver.button(:class,'wide').wait_until_present
  find_Click(driver.button(:class,'wide'))

# Click on the close button in the top right corner.
  driver.div(:class,'fixed-header').i(:id,'ember2219').wait_until_present
  find_Click(driver.div(:class,'fixed-header').i(:id,'ember2219'));


# Click on Boogies section
  driver.span(:id,'ember2314').wait_until_present
  find_Click(driver.span(:id,'ember2314'))

# Click on Boogies Dream cream
  driver.li(:id,'ember2405').wait_until_present
  find_Click(driver.li(:id,'ember2405'))

# Click the orange add button
  driver.div(:id,'ember2519').button(:class,'orange').wait_until_present
  find_Click(driver.div(:id,'ember2519').button(:class,'orange'))

# Click on the orange ok button
  driver.button(:class,'wide').wait_until_present
  find_Click(driver.button(:class,'wide'))

# Check to see if test added two Magnanimous post shave products to the box.
  driver.li(:id,'ember2673').wait_until_present
  assert_equal("QTY. 2", driver.li(:id,'ember2673').button().text, "Failed to add Magnanimous post shave products to the box")

# Check to see if test added Boogies Dream Hair Cream product to the box.
    driver.li(:id,'ember2676').wait_until_present
    assert_equal("QTY. 1", driver.li(:id,'ember2676').button().text, "Failed to add Boogies Dream Hair Cream product to the box")

#click on Boogies quantity
  find_Click(driver.li(:id,'ember2676').button)

#click on the minus sign
  driver.i(:id,'ember2728').wait_until_present
  find_Click(driver.i(:id,'ember2728'))

#click on the remove button
  driver.button(:class,'last').wait_until_present
  find_Click(driver.button(:class,'last'))

#click on the box icon
  driver.div(:class,'grid-container').i(:id,'ember2752').wait_until_present
  find_Click(driver.div(:class,'grid-container').i(:id,'ember2752'))

#check to see if boogies's Dream Hair Cream was deleted.
    driver.footer(:class,'fixed-footer').div(:class,'grid-container').ul(:id,"ember2866").li(:class,'subtotal').label.wait_until_present
    assert_equal("Sub Total (2 Items)", driver.footer(:class,'fixed-footer').div(:class,'grid-container').ul(:id,"ember2866").li(:class,'subtotal').label.text, "Failed to delete Boogies Dream Hair Cream product from the box")
# Quit the driver

    driver.quit

  end


end