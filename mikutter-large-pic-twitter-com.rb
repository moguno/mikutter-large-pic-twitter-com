

module Gtk
  class << self
    alias openurl_large_image openurl

    def openurl(url)
      xurl = if url =~ /^http:\/\/pbs\.twimg\.com\//
        "#{url}:orig"
      else
        url
      end

      openurl_large_image(xurl)
    end
  end
end


Plugin.create(:mikutter_large_pic_twitter_com) {

}
