# encoding: UTF-8
require 'capybara/cucumber'
require 'capybara/mechanize'

Capybara.default_driver = :mechanize
Capybara.app = true

假如(/^我打开了 URL "(.*?)"$/) do |arg1|
  visit arg1
end

那么(/^我会看到页面的链接为 "(.*?)"$/) do |arg1|
  expect(current_url).to eq(arg1)
end

那么(/^我会看到页面的标题为 "(.*?)"$/) do |arg1|
  expect(title).to eq(arg1)
end

当(/^我在 id 为 "(.*?)" 文本框里输入 "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

当(/^我点击了 id 为 "(.*?)" 的按钮$/) do |arg1|
  click_on arg1
end
