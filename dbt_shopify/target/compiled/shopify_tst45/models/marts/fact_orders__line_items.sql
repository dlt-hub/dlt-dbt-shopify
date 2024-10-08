/* Fact Table: orders__line_items */


SELECT
    ---- main table orders__line_items
    orders__line_items._dlt_id,
    orders__line_items.id,
    orders__line_items.admin_graphql_api_id,
    orders__line_items.fulfillable_quantity,
    orders__line_items.fulfillment_service,
    orders__line_items.fulfillment_status,
    orders__line_items.gift_card,
    orders__line_items.grams,
    orders__line_items.name,
    orders__line_items.price,
    orders__line_items.price_set__shop_money__amount,
    orders__line_items.price_set__shop_money__currency_code,
    orders__line_items.price_set__presentment_money__amount,
    orders__line_items.price_set__presentment_money__currency_code,
    orders__line_items.product_exists,
    orders__line_items.product_id,
    orders__line_items.quantity,
    orders__line_items.requires_shipping,
    orders__line_items.sku,
    orders__line_items.taxable,
    orders__line_items.title,
    orders__line_items.total_discount,
    orders__line_items.total_discount_set__shop_money__amount,
    orders__line_items.total_discount_set__shop_money__currency_code,
    orders__line_items.total_discount_set__presentment_money__amount,
    orders__line_items.total_discount_set__presentment_money__currency_code,
    orders__line_items.variant_id,
    orders__line_items.variant_title,
    orders__line_items.vendor,
    orders__line_items.variant_inventory_management,
 
    
    ---- dim table products via products__product_id
    products__product_id.id as products__product_id__id,
    -- products__product_id.title as products__product_id__title,
    -- products__product_id.vendor as products__product_id__vendor,
    -- products__product_id.product_type as products__product_id__product_type,
    -- products__product_id.created_at as products__product_id__created_at,
    -- products__product_id.handle as products__product_id__handle,
    -- products__product_id.updated_at as products__product_id__updated_at,
    -- products__product_id.published_scope as products__product_id__published_scope,
    -- products__product_id.tags as products__product_id__tags,
    -- products__product_id.status as products__product_id__status,
    -- products__product_id.admin_graphql_api_id as products__product_id__admin_graphql_api_id,
    -- products__product_id.image__id as products__product_id__image__id,
    -- products__product_id.image__alt as products__product_id__image__alt,
    -- products__product_id.image__position as products__product_id__image__position,
    -- products__product_id.image__product_id as products__product_id__image__product_id,
    -- products__product_id.image__created_at as products__product_id__image__created_at,
    -- products__product_id.image__updated_at as products__product_id__image__updated_at,
    -- products__product_id.image__admin_graphql_api_id as products__product_id__image__admin_graphql_api_id,
    -- products__product_id.image__width as products__product_id__image__width,
    -- products__product_id.image__height as products__product_id__image__height,
    -- products__product_id.image__src as products__product_id__image__src,
    -- products__product_id.published_at as products__product_id__published_at,
    -- products__product_id.body_html as products__product_id__body_html,
    
    ---- dim table products__variants via products__variants__variant_id
    products__variants__variant_id.id as products__variants__variant_id__id,
    -- products__variants__variant_id.product_id as products__variants__variant_id__product_id,
    -- products__variants__variant_id.title as products__variants__variant_id__title,
    -- products__variants__variant_id.price as products__variants__variant_id__price,
    -- products__variants__variant_id.position as products__variants__variant_id__position,
    -- products__variants__variant_id.inventory_policy as products__variants__variant_id__inventory_policy,
    -- products__variants__variant_id.option1 as products__variants__variant_id__option1,
    -- products__variants__variant_id.created_at as products__variants__variant_id__created_at,
    -- products__variants__variant_id.updated_at as products__variants__variant_id__updated_at,
    -- products__variants__variant_id.taxable as products__variants__variant_id__taxable,
    -- products__variants__variant_id.fulfillment_service as products__variants__variant_id__fulfillment_service,
    -- products__variants__variant_id.grams as products__variants__variant_id__grams,
    -- products__variants__variant_id.inventory_management as products__variants__variant_id__inventory_management,
    -- products__variants__variant_id.requires_shipping as products__variants__variant_id__requires_shipping,
    -- products__variants__variant_id.sku as products__variants__variant_id__sku,
    -- products__variants__variant_id.weight as products__variants__variant_id__weight,
    -- products__variants__variant_id.weight_unit as products__variants__variant_id__weight_unit,
    -- products__variants__variant_id.inventory_item_id as products__variants__variant_id__inventory_item_id,
    -- products__variants__variant_id.inventory_quantity as products__variants__variant_id__inventory_quantity,
    -- products__variants__variant_id.old_inventory_quantity as products__variants__variant_id__old_inventory_quantity,
    -- products__variants__variant_id.admin_graphql_api_id as products__variants__variant_id__admin_graphql_api_id,
    -- products__variants__variant_id.image_id as products__variants__variant_id__image_id,
    -- products__variants__variant_id.compare_at_price as products__variants__variant_id__compare_at_price,
    
    ---- dim table products via products__product_id__products__variants__variant_id
    products__product_id__products__variants__variant_id.id as products__product_id__products__variants__variant_id__id,
    -- products__product_id__products__variants__variant_id.title as products__product_id__products__variants__variant_id__title,
    -- products__product_id__products__variants__variant_id.vendor as products__product_id__products__variants__variant_id__vendor,
    -- products__product_id__products__variants__variant_id.product_type as products__product_id__products__variants__variant_id__product_type,
    -- products__product_id__products__variants__variant_id.created_at as products__product_id__products__variants__variant_id__created_at,
    -- products__product_id__products__variants__variant_id.handle as products__product_id__products__variants__variant_id__handle,
    -- products__product_id__products__variants__variant_id.updated_at as products__product_id__products__variants__variant_id__updated_at,
    -- products__product_id__products__variants__variant_id.published_scope as products__product_id__products__variants__variant_id__published_scope,
    -- products__product_id__products__variants__variant_id.tags as products__product_id__products__variants__variant_id__tags,
    -- products__product_id__products__variants__variant_id.status as products__product_id__products__variants__variant_id__status,
    -- products__product_id__products__variants__variant_id.admin_graphql_api_id as products__product_id__products__variants__variant_id__admin_graphql_api_id,
    -- products__product_id__products__variants__variant_id.image__id as products__product_id__products__variants__variant_id__image__id,
    -- products__product_id__products__variants__variant_id.image__alt as products__product_id__products__variants__variant_id__image__alt,
    -- products__product_id__products__variants__variant_id.image__position as products__product_id__products__variants__variant_id__image__position,
    -- products__product_id__products__variants__variant_id.image__product_id as products__product_id__products__variants__variant_id__image__product_id,
    -- products__product_id__products__variants__variant_id.image__created_at as products__product_id__products__variants__variant_id__image__created_at,
    -- products__product_id__products__variants__variant_id.image__updated_at as products__product_id__products__variants__variant_id__image__updated_at,
    -- products__product_id__products__variants__variant_id.image__admin_graphql_api_id as products__product_id__products__variants__variant_id__image__admin_graphql_api_id,
    -- products__product_id__products__variants__variant_id.image__width as products__product_id__products__variants__variant_id__image__width,
    -- products__product_id__products__variants__variant_id.image__height as products__product_id__products__variants__variant_id__image__height,
    -- products__product_id__products__variants__variant_id.image__src as products__product_id__products__variants__variant_id__image__src,
    -- products__product_id__products__variants__variant_id.published_at as products__product_id__products__variants__variant_id__published_at,
    -- products__product_id__products__variants__variant_id.body_html as products__product_id__products__variants__variant_id__body_html,
    
    ---- dim table products via products__products__variants__variant_id
    products__products__variants__variant_id.id as products__products__variants__variant_id__id,
    -- products__products__variants__variant_id.title as products__products__variants__variant_id__title,
    -- products__products__variants__variant_id.vendor as products__products__variants__variant_id__vendor,
    -- products__products__variants__variant_id.product_type as products__products__variants__variant_id__product_type,
    -- products__products__variants__variant_id.created_at as products__products__variants__variant_id__created_at,
    -- products__products__variants__variant_id.handle as products__products__variants__variant_id__handle,
    -- products__products__variants__variant_id.updated_at as products__products__variants__variant_id__updated_at,
    -- products__products__variants__variant_id.published_scope as products__products__variants__variant_id__published_scope,
    -- products__products__variants__variant_id.tags as products__products__variants__variant_id__tags,
    -- products__products__variants__variant_id.status as products__products__variants__variant_id__status,
    -- products__products__variants__variant_id.admin_graphql_api_id as products__products__variants__variant_id__admin_graphql_api_id,
    -- products__products__variants__variant_id.image__id as products__products__variants__variant_id__image__id,
    -- products__products__variants__variant_id.image__alt as products__products__variants__variant_id__image__alt,
    -- products__products__variants__variant_id.image__position as products__products__variants__variant_id__image__position,
    -- products__products__variants__variant_id.image__product_id as products__products__variants__variant_id__image__product_id,
    -- products__products__variants__variant_id.image__created_at as products__products__variants__variant_id__image__created_at,
    -- products__products__variants__variant_id.image__updated_at as products__products__variants__variant_id__image__updated_at,
    -- products__products__variants__variant_id.image__admin_graphql_api_id as products__products__variants__variant_id__image__admin_graphql_api_id,
    -- products__products__variants__variant_id.image__width as products__products__variants__variant_id__image__width,
    -- products__products__variants__variant_id.image__height as products__products__variants__variant_id__image__height,
    -- products__products__variants__variant_id.image__src as products__products__variants__variant_id__image__src,
    -- products__products__variants__variant_id.published_at as products__products__variants__variant_id__published_at,
    -- products__products__variants__variant_id.body_html as products__products__variants__variant_id__body_html,
    
    ---- dim table orders via orders
    orders.id as orders__id,
    -- orders.admin_graphql_api_id as orders__admin_graphql_api_id,
    -- orders.app_id as orders__app_id,
    -- orders.browser_ip as orders__browser_ip,
    -- orders.buyer_accepts_marketing as orders__buyer_accepts_marketing,
    -- orders.checkout_id as orders__checkout_id,
    -- orders.checkout_token as orders__checkout_token,
    -- orders.client_details__browser_ip as orders__client_details__browser_ip,
    -- orders.client_details__user_agent as orders__client_details__user_agent,
    -- orders.closed_at as orders__closed_at,
    -- orders.confirmation_number as orders__confirmation_number,
    -- orders.confirmed as orders__confirmed,
    -- orders.created_at as orders__created_at,
    -- orders.currency as orders__currency,
    -- orders.current_subtotal_price as orders__current_subtotal_price,
    -- orders.current_subtotal_price_set__shop_money__amount as orders__current_subtotal_price_set__shop_money__amount,
    -- orders.current_subtotal_price_set__shop_money__currency_code as orders__current_subtotal_price_set__shop_money__currency_code,
    -- orders.current_subtotal_price_set__presentment_money__amount as orders__current_subtotal_price_set__presentment_money__amount,
    -- orders.current_subtotal_price_set__presentment_money__currency_code as orders__current_subtotal_price_set__presentment_money__currency_code,
    -- orders.current_total_discounts as orders__current_total_discounts,
    -- orders.current_total_discounts_set__shop_money__amount as orders__current_total_discounts_set__shop_money__amount,
    -- orders.current_total_discounts_set__shop_money__currency_code as orders__current_total_discounts_set__shop_money__currency_code,
    -- orders.current_total_discounts_set__presentment_money__amount as orders__current_total_discounts_set__presentment_money__amount,
    -- orders.current_total_discounts_set__presentment_money__currency_code as orders__current_total_discounts_set__presentment_money__currency_code,
    -- orders.current_total_price as orders__current_total_price,
    -- orders.current_total_price_set__shop_money__amount as orders__current_total_price_set__shop_money__amount,
    -- orders.current_total_price_set__shop_money__currency_code as orders__current_total_price_set__shop_money__currency_code,
    -- orders.current_total_price_set__presentment_money__amount as orders__current_total_price_set__presentment_money__amount,
    -- orders.current_total_price_set__presentment_money__currency_code as orders__current_total_price_set__presentment_money__currency_code,
    -- orders.current_total_tax as orders__current_total_tax,
    -- orders.current_total_tax_set__shop_money__amount as orders__current_total_tax_set__shop_money__amount,
    -- orders.current_total_tax_set__shop_money__currency_code as orders__current_total_tax_set__shop_money__currency_code,
    -- orders.current_total_tax_set__presentment_money__amount as orders__current_total_tax_set__presentment_money__amount,
    -- orders.current_total_tax_set__presentment_money__currency_code as orders__current_total_tax_set__presentment_money__currency_code,
    -- orders.customer_locale as orders__customer_locale,
    -- orders.email as orders__email,
    -- orders.estimated_taxes as orders__estimated_taxes,
    -- orders.financial_status as orders__financial_status,
    -- orders.fulfillment_status as orders__fulfillment_status,
    -- orders.location_id as orders__location_id,
    -- orders.name as orders__name,
    -- orders.number as orders__number,
    -- orders.order_number as orders__order_number,
    -- orders.order_status_url as orders__order_status_url,
    -- orders.presentment_currency as orders__presentment_currency,
    -- orders.processed_at as orders__processed_at,
    -- orders.reference as orders__reference,
    -- orders.source_identifier as orders__source_identifier,
    -- orders.source_name as orders__source_name,
    -- orders.subtotal_price as orders__subtotal_price,
    -- orders.subtotal_price_set__shop_money__amount as orders__subtotal_price_set__shop_money__amount,
    -- orders.subtotal_price_set__shop_money__currency_code as orders__subtotal_price_set__shop_money__currency_code,
    -- orders.subtotal_price_set__presentment_money__amount as orders__subtotal_price_set__presentment_money__amount,
    -- orders.subtotal_price_set__presentment_money__currency_code as orders__subtotal_price_set__presentment_money__currency_code,
    -- orders.tags as orders__tags,
    -- orders.tax_exempt as orders__tax_exempt,
    -- orders.taxes_included as orders__taxes_included,
    -- orders.test as orders__test,
    -- orders.token as orders__token,
    -- orders.total_discounts as orders__total_discounts,
    -- orders.total_discounts_set__shop_money__amount as orders__total_discounts_set__shop_money__amount,
    -- orders.total_discounts_set__shop_money__currency_code as orders__total_discounts_set__shop_money__currency_code,
    -- orders.total_discounts_set__presentment_money__amount as orders__total_discounts_set__presentment_money__amount,
    -- orders.total_discounts_set__presentment_money__currency_code as orders__total_discounts_set__presentment_money__currency_code,
    -- orders.total_line_items_price as orders__total_line_items_price,
    -- orders.total_line_items_price_set__shop_money__amount as orders__total_line_items_price_set__shop_money__amount,
    -- orders.total_line_items_price_set__shop_money__currency_code as orders__total_line_items_price_set__shop_money__currency_code,
    -- orders.total_line_items_price_set__presentment_money__amount as orders__total_line_items_price_set__presentment_money__amount,
    -- orders.total_line_items_price_set__presentment_money__currency_code as orders__total_line_items_price_set__presentment_money__currency_code,
    -- orders.total_outstanding as orders__total_outstanding,
    -- orders.total_price as orders__total_price,
    -- orders.total_price_set__shop_money__amount as orders__total_price_set__shop_money__amount,
    -- orders.total_price_set__shop_money__currency_code as orders__total_price_set__shop_money__currency_code,
    -- orders.total_price_set__presentment_money__amount as orders__total_price_set__presentment_money__amount,
    -- orders.total_price_set__presentment_money__currency_code as orders__total_price_set__presentment_money__currency_code,
    -- orders.total_shipping_price_set__shop_money__amount as orders__total_shipping_price_set__shop_money__amount,
    -- orders.total_shipping_price_set__shop_money__currency_code as orders__total_shipping_price_set__shop_money__currency_code,
    -- orders.total_shipping_price_set__presentment_money__amount as orders__total_shipping_price_set__presentment_money__amount,
    -- orders.total_shipping_price_set__presentment_money__currency_code as orders__total_shipping_price_set__presentment_money__currency_code,
    -- orders.total_tax as orders__total_tax,
    -- orders.total_tax_set__shop_money__amount as orders__total_tax_set__shop_money__amount,
    -- orders.total_tax_set__shop_money__currency_code as orders__total_tax_set__shop_money__currency_code,
    -- orders.total_tax_set__presentment_money__amount as orders__total_tax_set__presentment_money__amount,
    -- orders.total_tax_set__presentment_money__currency_code as orders__total_tax_set__presentment_money__currency_code,
    -- orders.total_tip_received as orders__total_tip_received,
    -- orders.total_weight as orders__total_weight,
    -- orders.updated_at as orders__updated_at,
    -- orders.user_id as orders__user_id,
    -- orders.billing_address__first_name as orders__billing_address__first_name,
    -- orders.billing_address__address1 as orders__billing_address__address1,
    -- orders.billing_address__city as orders__billing_address__city,
    -- orders.billing_address__zip as orders__billing_address__zip,
    -- orders.billing_address__province as orders__billing_address__province,
    -- orders.billing_address__country as orders__billing_address__country,
    -- orders.billing_address__last_name as orders__billing_address__last_name,
    -- orders.billing_address__address2 as orders__billing_address__address2,
    -- orders.billing_address__latitude as orders__billing_address__latitude,
    -- orders.billing_address__longitude as orders__billing_address__longitude,
    -- orders.billing_address__name as orders__billing_address__name,
    -- orders.billing_address__country_code as orders__billing_address__country_code,
    -- orders.billing_address__province_code as orders__billing_address__province_code,
    

FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__line_items` as orders__line_items
LEFT JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products` as products__product_id ON
        products__product_id.id = orders__line_items.product_id

LEFT JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products__variants` as products__variants__variant_id ON
        products__variants__variant_id.id = orders__line_items.variant_id

LEFT JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products` as products__product_id__products__variants__variant_id ON
        products__product_id__products__variants__variant_id.id = products__variants__variant_id.product_id

LEFT JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products` as products__products__variants__variant_id ON
        products__products__variants__variant_id._dlt_id = products__variants__variant_id._dlt_parent_id

LEFT JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders` as orders ON
        orders._dlt_id = orders__line_items._dlt_parent_id