require 'capistrano/recipes/deploy/strategy/base'

module Capistrano
  module Deploy
    module Strategy

      # Implements the deployment strategy which builds a war file locally and
      # then sends it to the server and places it into release_path named after
      # the application
      class WarFile < Base
        # First builds a war file then sends it to the remote server's release_path
        def deploy!
          build_war_file unless configuration.fetch(:dont_build_war, false)
          send_war_file
        end

        private

          def build_war_file
            rails_env = configuration.fetch(:rails_env, "production")
            [
              "warble war:clean RAILS_ENV=#{rails_env}",
              "warble war RAILS_ENV=#{rails_env}"
            ].each do |cmd|
              system cmd
            end
          end

          def send_war_file
            war_file = configuration.fetch(:war_file, "#{configuration[:application]}.war")
            run "mkdir -p #{configuration[:release_path]}"
            put File.read("#{war_file}"), "#{configuration[:release_path]}/#{war_file}"
          end
      end

    end
  end
end
