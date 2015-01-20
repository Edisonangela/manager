$default_env = 'production'
#$unicorn_user = "www-data"
#$unicorn_group = "www-data"

$production_processes = 3

rails_env = ENV['RACK_ENV'] || $default_env
worker_processes $production_processes
working_directory '/var/www/shumian/current'

listen '/var/www/shumian/shared/shumian.sock', :backlog => 2048
listen 5000, :tcp_nopush => true

timeout 60
pid '/var/www/shumian/shared/pids/shumian.pid'
preload_app  true
stderr_path '/var/www/shumian/shared/log/shumian.log'

before_fork do |server, worker|
  ActiveRecord::Base.connection.disconnect!
  
  old_pid = "#{server.config[:pid]}.oldbin"
  if File.exists?(old_pid) && old_pid != server.pid
    begin
      # sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
      Process.kill('QUIT', File.read(old_pid).to_i)
      # Process.kill(sig, File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end


#require "redis"
after_fork do |server, worker|

  ActiveRecord::Base.establish_connection

  if defined?(MultiDb::ConnectionProxy)
    begin
      # MultiDb::ConnectionProxy.sticky_slave = true
      MultiDb::ConnectionProxy.setup!
    rescue
    end
  end

  if Rails.cache.respond_to?(:reset)
    Rails.cache.reset 
  end

  port = 5000 + worker.nr

  child_pid = server.config[:pid].sub('.pid', ".#{port}.pid")
  system("echo #{Process.pid} > #{child_pid}")

end