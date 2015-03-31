module Apprunner

  class AppManager

    def initialize(opts={})
      @app_dir = opts[:app_dir] || $app_dir
      $logger.debug ('AppManager initialized')
    end

    def install_dependencies

    end

    def generate

    end

    def load
      
    end

    def install
      load
    end

    def stop

    end


    def start

    end

    def restart


    end

    def method_missing(name, *args)
      #TODO:// handle dynamic method calls on the fly
      return "method not found: #{name.capitalize}!"
    end


    def list

    end

  end


end
