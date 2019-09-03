RSpec.describe PrefixedDelegation do
  class User
    def first_name
      'John'
    end

    def last_name
      'Doe'
    end
  end

  class Company
    delegate :user_first_name, to: :user, prefixed: true
    delegate :john_last_name, to: :user, prefixed: :john

    def user
      User.new
    end
  end

  describe 'delegate with prefixed option' do
    it 'delegates successfully with prefixed: true' do
      company = Company.new
      expect(company.user_first_name).to eq('John')
    end

    it 'delegates successfully with prefixed: symbol' do
      company = Company.new
      expect(company.john_last_name).to eq('Doe')
    end
  end
end
