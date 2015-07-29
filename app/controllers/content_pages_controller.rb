class ContentPagesController < ApplicationController

    def index
        @content_page = params[:link]
                raise ActiveRecord::RecordNotFound, "Page not found" if @content_page.nil?
    end
end
