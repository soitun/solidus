# frozen_string_literal: true

module Spree
  class ApiConfiguration < Preferences::Configuration
    preference :requires_authentication, :boolean, default: true

    preference :product_attributes, :array, default: [
      :id, :name, :description, :available_on,
      :slug, :meta_description, :meta_keywords, :shipping_category_id,
      :taxon_ids, :total_on_hand, :meta_title
    ]

    preference :product_property_attributes, :array, default: [:id, :product_id, :property_id, :value, :property_name]

    preference :variant_attributes, :array, default: [
      :id, :name, :sku, :weight, :height, :width, :depth, :is_master,
      :slug, :description, :track_inventory
    ]

    preference :image_attributes, :array, default: [
      :id, :position, :attachment_content_type, :attachment_file_name, :type,
      :attachment_updated_at, :attachment_width, :attachment_height, :alt
    ]

    preference :option_value_attributes, :array, default: [
      :id, :name, :presentation, :option_type_name, :option_type_id,
      :option_type_presentation
    ]

    preference :order_attributes, :array, default: [
      :id, :number, :item_total, :total, :ship_total, :state, :adjustment_total,
      :user_id, :created_at, :updated_at, :completed_at, :payment_total,
      :shipment_state, :payment_state, :email, :special_instructions, :channel,
      :included_tax_total, :additional_tax_total, :display_included_tax_total,
      :display_additional_tax_total, :tax_total, :currency,
      :covered_by_store_credit, :display_total_applicable_store_credit,
      :order_total_after_store_credit, :display_order_total_after_store_credit,
      :total_applicable_store_credit, :display_total_available_store_credit,
      :display_store_credit_remaining_after_capture, :canceler_id
    ]

    preference :line_item_attributes, :array, default: [:id, :quantity, :price, :variant_id]

    preference :option_type_attributes, :array, default: [:id, :name, :presentation, :position]

    preference :payment_attributes, :array, default: [
      :id, :source_type, :source_id, :amount, :display_amount,
      :payment_method_id, :state, :avs_response, :created_at,
      :updated_at
    ]

    preference :payment_method_attributes, :array, default: [:id, :name, :description]

    preference :shipment_attributes, :array, default: [:id, :tracking, :tracking_url, :number, :cost, :shipped_at, :state]

    preference :taxonomy_attributes, :array, default: [:id, :name]

    preference :taxon_attributes, :array, default: [
      :id, :name, :pretty_name, :permalink, :parent_id,
      :taxonomy_id
    ]

    preference :address_attributes, :array, default: [
      :id, :name, :address1, :address2, :city, :zipcode, :phone, :company,
      :alternative_phone, :country_id, :country_iso, :state_id, :state_name,
      :state_text
    ]

    preference :country_attributes, :array, default: [:id, :iso_name, :iso, :iso3, :name, :numcode]

    preference :state_attributes, :array, default: [:id, :name, :abbr, :country_id]

    preference :adjustment_attributes, :array, default: [
      :id, :source_type, :source_id, :adjustable_type, :adjustable_id,
      :amount, :label, :promotion_code_id,
      :finalized, :eligible, :created_at, :updated_at
    ]

    preference :inventory_unit_attributes, :array, default: [
      :id, :state, :variant_id, :shipment_id
    ]

    preference :customer_return_attributes, :array, default: [
      :id, :number, :stock_location_id, :created_at, :updated_at
    ]

    preference :return_authorization_attributes, :array, default: [
      :id, :number, :state, :order_id, :memo, :created_at, :updated_at
    ]

    preference :creditcard_attributes, :array, default: [
      :id, :month, :year, :cc_type, :last_digits, :name
    ]

    preference :payment_source_attributes, :array, default: [
      :id, :month, :year, :cc_type, :last_digits, :name
    ]

    preference :user_attributes, :array, default: [:id, :email, :created_at, :updated_at]

    preference :property_attributes, :array, default: [:id, :name, :presentation]

    preference :stock_location_attributes, :array, default: [
      :id, :name, :address1, :address2, :city, :state_id, :state_name,
      :country_id, :zipcode, :phone, :active
    ]

    preference :stock_movement_attributes, :array, default: [:id, :quantity, :stock_item_id]

    preference :stock_item_attributes, :array, default: [
      :id, :count_on_hand, :backorderable, :stock_location_id,
      :variant_id
    ]

    preference :promotion_attributes, :array, default: [
      :id, :name, :description, :expires_at, :starts_at, :type, :usage_limit,
      :advertise, :path
    ]

    preference :store_attributes, :array, default: [
      :id, :name, :url, :meta_description, :meta_keywords, :seo_title,
      :mail_from_address, :default_currency, :code, :default, :available_locales,
      :bcc_email
    ]

    preference :store_credit_history_attributes, :array, default: [
      :display_amount, :display_user_total_amount, :display_action,
      :display_event_date, :display_remaining_amount
    ]

    preference :variant_property_attributes, :array, default: [
      :id, :property_id, :value, :property_name
    ]
  end
end
