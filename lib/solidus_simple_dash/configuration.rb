# frozen_string_literal: true

module SolidusSimpleDash
  class Configuration
    OVERVIEW = %i[overview].freeze
    # Define here the settings for this extension, e.g.:
    #
    # attr_accessor :my_setting
    attr_accessor :limit
  end

  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    alias config configuration

    def configure
      yield configuration
    end
  end
end
