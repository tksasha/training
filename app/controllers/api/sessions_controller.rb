module Api
  class SessionsController < ApplicationController
    before_action :build_resource, only: :create

    def create
      render :errors, status: 422 unless resource.save
      p resource.inspect
    end

    private
    attr_reader :resource

    def build_resource
      @resource = Session.new resource_params
    end

    def resource_params
      params.require(:session).permit(:email, :password)
    end
  end
end
