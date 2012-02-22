#encoding: UTF-8
class HomeController < ApplicationController
	skip_before_filter :auth
end