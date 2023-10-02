# Use an official Ruby runtime as a parent image
FROM ruby:3.2.2

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock from the app root to the container
COPY Gemfile Gemfile.lock ./

# Install the project dependencies
RUN bundle install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 for the Rails application to listen on
EXPOSE 3000

# Start the Rails application
CMD ["rails", "server", "-b", "0.0.0.0"]

