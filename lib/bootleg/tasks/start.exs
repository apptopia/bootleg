alias Bootleg.{UI, Config}
use Bootleg.DSL

task :start do
  remote :app do
    "[ -f ~/.profile ] && source ~/.profile && bin/#{Config.app()} start"
  end

  UI.info("#{Config.app()} started")
  :ok
end
