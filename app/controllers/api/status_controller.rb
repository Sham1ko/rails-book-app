class Api::StatusController < ApplicationController
  def show
    result = ActiveRecord::Base.connection.execute("SELECT 1 AS one")
    value = result.first&.fetch("one", nil)
    render json: { status: "ok", db: value }, status: :ok
  rescue => e
    render json: { status: "error", error: e.class.name, message: e.message }, status: :service_unavailable
  end
end


