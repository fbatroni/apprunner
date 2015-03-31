require 'octokit'

def prompt_and_authenticate_user
	@github_username = ask("Please enter your github username:")
	@github_password = ask("Enter your github password: ") { |q| q.echo = '*' }

	Octokit.auto_paginate = true

	client = Octokit::Client.new(:login => @github_username, :password => @github_password)
	$logger.debug "successfully logged in as ::: #{client.login}"

	# store github data
	# Create a hash for collecting our example data.
	data = {
	  :username => @github_username,
	  :password => BCrypt::Password.create(@github_password)
	}
	return {
		:data => data,
		:client => client
	}
end