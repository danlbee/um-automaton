#!/usr/bin/env ruby

# This is the Agent Ranking Tool script
# This tool determines whether or not our Xgrid batch job can run on an agent.

ENV['PATH'] = '/bin:/usr/bin'

begin
  # Podcast Producer tasks can only be run on machines running Mac OS X 10.5.
  # So first we check for Leopard.
  os_vers = `/usr/bin/sw_vers -productVersion`.chomp
  if (!os_vers.match("10.5"))
    raise "Requires Leopard"
  end

  # Podcast Producer tasks require access to the Shared File System 
  # specified in Server Admin > Podcast Producer > Settings > General
  shared_filesystem = ARGV[0]
  server_uuid = ARGV[1]
  
  if (!shared_filesystem || !server_uuid)
    raise "Usage: art.rb <shared_filesystem> <server_uuid>"
  end
  
  if (!File.exist?(shared_filesystem))
    raise "Shared file system does not exist"
  end
  
  info_path = File.join(shared_filesystem, "pcastserverd.plist")  
  if (!File.exist?(info_path))
    raise "#{info_path} does not exist"
  end

  # We check to make sure that it is the correct filesystem (UUID)
  info = IO.read(info_path)
  if (!info.match(server_uuid))
    raise "#{info_path} does not contain #{server_uuid}"
  end
  
  puts "{ artScore = 1; }"  # If everything was successful we return 1 = Success
rescue => boom
  puts "{ artScore = 0; reason = \"#{boom}\"; }"  # Otherwise we return 0 = Failure
end
