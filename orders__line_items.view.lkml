view: orders__line_items {
  sql_table_name: shopify.orders__line_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

#   dimension_group: _sdc_batched {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}._sdc_batched_at ;;
#   }
#
#   dimension: _sdc_level_0_id {
#     type: number
#     sql: ${TABLE}._sdc_level_0_id ;;
#   }
#
#   dimension_group: _sdc_received {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}._sdc_received_at ;;
#   }
#
#   dimension: _sdc_sequence {
#     type: number
#     sql: ${TABLE}._sdc_sequence ;;
#   }
#
#renamed key _sdc_source_key_id to order_id
  dimension: order_id {
    type: number
    sql: ${TABLE}._sdc_source_key_id ;;
  }
  measure: first_purchase_count {
    view_label: "Orders"
    type: count_distinct
    sql: ${order_id} ;;

   # filters: {
  #    field: order_facts.is_first_purchase
   #   value: "Yes"
    #}
  }
#
#   dimension: _sdc_table_version {
#     type: number
#     sql: ${TABLE}._sdc_table_version ;;
#   }
#
#   dimension: destination_location__address1 {
#     type: string
#     sql: ${TABLE}.destination_location__address1 ;;
#   }
#
#   dimension: destination_location__address2 {
#     type: string
#     sql: ${TABLE}.destination_location__address2 ;;
#   }
#
#   dimension: destination_location__city {
#     type: string
#     sql: ${TABLE}.destination_location__city ;;
#   }
#
#   dimension: destination_location__country_code {
#     type: string
#     sql: ${TABLE}.destination_location__country_code ;;
#   }
#
#   dimension: destination_location__id {
#     type: number
#     sql: ${TABLE}.destination_location__id ;;
#   }
#
#   dimension: destination_location__name {
#     type: string
#     sql: ${TABLE}.destination_location__name ;;
#   }
#
#   dimension: destination_location__province_code {
#     type: string
#     sql: ${TABLE}.destination_location__province_code ;;
#   }
#
#   dimension: destination_location__zip {
#     type: string
#     sql: ${TABLE}.destination_location__zip ;;
#   }
#
#   dimension: fulfillable_quantity {
#     type: number
#     sql: ${TABLE}.fulfillable_quantity ;;
#   }
#
#   dimension: fulfillment_service {
#     type: string
#     sql: ${TABLE}.fulfillment_service ;;
#   }
#
#   dimension: fulfillment_status {
#     type: string
#     sql: ${TABLE}.fulfillment_status ;;
#   }



  dimension: gift_card {
    type: yesno
    sql: ${TABLE}.gift_card ;;
  }

  dimension: grams {
    type: number
    sql: ${TABLE}.grams ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
#
#   dimension: origin_location__address1 {
#     type: string
#     sql: ${TABLE}.origin_location__address1 ;;
#   }
#
#   dimension: origin_location__address2 {
#     type: string
#     sql: ${TABLE}.origin_location__address2 ;;
#   }
#
#   dimension: origin_location__city {
#     type: string
#     sql: ${TABLE}.origin_location__city ;;
#   }
#
#   dimension: origin_location__country_code {
#     type: string
#     sql: ${TABLE}.origin_location__country_code ;;
#   }
#
#   dimension: origin_location__id {
#     type: number
#     sql: ${TABLE}.origin_location__id ;;
#   }
#
#   dimension: origin_location__name {
#     type: string
#     sql: ${TABLE}.origin_location__name ;;
#   }
#
#   dimension: origin_location__province_code {
#     type: string
#     sql: ${TABLE}.origin_location__province_code ;;
#   }
#
#   dimension: origin_location__zip {
#     type: string
#     sql: ${TABLE}.origin_location__zip ;;
#   }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  measure: avg_price {
    type: average
    sql: ${price} ;;
    value_format: "$0.00"
  }
  dimension: product_exists {
    type: yesno
    sql: ${TABLE}.product_exists ;;
  }

  dimension: product_id {
    type: number
    hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: requires_shipping {
    type: yesno
    sql: ${TABLE}.requires_shipping ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: taxable {
    type: yesno
    sql: ${TABLE}.taxable ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: total_discount {
    type: number
    sql: ${TABLE}.total_discount ;;
  }

  dimension: variant_id {
    type: number
    sql: ${TABLE}.variant_id ;;
  }

  dimension: variant_inventory_management {
    type: string
    sql: ${TABLE}.variant_inventory_management ;;
  }

  dimension: variant_title {
    type: string
    sql: ${TABLE}.variant_title ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name,products.image__product_id]
  }
}
