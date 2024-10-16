/* Table: orders__fulfillments */
/* Parent: { parent }} */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}
-- depends_on: {{ ref('stg_orders') }}

SELECT
/* select which columns will be available for table 'orders__fulfillments' */
    id,
    admin_graphql_api_id,
    created_at,
    location_id,
    name,
    order_id,
    service,
    status,
    updated_at,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM {{ source('raw_data', 'orders__fulfillments') }}

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM {{ ref('stg_orders') }} )