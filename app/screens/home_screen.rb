class HomeScreen < PM::Screen
  title "Home"

  def on_load
    @opened = false
    set_nav_bar_button :left, title: "=", action: :open_left_slide
  end

  def open_left_slide
    if @opened
      @opened = false
      app_delegate.close_drawer animated: true
    else
      @opened = true
      app_delegate.open_drawer :left, animated: true
    end
  end

end
