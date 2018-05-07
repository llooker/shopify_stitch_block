- dashboard: ecommerce_overview
  title: eCommerce Overview
  layout: newspaper
  elements:
  - name: Map - Total Orders
    title: Map - Total Orders
    model: shopify
    explore: orders
    type: looker_map
    fields:
    - orders.shipping_location
    - orders.total_order_revenue
    sorts:
    - orders.shipping_location
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: imperial
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: log
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    map_marker_color:
    - "#5F8D3D"
    - "#87877B"
    - "#0D77D1"
    - "#57BEBE"
    - "#7F7977"
    - "#B2A898"
    - "#494C52"
    map_latitude: -35.66172455173687
    map_longitude: 39.39538478851319
    map_zoom: 2
    map_marker_radius_max: 8
    row: 0
    col: 10
    width: 14
    height: 10
  - name: Total Orders Trend YoY
    title: Total Orders Trend YoY
    model: shopify
    explore: orders
    type: looker_line
    fields:
    - orders.created_month_num
    - orders.created_year
    - orders.total_order_revenue
    pivots:
    - orders.created_year
    filters:
      orders.created_year: 2 years
      orders.is_before_mtd: 'Yes'
      products.product_type: "-NULL,-EMPTY"
    sorts:
    - orders.created_year 0
    - orders.created_month_num
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: circle_outline
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types:
      2016 - orders.total_order: area
    focus_on_hover: false
    colors:
    - 'palette: Mixed Dark'
    series_colors:
      2016 - orders.total_order: "#3e4549"
      2017 - orders.total_order: "#5F8D3D"
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: '2016'
        name: '2016'
      - id: '2017'
        name: '2017'
    row: 17
    col: 0
    width: 14
    height: 9
  - name: Top 10 Products
    title: Top 10 Products
    model: shopify
    explore: orders
    type: table
    fields:
    - products.product_image
    - products.product_type
    - products.title
    - products.vendor
    - orders.created_month
    pivots:
    - orders.created_month
    fill_fields:
    - orders.created_month
    sorts:
    - orders.created_month
    - products.product_image
    limit: 100
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: true
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: true
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#ffffff"
        - "#e9f4de"
        - "#b2f4d5"
      bold: false
      italic: false
      strikethrough: false
    series_labels: {}
    row: 17
    col: 14
    width: 10
    height: 19
  - name: Orders MoM
    title: Orders MoM
    model: shopify
    explore: orders
    type: single_value
    fields:
    - orders.created_month
    - orders.total_order_revenue
    fill_fields:
    - orders.created_month
    filters:
      orders.confirmed: 'Yes'
      orders.is_before_mtd: 'Yes'
    sorts:
    - orders.created_month desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: previous_months
      label: Previous Months
      expression: "${orders.total_order_revenue}/offset(${orders.total_order_revenue},1)-1"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 7
    col: 0
    width: 10
    height: 3
  - name: Last 100 Orders
    title: Last 100 Orders
    model: shopify
    explore: orders
    type: table
    fields:
    - orders.shipping_first_name
    - orders.shipping_last_name
    - orders.order_number
    - orders.shipping_city
    - orders.shipping_country
    - orders.total_price_usd
    - orders.total_weight
    - orders.total_order_revenue
    - orders.created_date
    - orders__line_items.name
    - products.product_image
    - customers.total_spent_per_customer
    sorts:
    - orders.created_date desc
    limit: 100
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: true
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    row: 36
    col: 0
    width: 24
    height: 34
  - name: Top 20 Customers of all time
    title: Top 20 Customers of all time
    model: shopify
    explore: orders
    type: looker_bar
    fields:
    - customers.total_spent
    - customers.first_name
    sorts:
    - customers.total_spent desc
    limit: 20
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: true
    y_axis_gridlines: false
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: customers.total_spent
        name: Customers Total Spent
    x_axis_datetime_tick_count:
    series_colors:
      customers.total_spent: "#5F8D3D"
    row: 26
    col: 0
    width: 14
    height: 10
  - name: Average Spent
    title: Average Spent
    model: shopify
    explore: orders
    type: single_value
    fields:
    - orders.created_month
    - customers.total_spent
    fill_fields:
    - orders.created_month
    sorts:
    - orders.created_month desc
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 4
    col: 0
    width: 10
    height: 3
  - name: Trend Sales by Product Category
    title: Trend Sales by Product Category
    model: shopify
    explore: orders
    type: looker_area
    fields:
    - products.product_type
    - orders.created_month
    - orders.total_order_revenue
    pivots:
    - products.product_type
    filters:
      orders.cancelled_flag: ''
      orders.is_before_mtd: 'Yes'
      products.product_type: "-NULL,-EMPTY"
    sorts:
    - products.product_type 0
    - orders.created_month
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: circle_outline
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    focus_on_hover: false
    colors:
    - 'palette: Santa Cruz'
    series_colors:
      Inkbox Tattoo - orders.total_order: "#5F8D3D"
      InkBottle - orders.total_order: "#424449"
      Custom Tattoo - orders.total_order: "#ff1214"
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: '2016'
        name: '2016'
      - id: '2017'
        name: '2017'
    row: 10
    col: 0
    width: 24
    height: 7
  - name: Logo
    type: text
    title_text: <img src="https://upload.wikimedia.org/wikipedia/commons/e/e1/Shopify_Logo.png"
      width=100% height=100%>
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 10
    height: 4
