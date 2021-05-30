class CronJobsController
  def refresh
    logger.info `bundle exec rails sitemap:refresh`
    head :ok

  rescure StandardError => e
    logger.error e.full_message
    head :internal_server_error
  end
end