#!/usr/bin/ruby
require File.join(Dir.pwd, 'require_tree')

publisher = Seed.init_publisher
Seed.init_subscribers(publisher: publisher)

publisher.broadcast(:book_purchased, Book.new, { user: "Test" })
publisher.broadcast(:membership_purchased, Membership.new, { user: "Test" })
publisher.broadcast(:stove_purchased, Stove.new, { })
publisher.broadcast(:digital_item_purchased, DigitalItem.new, { user: "Test" })
