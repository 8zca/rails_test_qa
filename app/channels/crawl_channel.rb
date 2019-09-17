class CrawlChannel < ApplicationCable::Channel
  def subscribed
    stream_from "crawl:notify_#{current_user.hotel_id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

