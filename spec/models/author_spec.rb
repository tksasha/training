require 'rails_helper'

RSpec.describe Author, type: :model do
  it { should delegate_method(:as_json).to(:decorate) }

  it { should validate_presence_of :name }
end
