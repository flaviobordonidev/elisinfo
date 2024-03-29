class CompanyPersonMap < ApplicationRecord
  # == Constants ============================================================
  
  # == Extensions ===========================================================

  ## globalize required
  translates :summary, :fallbacks_for_empty_translations => true
  
  # == Attributes ===========================================================

  # == Relationships ========================================================

  ## many-to-many
  belongs_to :company
  belongs_to :person

  ## nested-forms + polymorphic
  has_many :telephones, dependent: :destroy, as: :telephoneable
  accepts_nested_attributes_for :telephones, allow_destroy: true, reject_if: proc{ |attr| attr['number'].blank? }

  ## nested-form + polymorphic
  has_many :emails, dependent: :destroy, as: :emailable
  accepts_nested_attributes_for :emails, allow_destroy: true, reject_if: proc{ |attr| attr['address'].blank? }


  # == Validations ==========================================================

  # == Scopes ===============================================================

  # == Callbacks ============================================================

  # == Class Methods ========================================================

  # == Instance Methods =====================================================

end
