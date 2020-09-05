require "addressable/uri"
require "base64"
require "cgi"
require "digest/md5"
require "forwardable"
require "net/http"
require "net/https"
require "openssl"
require "rexml/document"
require "time"

require "proxies"
require "s3/objects_extension"
require "s3/buckets_extension"
require "s3/parser"
require "s3/bucket"
require "s3/connection"
require "s3/exceptions"
require "s3/object"
require "s3/request"
require "s3/service"
require "s3/signature"
require "s3/version"

module S3
  class << self
    attr_writer :host, :port, :access_key_id, :secret_access_key

    def host
      @host
    end

    def port
      @port
    end

    def access_key_id
      @access_key_id
    end

    def secret_access_key
      @secret_access_key
    end

    def configure(host:, port:, access_key_id:, secret_access_key:)
      @host ||= host
      @port ||= port
      @access_key_id ||= access_key_id
      @secret_access_key ||= secret_access_key
    end
  end
end
