# Gem::Bumper

We manage a small fleet of in house gems, hosted on GitHub, for our microservices. Whenever one of these gems is updated then every version reference on every relevant Microservice needs to be changed as well. It gets old, fast...

So I built this gem!

## How to Use

This gem is a command line gem, it can be used simply with its one command:

```bash
$ bump your_gem 1.0.0
```

This will update your Gemfile's verison of the given Gem, run a quick bundle, add the Gemfile & Gemfile.lock to git, and then commit it with a simple message
