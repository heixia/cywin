class InvestorAudit < ActiveRecord::Base
  my_const_set(:AUDITS, [:PASSED, :REJECTED])
  
  validates :investor_id, presence: true
  validates :status, presence: true, inclusion: AUDITS

  belongs_to :investor
end
