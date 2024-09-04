# frozen_string_literal: true

# Copyright The OpenTelemetry Authors
#
# SPDX-License-Identifier: Apache-2.0

require 'simplecov'

SimpleCov.start do
  enable_coverage :branch
  add_filter '/test/'
end

SimpleCov.minimum_coverage 85

require 'opentelemetry-logs-api'
require 'opentelemetry-logs-sdk'
require 'opentelemetry-test-helpers'
require 'minitest/autorun'

OpenTelemetry.logger = Logger.new(File::NULL)
