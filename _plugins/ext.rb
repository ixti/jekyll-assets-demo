require "json"
require "jekyll-assets"

Jekyll::Assets::Hook.register :env, :init, :early do
  # Re-enable ERB support
  self.config = hash_reassoc(config, :engines) do |hash|
    hash.merge(".erb" => ::Sprockets::ERBProcessor)
  end
end
