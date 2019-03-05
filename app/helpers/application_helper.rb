module ApplicationHelper

  def to_date_and_time(time)
    time.strftime('%m/%d/%Y %I:%M %p')
  end

  def google_calendar_string(event)
    event_params = "&text=#{event.title}&details=#{event.description}&location=#{event.location.full_address}"
    time = "&dates=#{time_string(event.begin_time)}Z%2F#{time_string(event.end_time)}Z"
    "https://www.google.com/calendar/render?action=TEMPLATE" + event_params + time
  end

  def time_string(time)
    utc_time = Time.zone.local_to_utc(time)
    # problem is with the %l, it places a leading space instead of a zero
    utc_time.strftime("%Y%m%dT%H%M%S")
  end
end
