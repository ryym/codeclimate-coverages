class User < ApplicationRecord
  def greet
    "Hello, I'm #{name}!"
  end
end
