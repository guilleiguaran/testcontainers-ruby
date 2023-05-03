# frozen_string_literal: true

require "docker"
require "logger"
require "testcontainers/docker_container"
require_relative "testcontainers/version"

module Testcontainers
  class Error < StandardError; end

  class ConnectionError < Error; end

  class TimeoutError < Error; end

  class ContainerNotStartedError < Error; end

  class HealthcheckNotSupportedError < Error; end

  class PortNotMappedError < Error; end

  class << self
    attr_writer :logger

    def logger
      @logger ||= Logger.new($stdout, level: :info)
    end
  end
end
