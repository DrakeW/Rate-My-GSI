class Reply < ActiveRecord::Base
  belongs_to :Comment
  validates :content, presence: true, length: 
    { 
      minimum: 1, 
      maximum: 200,
      tokenizer: lambda { |str| str.split(/\s+/) },
      too_short: "must have at least %{count} words",
      too_long: "must have at most %{count} words"
    };
end
