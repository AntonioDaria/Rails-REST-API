module API
  module V1
    class ArticlesController < ApplicationController
      def index
        @artciles = Article.order('created_at DESC')
        render json: {status: 'SUCCESS', message:'loaded artiles', data:articles},status:ok
      end
    end
  end
end
