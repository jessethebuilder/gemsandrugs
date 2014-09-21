require 'spec_helper'

describe Item do
  describe 'Validations' do
    it{ should validate_presence_of :name }
    it{ should validate_presence_of :description }

    it{ should validate_presence_of :weight }
    it{ should validate_numericallity_of :weight }

    it{ should validate_presence_of :width }
    it{ should validate_numericallity :width}
    it{ should validate_presence_of :length }
    it{ should validate_numericallity :length}
    it{ should validate_presence_of :height }
    it{ should validate_numericallity_of :height }
  end

  describe 'Associations' do

  end
end
