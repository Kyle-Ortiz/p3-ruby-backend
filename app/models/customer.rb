class Customer < ActiveRecord::Base
     has_many :orders, dependent: :destroy
     has_many :invoices
     #test
end