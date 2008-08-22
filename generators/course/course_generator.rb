class CourseGenerator < RubiGen::Base

  default_options :author => nil

  attr_reader :name, :audio_tab, :video_tab

  def initialize(runtime_args, runtime_options = {})
    super
    usage unless args.size == 3
    @name, @audio_tab, @video_tab = args
    extract_options
  end

  def manifest
    record do |m|
      # Ensure appropriate folder(s) exists
      # the structure of a workflow bundle is
      # 
      # Bundle Name.pwf
      #   Contents
      #     Info.plist
      #     Resources
      #       Compositions
      #       en.lproj
      #         InfoPlist.strings
      #       Images
      #       Movies
      #       template.plist
      #       Templates
      #       Tools
      #         art.rb
      
      # Base bundle
      m.directory "#{name}.pwf"
      
      # The Bundles Contents folder
      m.directory "#{name}.pwf/Contents"
      
      # The require subdirectories and files of the Contents Folder
      m.file "Info.plist", "#{name}.pwf/Contents/Info.plist"
      m.directory "#{name}.pwf/Contents/Resources"
      
      # The required structure inside of Resources
      %w(Compositions en.lproj Images Movies Templates Tools).each do |folder|
        m.directory "#{name}.pwf/Contents/Resources/#{folder}"
      end
      
      # Copy the art file
      m.file "art.rb", "#{name}.pwf/Contents/Resources/Tools/art.rb"
      
      # Copy the english trasnlation file and the podcast prodcuer workflow file
      print "name #{name}"
      print "audio tab #{audio_tab}"
      print "video tab #{video_tab}"
      m.template "Info.strings",  "#{name}.pwf/Contents/Resources/en.lproj/InfoPlist.strings"
      m.template "template.plist", "#{name}.pwf/Contents/Resources/template.plist"
    end
  end

  protected
    def banner
      <<-EOS
Creates a new Profcast Workflow bundle. The workflow template caters directly to the UM School of
Dentistry's needs for each course to have an audio and video tab.

USAGE: #{$0} #{spec.name} name
EOS
    end

    def add_options!(opts)
      # opts.separator ''
      # opts.separator 'Options:'
      # For each option below, place the default
      # at the top of the file next to "default_options"
      # opts.on("-a", "--author=\"Your Name\"", String,
      #         "Some comment about this option",
      #         "Default: none") { |options[:author]| }
      # opts.on("-v", "--version", "Show the #{File.basename($0)} version number and quit.")
    end

    def extract_options
      # for each option, extract it into a local variable (and create an "attr_reader :author" at the top)
      # Templates can access these value via the attr_reader-generated methods, but not the
      # raw instance variable value.
      # @author = options[:author]
    end
end