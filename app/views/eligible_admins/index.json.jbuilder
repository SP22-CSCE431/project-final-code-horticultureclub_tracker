# frozen_string_literal: true

json.array!(@eligible_admins, partial: 'eligible_admins/eligible_admin', as: :eligible_admin)
