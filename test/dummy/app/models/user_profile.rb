# frozen_string_literal: true

class UserProfile < ApplicationRecord
  belongs_to :user
  has_one :user_profile_pic, dependent: :destroy
end

#------------------------------------------------------------------------------
# UserProfile
#
# Name       SQL Type             Null    Primary Default
# ---------- -------------------- ------- ------- ----------
# id         bigint               false   true
# user_id    bigint               true    false
# created_at timestamp without time zone false   false
# updated_at timestamp without time zone false   false
# name       character varying    true    false
# col_int    integer              true    false
# col_float  double precision     true    false
# col_string character varying    true    false
# klass      character varying    true    false   UserProfile
#
#------------------------------------------------------------------------------
