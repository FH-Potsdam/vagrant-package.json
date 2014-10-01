require "json"


class Package

  def initialize(file = "package.json")
    @file = file
    json = File.read(file)
    @data = JSON.parse(json)
  end

  #def say_hi
  #  puts "Hi #{@file}!"
  #end

  def name
    @data['name']
  end

  def version
    @data['version']
  end

  def description
    @data['description']
  end

  def keywords
    @data['keywords']
  end

  def author
    @data['author']
  end

  def repository
    @data['repository']
  end

  def scripts
    @data['scripts']
  end

  def dependencies
    @data['dependencies']
  end

  def devDependencies
    @data['devDependencies']
  end

end
