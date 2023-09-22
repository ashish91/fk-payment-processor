# Payment Processor using PubSub

## How to run ?

Run the following command:

- ruby driver.rb

## Prerequisites

- Make sure ruby >= 2.7 is installed on your laptop.
- Yaml gem is available with the ruby.

## Directory Structure

- bin
    * require_tree - require various classes in this project.
- models - Data models for persisting data in memory and defines relationships between them.
- pubsub - files for implementing pubsub pattern.
- services - services to be called from subscribers.
