# frozen_string_literal: true

# The module to extend from a Jekyll project according to Jekyll's docs.
module Jekyll
  # A tag handling {% bandcamp_track_solor track_id %}
  # Example: {% bandcamp_track_solor 6yt7RQR9MBtuCd3gjTuOuw %}
  class BandcampTrackSoloTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @track_id = text
    end

    def render(_context)
      <<~RENDERED_HTML
        <div>
          <iframe style="border: 0; width: 100%; height: 442px;" src="https://bandcamp.com/EmbeddedPlayer/track=#{@track_id}/size=large/bgcol=ffffff/linkcol=0687f5/tracklist=false/transparent=true/" seamless>
          </iframe>
        </div>
      RENDERED_HTML
    end
  end

  Liquid::Template.register_tag('bandcamp_track_solo', Jekyll::BandcampTrackSoloTag)
end
