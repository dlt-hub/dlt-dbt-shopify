/* Table: products__image__variant_ids */
/* Parent: { parent }} */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}
-- depends_on: {{ ref('stg_products') }}

SELECT
/* select which columns will be available for table 'products__image__variant_ids' */
    value,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM {{ source('raw_data', 'products__image__variant_ids') }}

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM {{ ref('stg_products') }} )