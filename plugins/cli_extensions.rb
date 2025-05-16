module Bridgetown
  module Commands
    class Generate
      def self.generate_post(site, *args)
        options = {}

        # Parse arguments
        OptionParser.new do |opts|
          opts.banner = "Usage: Bridgetown generate:post 'Post Title' [options]"
          opts.on("-c", "--categories x,y,z", Array, "Comma-seperated list of categories") do |cats|
            options[:categories] = cats
          end

          opts.on("-d", "--date DATE", "Specify a custom date (YYYY-MM-DD)") do |date|
            options[:date] = Date.parse(date)
          end
        end.parse!(args)

        title = args.first
        raise "Please provide a post title" if title.nil?

        # Use the plugin to generate the post
        Builders::PostGenerator.generate_post(
          site,
          title,
          categories: options[:categories] || [],
          date: options[:date] || Time.now
        )
      end
    end
  end

  CLI.register_command(
    name: 'generate:post',
    exec: ->(site, *args) { Commands::Generate.generate_post(site, *args) }
  )
end
