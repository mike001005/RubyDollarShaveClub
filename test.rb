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
  assert(driver.li(:id,'ember2673').button().text.include?("2"), "Failed to add two Magnanimous post shave products ")

# Check to see if test added Boogies Dream Hair Cream product to the box.
  driver.li(:id,'ember2676').wait_until_present
  assert(driver.li(:id,'ember2676').button().text.include?("1"), "Failed to add Boogies Dream Hair Cream")

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
  driver.div(:class,'grid-container').li(:class,'subtotal').wait_until_present
  assert(driver.div(:class,'grid-container').li(:class,'subtotal').text.include?("2"), "failed to remove Boogies Dream Hair Cream")

# Quit the driver

    driver.quit

  end


end