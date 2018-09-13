# frozen_string_literal: true

class SchoolsController < ApplicationController
  def index
    @schools = SchoolDecorator.decorate_collection(School.all)
  end

  def show
    @school = School.find(params[:id]).decorate
  end
end
