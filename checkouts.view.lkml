view: checkouts {
  sql_table_name: shopify.checkouts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension_group: _sdc_batched {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._sdc_batched_at ;;
  }

  dimension_group: _sdc_received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._sdc_received_at ;;
  }

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}._sdc_sequence ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}._sdc_table_version ;;
  }

  dimension: abandoned_checkout_url {
    type: string
    sql: ${TABLE}.abandoned_checkout_url ;;
  }

  dimension: billing_address__address1 {
    type: string
    sql: ${TABLE}.billing_address__address1 ;;
  }

  dimension: billing_address__address2 {
    type: string
    sql: ${TABLE}.billing_address__address2 ;;
  }

  dimension: billing_address__city {
    type: string
    sql: ${TABLE}.billing_address__city ;;
  }

  dimension: billing_address__company {
    type: string
    sql: ${TABLE}.billing_address__company ;;
  }

  dimension: billing_address__country {
    type: string
    sql: ${TABLE}.billing_address__country ;;
  }

  dimension: billing_address__country_code {
    type: string
    sql: ${TABLE}.billing_address__country_code ;;
  }

  dimension: billing_address__first_name {
    type: string
    sql: ${TABLE}.billing_address__first_name ;;
  }

  dimension: billing_address__last_name {
    type: string
    sql: ${TABLE}.billing_address__last_name ;;
  }

  dimension: billing_address__latitude {
    type: number
    sql: ${TABLE}.billing_address__latitude ;;
  }

  dimension: billing_address__longitude {
    type: number
    sql: ${TABLE}.billing_address__longitude ;;
  }
  dimension: checkouts_location {
    type: location
    sql_latitude: ${billing_address__latitude} ;;
    sql_longitude: ${billing_address__longitude} ;;
  }

  dimension: billing_address__name {
    type: string
    sql: ${TABLE}.billing_address__name ;;
  }

  dimension: billing_address__phone {
    type: string
    sql: ${TABLE}.billing_address__phone ;;
  }

  dimension: billing_address__province {
    type: string
    sql: ${TABLE}.billing_address__province ;;
  }

  dimension: billing_address__province_code {
    type: string
    sql: ${TABLE}.billing_address__province_code ;;
  }

  dimension: billing_address__zip {
    type: string
    sql: ${TABLE}.billing_address__zip ;;
  }

  dimension: buyer_accepts_marketing {
    type: yesno
    sql: ${TABLE}.buyer_accepts_marketing ;;
  }

  dimension: cart_token {
    type: string
    sql: ${TABLE}.cart_token ;;
  }

  dimension_group: completed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.completed_at ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: customer__accepts_marketing {
    type: yesno
    sql: ${TABLE}.customer__accepts_marketing ;;
  }

  dimension_group: customer__created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.customer__created_at ;;
  }

  dimension: customer__default_address__address1 {
    type: string
    sql: ${TABLE}.customer__default_address__address1 ;;
  }

  dimension: customer__default_address__address2 {
    type: string
    sql: ${TABLE}.customer__default_address__address2 ;;
  }

  dimension: customer__default_address__city {
    type: string
    sql: ${TABLE}.customer__default_address__city ;;
  }

  dimension: customer__default_address__company {
    type: string
    sql: ${TABLE}.customer__default_address__company ;;
  }

  dimension: customer__default_address__country {
    type: string
    sql: ${TABLE}.customer__default_address__country ;;
  }

  dimension: customer__default_address__country_code {
    type: string
    sql: ${TABLE}.customer__default_address__country_code ;;
  }

  dimension: customer__default_address__country_name {
    type: string
    sql: ${TABLE}.customer__default_address__country_name ;;
  }

  dimension: customer__default_address__default {
    type: yesno
    sql: ${TABLE}.customer__default_address__default ;;
  }

  dimension: customer__default_address__first_name {
    type: string
    sql: ${TABLE}.customer__default_address__first_name ;;
  }

  dimension: customer__default_address__id {
    type: number
    sql: ${TABLE}.customer__default_address__id ;;
  }

  dimension: customer__default_address__last_name {
    type: string
    sql: ${TABLE}.customer__default_address__last_name ;;
  }

  dimension: customer__default_address__name {
    type: string
    sql: ${TABLE}.customer__default_address__name ;;
  }

  dimension: customer__default_address__phone {
    type: string
    sql: ${TABLE}.customer__default_address__phone ;;
  }

  dimension: customer__default_address__province {
    type: string
    sql: ${TABLE}.customer__default_address__province ;;
  }

  dimension: customer__default_address__province_code {
    type: string
    sql: ${TABLE}.customer__default_address__province_code ;;
  }

  dimension: customer__default_address__zip {
    type: string
    sql: ${TABLE}.customer__default_address__zip ;;
  }

  dimension: customer__email {
    type: string
    sql: ${TABLE}.customer__email ;;
  }

  dimension: customer__first_name {
    type: string
    sql: ${TABLE}.customer__first_name ;;
  }

  dimension: customer__id {
    type: number
    sql: ${TABLE}.customer__id ;;
  }

  dimension: customer__last_name {
    type: string
    sql: ${TABLE}.customer__last_name ;;
  }

  dimension: customer__last_order_id {
    type: number
    sql: ${TABLE}.customer__last_order_id ;;
  }

  dimension: customer__last_order_name {
    type: string
    sql: ${TABLE}.customer__last_order_name ;;
  }

  dimension: customer__multipass_identifier {
    type: string
    sql: ${TABLE}.customer__multipass_identifier ;;
  }

  dimension: customer__note {
    type: string
    sql: ${TABLE}.customer__note ;;
  }

  dimension: customer__orders_count {
    type: number
    sql: ${TABLE}.customer__orders_count ;;
  }

  dimension: customer__state {
    type: string
    sql: ${TABLE}.customer__state ;;
  }

  dimension: customer__tags {
    type: string
    sql: ${TABLE}.customer__tags ;;
  }

  dimension: customer__tax_exempt {
    type: yesno
    sql: ${TABLE}.customer__tax_exempt ;;
  }

  dimension: customer__total_spent {
    type: number
    sql: ${TABLE}.customer__total_spent ;;
  }

  dimension_group: customer__updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.customer__updated_at ;;
  }

  dimension: customer__verified_email {
    type: yesno
    sql: ${TABLE}.customer__verified_email ;;
  }

  dimension: device_id {
    type: number
    sql: ${TABLE}.device_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }

  dimension: landing_site {
    type: string
    sql: ${TABLE}.landing_site ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: referring_site {
    type: string
    sql: ${TABLE}.referring_site ;;
  }

  dimension: shipping_address__address1 {
    type: string
    sql: ${TABLE}.shipping_address__address1 ;;
  }

  dimension: shipping_address__address2 {
    type: string
    sql: ${TABLE}.shipping_address__address2 ;;
  }

  dimension: shipping_address__city {
    type: string
    sql: ${TABLE}.shipping_address__city ;;
  }

  dimension: shipping_address__company {
    type: string
    sql: ${TABLE}.shipping_address__company ;;
  }

  dimension: shipping_address__country {
    type: string
    sql: ${TABLE}.shipping_address__country ;;
  }

  dimension: shipping_address__country_code {
    type: string
    sql: ${TABLE}.shipping_address__country_code ;;
  }

  dimension: shipping_address__first_name {
    type: string
    sql: ${TABLE}.shipping_address__first_name ;;
  }

  dimension: shipping_address__last_name {
    type: string
    sql: ${TABLE}.shipping_address__last_name ;;
  }

  dimension: shipping_address__latitude {
    type: number
    sql: ${TABLE}.shipping_address__latitude ;;
  }

  dimension: shipping_address__longitude {
    type: number
    sql: ${TABLE}.shipping_address__longitude ;;
  }

  dimension: shipping_address__name {
    type: string
    sql: ${TABLE}.shipping_address__name ;;
  }

  dimension: shipping_address__phone {
    type: string
    sql: ${TABLE}.shipping_address__phone ;;
  }

  dimension: shipping_address__province {
    type: string
    sql: ${TABLE}.shipping_address__province ;;
  }

  dimension: shipping_address__province_code {
    type: string
    sql: ${TABLE}.shipping_address__province_code ;;
  }

  dimension: shipping_address__zip {
    type: string
    sql: ${TABLE}.shipping_address__zip ;;
  }

  dimension: source_identifier {
    type: string
    sql: ${TABLE}.source_identifier ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: subtotal_price {
    type: number
    sql: ${TABLE}.subtotal_price ;;
  }

  dimension: taxes_included {
    type: yesno
    sql: ${TABLE}.taxes_included ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: total_discounts {
    type: number
    sql: ${TABLE}.total_discounts ;;
  }

  dimension: total_line_items_price {
    type: number
    sql: ${TABLE}.total_line_items_price ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}.total_tax ;;
  }

  dimension: total_weight {
    type: number
    sql: ${TABLE}.total_weight ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      billing_address__first_name,
      billing_address__last_name,
      billing_address__name,
      customer__default_address__country_name,
      customer__default_address__first_name,
      customer__default_address__last_name,
      customer__default_address__name,
      customer__first_name,
      customer__last_name,
      customer__last_order_name,
      name,
      shipping_address__first_name,
      shipping_address__last_name,
      shipping_address__name,
      source_name,
      orders.count
    ]
  }
}