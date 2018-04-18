view: transactions {
  sql_table_name: shopify.transactions ;;

  dimension: receipt__parent_transaction_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.receipt__parent_transaction_id ;;
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

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: authorization {
    type: string
    sql: ${TABLE}."authorization" ;;
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

  dimension: device_id {
    type: number
    sql: ${TABLE}.device_id ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}.error_code ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: payment_details__avs_result_code {
    type: string
    sql: ${TABLE}.payment_details__avs_result_code ;;
  }

  dimension: payment_details__credit_card_bin {
    type: string
    sql: ${TABLE}.payment_details__credit_card_bin ;;
  }

  dimension: payment_details__credit_card_company {
    type: string
    sql: ${TABLE}.payment_details__credit_card_company ;;
  }

  dimension: payment_details__credit_card_number {
    type: string
    sql: ${TABLE}.payment_details__credit_card_number ;;
  }

  dimension: payment_details__cvv_result_code {
    type: string
    sql: ${TABLE}.payment_details__cvv_result_code ;;
  }

  dimension: receipt__account_number {
    type: string
    sql: ${TABLE}.receipt__account_number ;;
  }

  dimension: receipt__ack {
    type: string
    sql: ${TABLE}.receipt__ack ;;
  }

  dimension: receipt__action {
    type: string
    sql: ${TABLE}.receipt__action ;;
  }

  dimension: receipt__address_city {
    type: string
    sql: ${TABLE}.receipt__address_city ;;
  }

  dimension: receipt__address_country {
    type: string
    sql: ${TABLE}.receipt__address_country ;;
  }

  dimension: receipt__address_country_code {
    type: string
    sql: ${TABLE}.receipt__address_country_code ;;
  }

  dimension: receipt__address_name {
    type: string
    sql: ${TABLE}.receipt__address_name ;;
  }

  dimension: receipt__address_state {
    type: string
    sql: ${TABLE}.receipt__address_state ;;
  }

  dimension: receipt__address_status {
    type: string
    sql: ${TABLE}.receipt__address_status ;;
  }

  dimension: receipt__address_street {
    type: string
    sql: ${TABLE}.receipt__address_street ;;
  }

  dimension: receipt__address_zip {
    type: string
    sql: ${TABLE}.receipt__address_zip ;;
  }

  dimension: receipt__amount {
    type: number
    sql: ${TABLE}.receipt__amount ;;
  }

  dimension: receipt__amount_refunded {
    type: number
    sql: ${TABLE}.receipt__amount_refunded ;;
  }

  dimension: receipt__apple_pay {
    type: yesno
    sql: ${TABLE}.receipt__apple_pay ;;
  }

  dimension: receipt__application_fee {
    type: string
    sql: ${TABLE}.receipt__application_fee ;;
  }

  dimension: receipt__authorization_code {
    type: string
    sql: ${TABLE}.receipt__authorization_code ;;
  }

  dimension: receipt__authorization_id {
    type: string
    sql: ${TABLE}.receipt__authorization_id ;;
  }

  dimension: receipt__authorization_key {
    type: string
    sql: ${TABLE}.receipt__authorization_key ;;
  }

  dimension: receipt__authorizationid {
    type: string
    sql: ${TABLE}.receipt__authorizationid ;;
  }

  dimension: receipt__avs_result_code {
    type: string
    sql: ${TABLE}.receipt__avs_result_code ;;
  }

  dimension: receipt__balance_transaction__amount {
    type: number
    sql: ${TABLE}.receipt__balance_transaction__amount ;;
  }

  dimension: receipt__balance_transaction__available_on {
    type: number
    sql: ${TABLE}.receipt__balance_transaction__available_on ;;
  }

  dimension: receipt__balance_transaction__created {
    type: number
    sql: ${TABLE}.receipt__balance_transaction__created ;;
  }

  dimension: receipt__balance_transaction__currency {
    type: string
    sql: ${TABLE}.receipt__balance_transaction__currency ;;
  }

  dimension: receipt__balance_transaction__description {
    type: string
    sql: ${TABLE}.receipt__balance_transaction__description ;;
  }

  dimension: receipt__balance_transaction__fee {
    type: number
    sql: ${TABLE}.receipt__balance_transaction__fee ;;
  }

  dimension: receipt__balance_transaction__id {
    type: string
    sql: ${TABLE}.receipt__balance_transaction__id ;;
  }

  dimension: receipt__balance_transaction__net {
    type: number
    sql: ${TABLE}.receipt__balance_transaction__net ;;
  }

  dimension: receipt__balance_transaction__object {
    type: string
    sql: ${TABLE}.receipt__balance_transaction__object ;;
  }

  dimension: receipt__balance_transaction__source {
    type: string
    sql: ${TABLE}.receipt__balance_transaction__source ;;
  }

  dimension: receipt__balance_transaction__sourced_transfers__count {
    type: number
    sql: ${TABLE}.receipt__balance_transaction__sourced_transfers__count ;;
  }

  dimension: receipt__balance_transaction__sourced_transfers__has_more {
    type: yesno
    sql: ${TABLE}.receipt__balance_transaction__sourced_transfers__has_more ;;
  }

  dimension: receipt__balance_transaction__sourced_transfers__object {
    type: string
    sql: ${TABLE}.receipt__balance_transaction__sourced_transfers__object ;;
  }

  dimension: receipt__balance_transaction__sourced_transfers__total_count {
    type: number
    sql: ${TABLE}.receipt__balance_transaction__sourced_transfers__total_count ;;
  }

  dimension: receipt__balance_transaction__sourced_transfers__url {
    type: string
    sql: ${TABLE}.receipt__balance_transaction__sourced_transfers__url ;;
  }

  dimension: receipt__balance_transaction__status {
    type: string
    sql: ${TABLE}.receipt__balance_transaction__status ;;
  }

  dimension: receipt__balance_transaction__type {
    type: string
    sql: ${TABLE}.receipt__balance_transaction__type ;;
  }

  dimension: receipt__build {
    type: string
    sql: ${TABLE}.receipt__build ;;
  }

  dimension: receipt__business {
    type: string
    sql: ${TABLE}.receipt__business ;;
  }

  dimension: receipt__captured {
    type: yesno
    sql: ${TABLE}.receipt__captured ;;
  }

  dimension: receipt__card__address_city {
    type: string
    sql: ${TABLE}.receipt__card__address_city ;;
  }

  dimension: receipt__card__address_country {
    type: string
    sql: ${TABLE}.receipt__card__address_country ;;
  }

  dimension: receipt__card__address_line1 {
    type: string
    sql: ${TABLE}.receipt__card__address_line1 ;;
  }

  dimension: receipt__card__address_line1_check {
    type: string
    sql: ${TABLE}.receipt__card__address_line1_check ;;
  }

  dimension: receipt__card__address_line2 {
    type: string
    sql: ${TABLE}.receipt__card__address_line2 ;;
  }

  dimension: receipt__card__address_state {
    type: string
    sql: ${TABLE}.receipt__card__address_state ;;
  }

  dimension: receipt__card__address_zip {
    type: string
    sql: ${TABLE}.receipt__card__address_zip ;;
  }

  dimension: receipt__card__address_zip_check {
    type: string
    sql: ${TABLE}.receipt__card__address_zip_check ;;
  }

  dimension: receipt__card__brand {
    type: string
    sql: ${TABLE}.receipt__card__brand ;;
  }

  dimension: receipt__card__country {
    type: string
    sql: ${TABLE}.receipt__card__country ;;
  }

  dimension: receipt__card__cvc_check {
    type: string
    sql: ${TABLE}.receipt__card__cvc_check ;;
  }

  dimension: receipt__card__exp_month {
    type: number
    sql: ${TABLE}.receipt__card__exp_month ;;
  }

  dimension: receipt__card__exp_year {
    type: number
    sql: ${TABLE}.receipt__card__exp_year ;;
  }

  dimension: receipt__card__fingerprint {
    type: string
    sql: ${TABLE}.receipt__card__fingerprint ;;
  }

  dimension: receipt__card__funding {
    type: string
    sql: ${TABLE}.receipt__card__funding ;;
  }

  dimension: receipt__card__id {
    type: string
    sql: ${TABLE}.receipt__card__id ;;
  }

  dimension: receipt__card__last4 {
    type: string
    sql: ${TABLE}.receipt__card__last4 ;;
  }

  dimension: receipt__card__name {
    type: string
    sql: ${TABLE}.receipt__card__name ;;
  }

  dimension: receipt__card__object {
    type: string
    sql: ${TABLE}.receipt__card__object ;;
  }

  dimension: receipt__card__type {
    type: string
    sql: ${TABLE}.receipt__card__type ;;
  }

  dimension: receipt__card_code {
    type: string
    sql: ${TABLE}.receipt__card_code ;;
  }

  dimension: receipt__cardholder_authentication_code {
    type: string
    sql: ${TABLE}.receipt__cardholder_authentication_code ;;
  }

  dimension: receipt__charge__amount {
    type: number
    sql: ${TABLE}.receipt__charge__amount ;;
  }

  dimension: receipt__charge__amount_refunded {
    type: number
    sql: ${TABLE}.receipt__charge__amount_refunded ;;
  }

  dimension: receipt__charge__application_fee {
    type: string
    sql: ${TABLE}.receipt__charge__application_fee ;;
  }

  dimension: receipt__charge__balance_transaction__amount {
    type: number
    sql: ${TABLE}.receipt__charge__balance_transaction__amount ;;
  }

  dimension: receipt__charge__balance_transaction__available_on {
    type: number
    sql: ${TABLE}.receipt__charge__balance_transaction__available_on ;;
  }

  dimension: receipt__charge__balance_transaction__created {
    type: number
    sql: ${TABLE}.receipt__charge__balance_transaction__created ;;
  }

  dimension: receipt__charge__balance_transaction__currency {
    type: string
    sql: ${TABLE}.receipt__charge__balance_transaction__currency ;;
  }

  dimension: receipt__charge__balance_transaction__description {
    type: string
    sql: ${TABLE}.receipt__charge__balance_transaction__description ;;
  }

  dimension: receipt__charge__balance_transaction__fee {
    type: number
    sql: ${TABLE}.receipt__charge__balance_transaction__fee ;;
  }

  dimension: receipt__charge__balance_transaction__id {
    type: string
    sql: ${TABLE}.receipt__charge__balance_transaction__id ;;
  }

  dimension: receipt__charge__balance_transaction__net {
    type: number
    sql: ${TABLE}.receipt__charge__balance_transaction__net ;;
  }

  dimension: receipt__charge__balance_transaction__object {
    type: string
    sql: ${TABLE}.receipt__charge__balance_transaction__object ;;
  }

  dimension: receipt__charge__balance_transaction__source {
    type: string
    sql: ${TABLE}.receipt__charge__balance_transaction__source ;;
  }

  dimension: receipt__charge__balance_transaction__sourced_transfers__has_more {
    type: yesno
    sql: ${TABLE}.receipt__charge__balance_transaction__sourced_transfers__has_more ;;
  }

  dimension: receipt__charge__balance_transaction__sourced_transfers__object {
    type: string
    sql: ${TABLE}.receipt__charge__balance_transaction__sourced_transfers__object ;;
  }

  dimension: receipt__charge__balance_transaction__sourced_transfers__total_count {
    type: number
    sql: ${TABLE}.receipt__charge__balance_transaction__sourced_transfers__total_count ;;
  }

  dimension: receipt__charge__balance_transaction__sourced_transfers__url {
    type: string
    sql: ${TABLE}.receipt__charge__balance_transaction__sourced_transfers__url ;;
  }

  dimension: receipt__charge__balance_transaction__status {
    type: string
    sql: ${TABLE}.receipt__charge__balance_transaction__status ;;
  }

  dimension: receipt__charge__balance_transaction__type {
    type: string
    sql: ${TABLE}.receipt__charge__balance_transaction__type ;;
  }

  dimension: receipt__charge__captured {
    type: yesno
    sql: ${TABLE}.receipt__charge__captured ;;
  }

  dimension: receipt__charge__created {
    type: number
    sql: ${TABLE}.receipt__charge__created ;;
  }

  dimension: receipt__charge__currency {
    type: string
    sql: ${TABLE}.receipt__charge__currency ;;
  }

  dimension: receipt__charge__description {
    type: string
    sql: ${TABLE}.receipt__charge__description ;;
  }

  dimension: receipt__charge__id {
    type: string
    sql: ${TABLE}.receipt__charge__id ;;
  }

  dimension: receipt__charge__livemode {
    type: yesno
    sql: ${TABLE}.receipt__charge__livemode ;;
  }

  dimension: receipt__charge__metadata__email {
    type: string
    sql: ${TABLE}.receipt__charge__metadata__email ;;
  }

  dimension: receipt__charge__metadata__order_id {
    type: string
    sql: ${TABLE}.receipt__charge__metadata__order_id ;;
  }

  dimension: receipt__charge__metadata__transaction_fee_tax_amount {
    type: string
    sql: ${TABLE}.receipt__charge__metadata__transaction_fee_tax_amount ;;
  }

  dimension: receipt__charge__metadata__transaction_fee_total_amount {
    type: string
    sql: ${TABLE}.receipt__charge__metadata__transaction_fee_total_amount ;;
  }

  dimension: receipt__charge__object {
    type: string
    sql: ${TABLE}.receipt__charge__object ;;
  }

  dimension: receipt__charge__outcome__network_status {
    type: string
    sql: ${TABLE}.receipt__charge__outcome__network_status ;;
  }

  dimension: receipt__charge__outcome__seller_message {
    type: string
    sql: ${TABLE}.receipt__charge__outcome__seller_message ;;
  }

  dimension: receipt__charge__outcome__type {
    type: string
    sql: ${TABLE}.receipt__charge__outcome__type ;;
  }

  dimension: receipt__charge__paid {
    type: yesno
    sql: ${TABLE}.receipt__charge__paid ;;
  }

  dimension: receipt__charge__refunded {
    type: yesno
    sql: ${TABLE}.receipt__charge__refunded ;;
  }

  dimension: receipt__charge__refunds__has_more {
    type: yesno
    sql: ${TABLE}.receipt__charge__refunds__has_more ;;
  }

  dimension: receipt__charge__refunds__object {
    type: string
    sql: ${TABLE}.receipt__charge__refunds__object ;;
  }

  dimension: receipt__charge__refunds__total_count {
    type: number
    sql: ${TABLE}.receipt__charge__refunds__total_count ;;
  }

  dimension: receipt__charge__refunds__url {
    type: string
    sql: ${TABLE}.receipt__charge__refunds__url ;;
  }

  dimension: receipt__charge__source__address_city {
    type: string
    sql: ${TABLE}.receipt__charge__source__address_city ;;
  }

  dimension: receipt__charge__source__address_country {
    type: string
    sql: ${TABLE}.receipt__charge__source__address_country ;;
  }

  dimension: receipt__charge__source__address_line1 {
    type: string
    sql: ${TABLE}.receipt__charge__source__address_line1 ;;
  }

  dimension: receipt__charge__source__address_line1_check {
    type: string
    sql: ${TABLE}.receipt__charge__source__address_line1_check ;;
  }

  dimension: receipt__charge__source__address_line2 {
    type: string
    sql: ${TABLE}.receipt__charge__source__address_line2 ;;
  }

  dimension: receipt__charge__source__address_state {
    type: string
    sql: ${TABLE}.receipt__charge__source__address_state ;;
  }

  dimension: receipt__charge__source__address_zip {
    type: string
    sql: ${TABLE}.receipt__charge__source__address_zip ;;
  }

  dimension: receipt__charge__source__address_zip_check {
    type: string
    sql: ${TABLE}.receipt__charge__source__address_zip_check ;;
  }

  dimension: receipt__charge__source__brand {
    type: string
    sql: ${TABLE}.receipt__charge__source__brand ;;
  }

  dimension: receipt__charge__source__country {
    type: string
    sql: ${TABLE}.receipt__charge__source__country ;;
  }

  dimension: receipt__charge__source__cvc_check {
    type: string
    sql: ${TABLE}.receipt__charge__source__cvc_check ;;
  }

  dimension: receipt__charge__source__exp_month {
    type: number
    sql: ${TABLE}.receipt__charge__source__exp_month ;;
  }

  dimension: receipt__charge__source__exp_year {
    type: number
    sql: ${TABLE}.receipt__charge__source__exp_year ;;
  }

  dimension: receipt__charge__source__fingerprint {
    type: string
    sql: ${TABLE}.receipt__charge__source__fingerprint ;;
  }

  dimension: receipt__charge__source__funding {
    type: string
    sql: ${TABLE}.receipt__charge__source__funding ;;
  }

  dimension: receipt__charge__source__id {
    type: string
    sql: ${TABLE}.receipt__charge__source__id ;;
  }

  dimension: receipt__charge__source__last4 {
    type: string
    sql: ${TABLE}.receipt__charge__source__last4 ;;
  }

  dimension: receipt__charge__source__name {
    type: string
    sql: ${TABLE}.receipt__charge__source__name ;;
  }

  dimension: receipt__charge__source__object {
    type: string
    sql: ${TABLE}.receipt__charge__source__object ;;
  }

  dimension: receipt__charge__status {
    type: string
    sql: ${TABLE}.receipt__charge__status ;;
  }

  dimension: receipt__charset {
    type: string
    sql: ${TABLE}.receipt__charset ;;
  }

  dimension: receipt__correlation_id {
    type: string
    sql: ${TABLE}.receipt__correlation_id ;;
  }

  dimension: receipt__correlationid {
    type: string
    sql: ${TABLE}.receipt__correlationid ;;
  }

  dimension: receipt__created {
    type: number
    sql: ${TABLE}.receipt__created ;;
  }

  dimension: receipt__currency {
    type: string
    sql: ${TABLE}.receipt__currency ;;
  }

  dimension: receipt__custom {
    type: string
    sql: ${TABLE}.receipt__custom ;;
  }

  dimension: receipt__description {
    type: string
    sql: ${TABLE}.receipt__description ;;
  }

  dimension: receipt__device_details__card_has_chip {
    type: yesno
    sql: ${TABLE}.receipt__device_details__card_has_chip ;;
  }

  dimension: receipt__device_details__mode {
    type: string
    sql: ${TABLE}.receipt__device_details__mode ;;
  }

  dimension: receipt__device_details__name {
    type: string
    sql: ${TABLE}.receipt__device_details__name ;;
  }

  dimension: receipt__device_details__serial {
    type: string
    sql: ${TABLE}.receipt__device_details__serial ;;
  }

  dimension: receipt__discount {
    type: string
    sql: ${TABLE}.receipt__discount ;;
  }

  dimension: receipt__echeck_time_processed {
    type: string
    sql: ${TABLE}.receipt__echeck_time_processed ;;
  }

  dimension: receipt__error__charge {
    type: string
    sql: ${TABLE}.receipt__error__charge ;;
  }

  dimension: receipt__error__code {
    type: string
    sql: ${TABLE}.receipt__error__code ;;
  }

  dimension: receipt__error__decline_code {
    type: string
    sql: ${TABLE}.receipt__error__decline_code ;;
  }

  dimension: receipt__error__message {
    type: string
    sql: ${TABLE}.receipt__error__message ;;
  }

  dimension: receipt__error__param {
    type: string
    sql: ${TABLE}.receipt__error__param ;;
  }

  dimension: receipt__error__type {
    type: string
    sql: ${TABLE}.receipt__error__type ;;
  }

  dimension: receipt__error_code {
    type: string
    sql: ${TABLE}.receipt__error_code ;;
  }

  dimension: receipt__error_codes {
    type: string
    sql: ${TABLE}.receipt__error_codes ;;
  }

  dimension: receipt__errors__errorcode {
    type: string
    sql: ${TABLE}.receipt__errors__errorcode ;;
  }

  dimension: receipt__errors__longmessage {
    type: string
    sql: ${TABLE}.receipt__errors__longmessage ;;
  }

  dimension: receipt__errors__severitycode {
    type: string
    sql: ${TABLE}.receipt__errors__severitycode ;;
  }

  dimension: receipt__errors__shortmessage {
    type: string
    sql: ${TABLE}.receipt__errors__shortmessage ;;
  }

  dimension: receipt__exception {
    type: string
    sql: ${TABLE}.receipt__exception ;;
  }

  dimension: receipt__expectede_check_clear_date {
    type: string
    sql: ${TABLE}.receipt__expectede_check_clear_date ;;
  }

  dimension: receipt__fee_amount {
    type: number
    sql: ${TABLE}.receipt__fee_amount ;;
  }

  dimension: receipt__fee_amount_currency_id {
    type: string
    sql: ${TABLE}.receipt__fee_amount_currency_id ;;
  }

  dimension: receipt__fee_refund_amount {
    type: string
    sql: ${TABLE}.receipt__fee_refund_amount ;;
  }

  dimension: receipt__fee_refund_amount_currency_id {
    type: string
    sql: ${TABLE}.receipt__fee_refund_amount_currency_id ;;
  }

  dimension: receipt__feerefundamount {
    type: string
    sql: ${TABLE}.receipt__feerefundamount ;;
  }

  dimension: receipt__first_name {
    type: string
    sql: ${TABLE}.receipt__first_name ;;
  }

  dimension: receipt__gift_card_id {
    type: number
    sql: ${TABLE}.receipt__gift_card_id ;;
  }

  dimension: receipt__gift_card_last_characters {
    type: string
    sql: ${TABLE}.receipt__gift_card_last_characters ;;
  }

  dimension: receipt__gross_amount {
    type: number
    sql: ${TABLE}.receipt__gross_amount ;;
  }

  dimension: receipt__gross_amount_currency_id {
    type: string
    sql: ${TABLE}.receipt__gross_amount_currency_id ;;
  }

  dimension: receipt__gross_refund_amount {
    type: string
    sql: ${TABLE}.receipt__gross_refund_amount ;;
  }

  dimension: receipt__gross_refund_amount_currency_id {
    type: string
    sql: ${TABLE}.receipt__gross_refund_amount_currency_id ;;
  }

  dimension: receipt__grossrefundamount {
    type: string
    sql: ${TABLE}.receipt__grossrefundamount ;;
  }

  dimension: receipt__handling_amount {
    type: string
    sql: ${TABLE}.receipt__handling_amount ;;
  }

  dimension: receipt__high_risk {
    type: yesno
    sql: ${TABLE}.receipt__high_risk ;;
  }

  dimension: receipt__id {
    type: string
    sql: ${TABLE}.receipt__id ;;
  }

  dimension: receipt__insurance_amount {
    type: string
    sql: ${TABLE}.receipt__insurance_amount ;;
  }

  dimension: receipt__invoice {
    type: string
    sql: ${TABLE}.receipt__invoice ;;
  }

  dimension: receipt__ipn_track_id {
    type: string
    sql: ${TABLE}.receipt__ipn_track_id ;;
  }

  dimension: receipt__item_name {
    type: string
    sql: ${TABLE}.receipt__item_name ;;
  }

  dimension: receipt__item_name1 {
    type: string
    sql: ${TABLE}.receipt__item_name1 ;;
  }

  dimension: receipt__item_name10 {
    type: string
    sql: ${TABLE}.receipt__item_name10 ;;
  }

  dimension: receipt__item_name2 {
    type: string
    sql: ${TABLE}.receipt__item_name2 ;;
  }

  dimension: receipt__item_name3 {
    type: string
    sql: ${TABLE}.receipt__item_name3 ;;
  }

  dimension: receipt__item_name4 {
    type: string
    sql: ${TABLE}.receipt__item_name4 ;;
  }

  dimension: receipt__item_name5 {
    type: string
    sql: ${TABLE}.receipt__item_name5 ;;
  }

  dimension: receipt__item_name6 {
    type: string
    sql: ${TABLE}.receipt__item_name6 ;;
  }

  dimension: receipt__item_name7 {
    type: string
    sql: ${TABLE}.receipt__item_name7 ;;
  }

  dimension: receipt__item_name8 {
    type: string
    sql: ${TABLE}.receipt__item_name8 ;;
  }

  dimension: receipt__item_name9 {
    type: string
    sql: ${TABLE}.receipt__item_name9 ;;
  }

  dimension: receipt__item_number {
    type: string
    sql: ${TABLE}.receipt__item_number ;;
  }

  dimension: receipt__item_number1 {
    type: string
    sql: ${TABLE}.receipt__item_number1 ;;
  }

  dimension: receipt__item_number10 {
    type: string
    sql: ${TABLE}.receipt__item_number10 ;;
  }

  dimension: receipt__item_number2 {
    type: string
    sql: ${TABLE}.receipt__item_number2 ;;
  }

  dimension: receipt__item_number3 {
    type: string
    sql: ${TABLE}.receipt__item_number3 ;;
  }

  dimension: receipt__item_number4 {
    type: string
    sql: ${TABLE}.receipt__item_number4 ;;
  }

  dimension: receipt__item_number5 {
    type: string
    sql: ${TABLE}.receipt__item_number5 ;;
  }

  dimension: receipt__item_number6 {
    type: string
    sql: ${TABLE}.receipt__item_number6 ;;
  }

  dimension: receipt__item_number7 {
    type: string
    sql: ${TABLE}.receipt__item_number7 ;;
  }

  dimension: receipt__item_number8 {
    type: string
    sql: ${TABLE}.receipt__item_number8 ;;
  }

  dimension: receipt__item_number9 {
    type: string
    sql: ${TABLE}.receipt__item_number9 ;;
  }

  dimension: receipt__last_name {
    type: string
    sql: ${TABLE}.receipt__last_name ;;
  }

  dimension: receipt__livemode {
    type: yesno
    sql: ${TABLE}.receipt__livemode ;;
  }

  dimension: receipt__mc_currency {
    type: string
    sql: ${TABLE}.receipt__mc_currency ;;
  }

  dimension: receipt__mc_fee {
    type: string
    sql: ${TABLE}.receipt__mc_fee ;;
  }

  dimension: receipt__mc_gross {
    type: string
    sql: ${TABLE}.receipt__mc_gross ;;
  }

  dimension: receipt__mc_gross_1 {
    type: string
    sql: ${TABLE}.receipt__mc_gross_1 ;;
  }

  dimension: receipt__mc_gross_10 {
    type: string
    sql: ${TABLE}.receipt__mc_gross_10 ;;
  }

  dimension: receipt__mc_gross_2 {
    type: string
    sql: ${TABLE}.receipt__mc_gross_2 ;;
  }

  dimension: receipt__mc_gross_3 {
    type: string
    sql: ${TABLE}.receipt__mc_gross_3 ;;
  }

  dimension: receipt__mc_gross_4 {
    type: string
    sql: ${TABLE}.receipt__mc_gross_4 ;;
  }

  dimension: receipt__mc_gross_5 {
    type: string
    sql: ${TABLE}.receipt__mc_gross_5 ;;
  }

  dimension: receipt__mc_gross_6 {
    type: string
    sql: ${TABLE}.receipt__mc_gross_6 ;;
  }

  dimension: receipt__mc_gross_7 {
    type: string
    sql: ${TABLE}.receipt__mc_gross_7 ;;
  }

  dimension: receipt__mc_gross_8 {
    type: string
    sql: ${TABLE}.receipt__mc_gross_8 ;;
  }

  dimension: receipt__mc_gross_9 {
    type: string
    sql: ${TABLE}.receipt__mc_gross_9 ;;
  }

  dimension: receipt__mc_handling {
    type: string
    sql: ${TABLE}.receipt__mc_handling ;;
  }

  dimension: receipt__mc_handling1 {
    type: string
    sql: ${TABLE}.receipt__mc_handling1 ;;
  }

  dimension: receipt__mc_handling10 {
    type: string
    sql: ${TABLE}.receipt__mc_handling10 ;;
  }

  dimension: receipt__mc_handling2 {
    type: string
    sql: ${TABLE}.receipt__mc_handling2 ;;
  }

  dimension: receipt__mc_handling3 {
    type: string
    sql: ${TABLE}.receipt__mc_handling3 ;;
  }

  dimension: receipt__mc_handling4 {
    type: string
    sql: ${TABLE}.receipt__mc_handling4 ;;
  }

  dimension: receipt__mc_handling5 {
    type: string
    sql: ${TABLE}.receipt__mc_handling5 ;;
  }

  dimension: receipt__mc_handling6 {
    type: string
    sql: ${TABLE}.receipt__mc_handling6 ;;
  }

  dimension: receipt__mc_handling7 {
    type: string
    sql: ${TABLE}.receipt__mc_handling7 ;;
  }

  dimension: receipt__mc_handling8 {
    type: string
    sql: ${TABLE}.receipt__mc_handling8 ;;
  }

  dimension: receipt__mc_handling9 {
    type: string
    sql: ${TABLE}.receipt__mc_handling9 ;;
  }

  dimension: receipt__mc_shipping {
    type: string
    sql: ${TABLE}.receipt__mc_shipping ;;
  }

  dimension: receipt__mc_shipping1 {
    type: string
    sql: ${TABLE}.receipt__mc_shipping1 ;;
  }

  dimension: receipt__mc_shipping10 {
    type: string
    sql: ${TABLE}.receipt__mc_shipping10 ;;
  }

  dimension: receipt__mc_shipping2 {
    type: string
    sql: ${TABLE}.receipt__mc_shipping2 ;;
  }

  dimension: receipt__mc_shipping3 {
    type: string
    sql: ${TABLE}.receipt__mc_shipping3 ;;
  }

  dimension: receipt__mc_shipping4 {
    type: string
    sql: ${TABLE}.receipt__mc_shipping4 ;;
  }

  dimension: receipt__mc_shipping5 {
    type: string
    sql: ${TABLE}.receipt__mc_shipping5 ;;
  }

  dimension: receipt__mc_shipping6 {
    type: string
    sql: ${TABLE}.receipt__mc_shipping6 ;;
  }

  dimension: receipt__mc_shipping7 {
    type: string
    sql: ${TABLE}.receipt__mc_shipping7 ;;
  }

  dimension: receipt__mc_shipping8 {
    type: string
    sql: ${TABLE}.receipt__mc_shipping8 ;;
  }

  dimension: receipt__mc_shipping9 {
    type: string
    sql: ${TABLE}.receipt__mc_shipping9 ;;
  }

  dimension: receipt__memo {
    type: string
    sql: ${TABLE}.receipt__memo ;;
  }

  dimension: receipt__message {
    type: string
    sql: ${TABLE}.receipt__message ;;
  }

  dimension: receipt__metadata__email {
    type: string
    sql: ${TABLE}.receipt__metadata__email ;;
  }

  dimension: receipt__metadata__order_id {
    type: string
    sql: ${TABLE}.receipt__metadata__order_id ;;
  }

  dimension: receipt__metadata__payments_refund_id {
    type: string
    sql: ${TABLE}.receipt__metadata__payments_refund_id ;;
  }

  dimension: receipt__metadata__shop_name {
    type: string
    sql: ${TABLE}.receipt__metadata__shop_name ;;
  }

  dimension: receipt__metadata__transaction_fee_tax_amount {
    type: string
    sql: ${TABLE}.receipt__metadata__transaction_fee_tax_amount ;;
  }

  dimension: receipt__metadata__transaction_fee_total_amount {
    type: string
    sql: ${TABLE}.receipt__metadata__transaction_fee_total_amount ;;
  }

  dimension: receipt__net_refund_amount {
    type: string
    sql: ${TABLE}.receipt__net_refund_amount ;;
  }

  dimension: receipt__net_refund_amount_currency_id {
    type: string
    sql: ${TABLE}.receipt__net_refund_amount_currency_id ;;
  }

  dimension: receipt__netrefundamount {
    type: string
    sql: ${TABLE}.receipt__netrefundamount ;;
  }

  dimension: receipt__notify_version {
    type: string
    sql: ${TABLE}.receipt__notify_version ;;
  }

  dimension: receipt__num_cart_items {
    type: string
    sql: ${TABLE}.receipt__num_cart_items ;;
  }

  dimension: receipt__num_offers {
    type: string
    sql: ${TABLE}.receipt__num_offers ;;
  }

  dimension: receipt__object {
    type: string
    sql: ${TABLE}.receipt__object ;;
  }

  dimension: receipt__offer_amount1 {
    type: string
    sql: ${TABLE}.receipt__offer_amount1 ;;
  }

  dimension: receipt__offer_curreny1 {
    type: string
    sql: ${TABLE}.receipt__offer_curreny1 ;;
  }

  dimension: receipt__offer_id1 {
    type: string
    sql: ${TABLE}.receipt__offer_id1 ;;
  }

  dimension: receipt__paid {
    type: yesno
    sql: ${TABLE}.receipt__paid ;;
  }

  dimension: receipt__pay_pal_account_id {
    type: string
    sql: ${TABLE}.receipt__pay_pal_account_id ;;
  }

  dimension: receipt__payer_business_name {
    type: string
    sql: ${TABLE}.receipt__payer_business_name ;;
  }

  dimension: receipt__payer_email {
    type: string
    sql: ${TABLE}.receipt__payer_email ;;
  }

  dimension: receipt__payer_id {
    type: string
    sql: ${TABLE}.receipt__payer_id ;;
  }

  dimension: receipt__payer_status {
    type: string
    sql: ${TABLE}.receipt__payer_status ;;
  }

  dimension_group: receipt__payment_date__inst {
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
    sql: ${TABLE}.receipt__payment_date__inst ;;
  }

  dimension: receipt__payment_date__string {
    type: string
    sql: ${TABLE}.receipt__payment_date__string ;;
  }

  dimension: receipt__payment_fee {
    type: string
    sql: ${TABLE}.receipt__payment_fee ;;
  }

  dimension: receipt__payment_gross {
    type: string
    sql: ${TABLE}.receipt__payment_gross ;;
  }

  dimension: receipt__payment_status {
    type: string
    sql: ${TABLE}.receipt__payment_status ;;
  }

  dimension: receipt__payment_type {
    type: string
    sql: ${TABLE}.receipt__payment_type ;;
  }

  dimension: receipt__paymentinfo__expectedecheckcleardate {
    type: string
    sql: ${TABLE}.receipt__paymentinfo__expectedecheckcleardate ;;
  }

  dimension: receipt__paymentinfo__feeamount {
    type: number
    sql: ${TABLE}.receipt__paymentinfo__feeamount ;;
  }

  dimension: receipt__paymentinfo__grossamount {
    type: number
    sql: ${TABLE}.receipt__paymentinfo__grossamount ;;
  }

  dimension: receipt__paymentinfo__parenttransactionid {
    type: string
    sql: ${TABLE}.receipt__paymentinfo__parenttransactionid ;;
  }

  dimension_group: receipt__paymentinfo__paymentdate {
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
    sql: ${TABLE}.receipt__paymentinfo__paymentdate ;;
  }

  dimension: receipt__paymentinfo__paymentstatus {
    type: string
    sql: ${TABLE}.receipt__paymentinfo__paymentstatus ;;
  }

  dimension: receipt__paymentinfo__paymenttype {
    type: string
    sql: ${TABLE}.receipt__paymentinfo__paymenttype ;;
  }

  dimension: receipt__paymentinfo__pendingreason {
    type: string
    sql: ${TABLE}.receipt__paymentinfo__pendingreason ;;
  }

  dimension: receipt__paymentinfo__protectioneligibility {
    type: string
    sql: ${TABLE}.receipt__paymentinfo__protectioneligibility ;;
  }

  dimension: receipt__paymentinfo__protectioneligibilitytype {
    type: string
    sql: ${TABLE}.receipt__paymentinfo__protectioneligibilitytype ;;
  }

  dimension: receipt__paymentinfo__reasoncode {
    type: string
    sql: ${TABLE}.receipt__paymentinfo__reasoncode ;;
  }

  dimension: receipt__paymentinfo__receiptid {
    type: string
    sql: ${TABLE}.receipt__paymentinfo__receiptid ;;
  }

  dimension: receipt__paymentinfo__sellerdetails__paypalaccountid {
    type: string
    sql: ${TABLE}.receipt__paymentinfo__sellerdetails__paypalaccountid ;;
  }

  dimension: receipt__paymentinfo__sellerdetails__securemerchantaccountid {
    type: string
    sql: ${TABLE}.receipt__paymentinfo__sellerdetails__securemerchantaccountid ;;
  }

  dimension: receipt__paymentinfo__taxamount {
    type: number
    sql: ${TABLE}.receipt__paymentinfo__taxamount ;;
  }

  dimension: receipt__paymentinfo__transactionid {
    type: string
    sql: ${TABLE}.receipt__paymentinfo__transactionid ;;
  }

  dimension: receipt__paymentinfo__transactiontype {
    type: string
    sql: ${TABLE}.receipt__paymentinfo__transactiontype ;;
  }

  dimension: receipt__pending_reason {
    type: string
    sql: ${TABLE}.receipt__pending_reason ;;
  }

  dimension: receipt__protection_eligibility {
    type: string
    sql: ${TABLE}.receipt__protection_eligibility ;;
  }

  dimension: receipt__protection_eligibility_type {
    type: string
    sql: ${TABLE}.receipt__protection_eligibility_type ;;
  }

  dimension: receipt__quantity {
    type: string
    sql: ${TABLE}.receipt__quantity ;;
  }

  dimension: receipt__quantity1 {
    type: string
    sql: ${TABLE}.receipt__quantity1 ;;
  }

  dimension: receipt__quantity10 {
    type: string
    sql: ${TABLE}.receipt__quantity10 ;;
  }

  dimension: receipt__quantity2 {
    type: string
    sql: ${TABLE}.receipt__quantity2 ;;
  }

  dimension: receipt__quantity3 {
    type: string
    sql: ${TABLE}.receipt__quantity3 ;;
  }

  dimension: receipt__quantity4 {
    type: string
    sql: ${TABLE}.receipt__quantity4 ;;
  }

  dimension: receipt__quantity5 {
    type: string
    sql: ${TABLE}.receipt__quantity5 ;;
  }

  dimension: receipt__quantity6 {
    type: string
    sql: ${TABLE}.receipt__quantity6 ;;
  }

  dimension: receipt__quantity7 {
    type: string
    sql: ${TABLE}.receipt__quantity7 ;;
  }

  dimension: receipt__quantity8 {
    type: string
    sql: ${TABLE}.receipt__quantity8 ;;
  }

  dimension: receipt__quantity9 {
    type: string
    sql: ${TABLE}.receipt__quantity9 ;;
  }

  dimension: receipt__reason_code {
    type: string
    sql: ${TABLE}.receipt__reason_code ;;
  }

  dimension: receipt__receipt_id {
    type: string
    sql: ${TABLE}.receipt__receipt_id ;;
  }

  dimension: receipt__receiver_email {
    type: string
    sql: ${TABLE}.receipt__receiver_email ;;
  }

  dimension: receipt__receiver_id {
    type: string
    sql: ${TABLE}.receipt__receiver_id ;;
  }

  dimension: receipt__redirect_required {
    type: string
    sql: ${TABLE}.receipt__redirect_required ;;
  }

  dimension: receipt__redirectrequired {
    type: string
    sql: ${TABLE}.receipt__redirectrequired ;;
  }

  dimension: receipt__refund_status {
    type: string
    sql: ${TABLE}.receipt__refund_status ;;
  }

  dimension: receipt__refund_transaction_id {
    type: string
    sql: ${TABLE}.receipt__refund_transaction_id ;;
  }

  dimension: receipt__refunded {
    type: yesno
    sql: ${TABLE}.receipt__refunded ;;
  }

  dimension: receipt__refundinfo__pendingreason {
    type: string
    sql: ${TABLE}.receipt__refundinfo__pendingreason ;;
  }

  dimension: receipt__refundinfo__refundstatus {
    type: string
    sql: ${TABLE}.receipt__refundinfo__refundstatus ;;
  }

  dimension: receipt__refunds__has_more {
    type: yesno
    sql: ${TABLE}.receipt__refunds__has_more ;;
  }

  dimension: receipt__refunds__object {
    type: string
    sql: ${TABLE}.receipt__refunds__object ;;
  }

  dimension: receipt__refunds__total_count {
    type: number
    sql: ${TABLE}.receipt__refunds__total_count ;;
  }

  dimension: receipt__refunds__url {
    type: string
    sql: ${TABLE}.receipt__refunds__url ;;
  }

  dimension: receipt__refundtransactionid {
    type: string
    sql: ${TABLE}.receipt__refundtransactionid ;;
  }

  dimension: receipt__residence_country {
    type: string
    sql: ${TABLE}.receipt__residence_country ;;
  }

  dimension: receipt__response_code {
    type: number
    sql: ${TABLE}.receipt__response_code ;;
  }

  dimension: receipt__response_reason_code {
    type: string
    sql: ${TABLE}.receipt__response_reason_code ;;
  }

  dimension: receipt__response_reason_text {
    type: string
    sql: ${TABLE}.receipt__response_reason_text ;;
  }

  dimension: receipt__secure_merchant_account_id {
    type: string
    sql: ${TABLE}.receipt__secure_merchant_account_id ;;
  }

  dimension: receipt__shipping {
    type: string
    sql: ${TABLE}.receipt__shipping ;;
  }

  dimension: receipt__shipping_discount {
    type: string
    sql: ${TABLE}.receipt__shipping_discount ;;
  }

  dimension: receipt__shipping_method {
    type: string
    sql: ${TABLE}.receipt__shipping_method ;;
  }

  dimension: receipt__source__address_city {
    type: string
    sql: ${TABLE}.receipt__source__address_city ;;
  }

  dimension: receipt__source__address_country {
    type: string
    sql: ${TABLE}.receipt__source__address_country ;;
  }

  dimension: receipt__source__address_line1 {
    type: string
    sql: ${TABLE}.receipt__source__address_line1 ;;
  }

  dimension: receipt__source__address_line1_check {
    type: string
    sql: ${TABLE}.receipt__source__address_line1_check ;;
  }

  dimension: receipt__source__address_line2 {
    type: string
    sql: ${TABLE}.receipt__source__address_line2 ;;
  }

  dimension: receipt__source__address_state {
    type: string
    sql: ${TABLE}.receipt__source__address_state ;;
  }

  dimension: receipt__source__address_zip {
    type: string
    sql: ${TABLE}.receipt__source__address_zip ;;
  }

  dimension: receipt__source__address_zip_check {
    type: string
    sql: ${TABLE}.receipt__source__address_zip_check ;;
  }

  dimension: receipt__source__brand {
    type: string
    sql: ${TABLE}.receipt__source__brand ;;
  }

  dimension: receipt__source__country {
    type: string
    sql: ${TABLE}.receipt__source__country ;;
  }

  dimension: receipt__source__cvc_check {
    type: string
    sql: ${TABLE}.receipt__source__cvc_check ;;
  }

  dimension: receipt__source__exp_month {
    type: number
    sql: ${TABLE}.receipt__source__exp_month ;;
  }

  dimension: receipt__source__exp_year {
    type: number
    sql: ${TABLE}.receipt__source__exp_year ;;
  }

  dimension: receipt__source__fingerprint {
    type: string
    sql: ${TABLE}.receipt__source__fingerprint ;;
  }

  dimension: receipt__source__funding {
    type: string
    sql: ${TABLE}.receipt__source__funding ;;
  }

  dimension: receipt__source__id {
    type: string
    sql: ${TABLE}.receipt__source__id ;;
  }

  dimension: receipt__source__last4 {
    type: string
    sql: ${TABLE}.receipt__source__last4 ;;
  }

  dimension: receipt__source__name {
    type: string
    sql: ${TABLE}.receipt__source__name ;;
  }

  dimension: receipt__source__object {
    type: string
    sql: ${TABLE}.receipt__source__object ;;
  }

  dimension: receipt__source__type {
    type: string
    sql: ${TABLE}.receipt__source__type ;;
  }

  dimension: receipt__status {
    type: string
    sql: ${TABLE}.receipt__status ;;
  }

  dimension: receipt__success_page_redirect_requested {
    type: string
    sql: ${TABLE}.receipt__success_page_redirect_requested ;;
  }

  dimension: receipt__successpageredirectrequested {
    type: string
    sql: ${TABLE}.receipt__successpageredirectrequested ;;
  }

  dimension: receipt__tax {
    type: string
    sql: ${TABLE}.receipt__tax ;;
  }

  dimension: receipt__tax1 {
    type: string
    sql: ${TABLE}.receipt__tax1 ;;
  }

  dimension: receipt__tax10 {
    type: string
    sql: ${TABLE}.receipt__tax10 ;;
  }

  dimension: receipt__tax2 {
    type: string
    sql: ${TABLE}.receipt__tax2 ;;
  }

  dimension: receipt__tax3 {
    type: string
    sql: ${TABLE}.receipt__tax3 ;;
  }

  dimension: receipt__tax4 {
    type: string
    sql: ${TABLE}.receipt__tax4 ;;
  }

  dimension: receipt__tax5 {
    type: string
    sql: ${TABLE}.receipt__tax5 ;;
  }

  dimension: receipt__tax6 {
    type: string
    sql: ${TABLE}.receipt__tax6 ;;
  }

  dimension: receipt__tax7 {
    type: string
    sql: ${TABLE}.receipt__tax7 ;;
  }

  dimension: receipt__tax8 {
    type: string
    sql: ${TABLE}.receipt__tax8 ;;
  }

  dimension: receipt__tax9 {
    type: string
    sql: ${TABLE}.receipt__tax9 ;;
  }

  dimension: receipt__tax_amount {
    type: number
    sql: ${TABLE}.receipt__tax_amount ;;
  }

  dimension: receipt__tax_amount_currency_id {
    type: string
    sql: ${TABLE}.receipt__tax_amount_currency_id ;;
  }

  dimension: receipt__test_request {
    type: string
    sql: ${TABLE}.receipt__test_request ;;
  }

  dimension_group: receipt__timestamp {
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
    sql: ${TABLE}.receipt__timestamp ;;
  }

  dimension: receipt__token {
    type: string
    sql: ${TABLE}.receipt__token ;;
  }

  dimension: receipt__total_refunded_amount {
    type: string
    sql: ${TABLE}.receipt__total_refunded_amount ;;
  }

  dimension: receipt__total_refunded_amount_currency_id {
    type: string
    sql: ${TABLE}.receipt__total_refunded_amount_currency_id ;;
  }

  dimension: receipt__totalrefundedamount {
    type: string
    sql: ${TABLE}.receipt__totalrefundedamount ;;
  }

  dimension: receipt__transaction_id {
    type: string
    sql: ${TABLE}.receipt__transaction_id ;;
  }

  dimension: receipt__transaction_subject {
    type: string
    sql: ${TABLE}.receipt__transaction_subject ;;
  }

  dimension: receipt__transaction_type {
    type: string
    sql: ${TABLE}.receipt__transaction_type ;;
  }

  dimension: receipt__txn_id {
    type: string
    sql: ${TABLE}.receipt__txn_id ;;
  }

  dimension: receipt__txn_type {
    type: string
    sql: ${TABLE}.receipt__txn_type ;;
  }

  dimension: receipt__verify_sign {
    type: string
    sql: ${TABLE}.receipt__verify_sign ;;
  }

  dimension: receipt__version {
    type: string
    sql: ${TABLE}.receipt__version ;;
  }

  dimension: receipt__x_account_id {
    type: string
    sql: ${TABLE}.receipt__x_account_id ;;
  }

  dimension: receipt__x_amount {
    type: string
    sql: ${TABLE}.receipt__x_amount ;;
  }

  dimension: receipt__x_currency {
    type: string
    sql: ${TABLE}.receipt__x_currency ;;
  }

  dimension: receipt__x_gateway_reference {
    type: string
    sql: ${TABLE}.receipt__x_gateway_reference ;;
  }

  dimension: receipt__x_reference {
    type: string
    sql: ${TABLE}.receipt__x_reference ;;
  }

  dimension: receipt__x_result {
    type: string
    sql: ${TABLE}.receipt__x_result ;;
  }

  dimension: receipt__x_signature {
    type: string
    sql: ${TABLE}.receipt__x_signature ;;
  }

  dimension: receipt__x_test {
    type: string
    sql: ${TABLE}.receipt__x_test ;;
  }

  dimension: receipt__x_timestamp {
    type: string
    sql: ${TABLE}.receipt__x_timestamp ;;
  }

  dimension: signature__filename {
    type: string
    sql: ${TABLE}.signature__filename ;;
  }

  dimension: signature__id {
    type: number
    sql: ${TABLE}.signature__id ;;
  }

  dimension: signature__url {
    type: string
    sql: ${TABLE}.signature__url ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: test {
    type: yesno
    sql: ${TABLE}.test ;;
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
      receipt__parent_transaction_id,
      receipt__source__name,
      source_name,
      signature__filename,
      receipt__card__name,
      receipt__charge__source__name,
      receipt__metadata__shop_name,
      receipt__device_details__name,
      receipt__payer_business_name,
      receipt__address_name,
      receipt__last_name,
      receipt__first_name,
      receipt__item_name,
      orders.billing_address__first_name,
      orders.billing_address__last_name,
      orders.billing_address__name,
      orders.customer__default_address__country_name,
      orders.customer__default_address__first_name,
      orders.customer__default_address__last_name,
      orders.customer__default_address__name,
      orders.customer__first_name,
      orders.customer__last_name,
      orders.customer__last_order_name,
      orders.id,
      orders.name,
      orders.shipping_address__first_name,
      orders.shipping_address__last_name,
      orders.shipping_address__name,
      orders.source_name
    ]
  }
}