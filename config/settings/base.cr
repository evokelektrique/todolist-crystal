Marten.configure do |config|
  # IMPORTANT: please ensure that the secret key value is kept secret!
  config.secret_key = "__insecure_0899d378009418da528e3b6a6c75533f4980d1045f79fc3afabb1c522ba584e9__"

  # Installed applications
  # https://martenframework.com/docs/development/reference/settings#installed_apps
  # config.installed_apps = []

  # Application middlewares
  # https://martenframework.com/docs/development/reference/settings#middleware
  config.middleware = [
    Marten::Middleware::Session,
    Marten::Middleware::Flash,
    Marten::Middleware::GZip,
    Marten::Middleware::XFrameOptions,
  ]

  # Databases
  # https://martenframework.com/docs/development/reference/settings#database-settings
  config.database do |db|
    db.backend = :sqlite
    db.name = Path["todolist-crystal.db"].expand
  end

  # Templates context producers
  # https://martenframework.com/docs/development/reference/settings#context_producers
  config.templates.context_producers = [
    Marten::Template::ContextProducer::Request,
    Marten::Template::ContextProducer::Flash,
    Marten::Template::ContextProducer::Debug,
    Marten::Template::ContextProducer::I18n,
  ]
end
