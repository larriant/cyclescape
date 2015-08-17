class Message::StreetViewsController < Message::BaseController
  protected

  def component
    @street_view ||= StreetViewMessage.new(permitted_params).tap do |svm|
      svm.set_location params[:street_view_message_location_string]
    end
  end

  def notification_name
    :new_street_view_message
  end

  def permitted_params
    params.require(:street_view_message).permit :caption, :heading, :pitch
  end
end