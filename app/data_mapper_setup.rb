require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-types'

require_relative 'models/peep'
require_relative 'models/user'
require_relative 'models/comment'

DataMapper.setup(:default, "postgres://localhost/chitter_#{ENV['RACK_ENV']}")
DataMapper.finalize
