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

  # https://www.npmjs.org/doc/files/package.json.html#name
  # @return [String] the package.json name value
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

  def homepage
    @data['homepage']
  end

  def bugs
    @data['bugs']
  end

  def license
    @data['license']
  end

  def author
    @data['author']
  end

  def contributors
    @data['contributors']
  end

  def files
    @data['files']
  end

  def main
    @data['main']
  end

  def bin
    @data['bin']
  end

  def man
    @data['man']
  end

  def directories
    @data['directories']
  end

  def repository
    @data['repository']
  end

  def scripts
    @data['scripts']
  end

  def config
    @data['config']
  end

  def dependencies
    @data['dependencies']
  end

  def devDependencies
    @data['devDependencies']
  end

  def peerDependencies
    @data['peerDependencies']
  end

  def bundledDependencies
    @data['bundledDependencies']
  end

  def optionalDependencies
    @data['optionalDependencies']
  end

  def engines
    @data['engines']
  end

  def engineStrict
    @data['engineStrict']
  end

  def os
    @data['os']
  end

  def cpu
    @data['cpu']
  end

  def preferGlobal
    @data['preferGlobal']
  end

  def private
    @data['private']
  end

  def publishConfig
    @data['publishConfig']
  end

end
