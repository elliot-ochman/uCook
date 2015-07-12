class PagesController < HighVoltage::PagesController
  before_action :set_variables

  layout 'application'

  def set_variables
    if current_page == 'pages/home'
      @clndr = Clndr.new(:simple)
      @clndr.template= Clndr::Template.from_html('.custom_template')
      @clndr.add_event(Time.now, 'One day')
      @clndr.add_multiday_event(Time.now+1.day,Time.now+2.day,'<a href="/recepts/1">Pannkakor</a>', location: 'Sweden')
      @clndr.start_with_month = Time.now
      @clndr.days_of_the_week = ['Sön', 'Mån', 'Tis', 'Ons', 'Tor', 'Fre', 'Lör']
    end
  end

  def show
    super
  end
end