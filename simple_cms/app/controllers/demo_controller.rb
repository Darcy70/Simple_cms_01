class DemoController < ApplicationController

  layout 'application'

  def index
  end

  def hello
  @array= [1,2,3,4,5]
render('hello')

  end



end
