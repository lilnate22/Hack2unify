class RegistrationController < ApplicationController
	protect_from forgery
	
	@twitter_key = "" #twitter key gotten from dev.twitter.com
	@twitter_secret = "" #secret pass
	
