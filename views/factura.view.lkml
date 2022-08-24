view: factura {
  sql_table_name: `Demo_facturacion.Factura`
    ;;

  dimension: anio {
    label: "Año"
    type: number
    sql: ${TABLE}.Anio ;;
  }

  dimension: aprobada {
    label: "Aprobado"
    type: number
    sql: ${TABLE}.Aprobada ;;
  }

  dimension: cliente {
    label: "Cliente"
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: customer_id {
    label: "ID cliente"
    type: string
    sql: ${TABLE}.Customer_Id ;;
  }

  dimension_group: fecha_factura {
    label: "Fecha Factura"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_Factura ;;
  }

  dimension: glosa {
    type: number
    sql: ${TABLE}.Glosa ;;
  }

  dimension: glosa_1 {
    label: "Glosa"
    type: number
    sql: ${TABLE}.Glosa_1 ;;
  }

  dimension: iva {
    label: "Iva"
    type: number
    sql: ${TABLE}.IVA ;;
  }

  dimension: mes {
    label: "Mes"
    type: number
    sql: ${TABLE}.Mes ;;
  }

  dimension: nro_factura {
    label: "Nro Factura"
    type: number
    sql: ${TABLE}.Nro_FACTURA ;;
  }

  dimension: pago {
    label: "Pago"
    type: number
    sql: ${TABLE}.Pago ;;
  }

  dimension: pagos {
    label: "Pagos"
    type: number
    sql: ${TABLE}.Pagos ;;
  }

  dimension: pagos_cy {
    label: "Pagos CY"
    type: number
    sql: ${TABLE}.Pagos_CY ;;
  }

  dimension: pagos_py {
    label: "Pagos PY"
    type: number
    sql: ${TABLE}.Pagos_PY ;;
  }

  dimension: pendiente {
    label: "Pendiente"
    type: number
    sql: ${TABLE}.Pendiente ;;
  }

  dimension: plan {
    label: "Plan"
    type: string
    sql: ${TABLE}.Plan ;;
  }

  dimension: productos {
    label: "Productos"
    type: number
    sql: ${TABLE}.Productos ;;
  }

  dimension: region {
    label: "Region"
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: segmento {
    label: "Segmento"
    type: string
    sql: ${TABLE}.Segmento ;;
  }

  dimension: tipo_de_evento {
    label: "Tipo de evento"
    type: string
    sql: ${TABLE}.Tipo_de_Evento ;;
  }

  dimension: total {
    label: "Total"
    type: number
    sql: ${TABLE}.Total ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: avg_pagos {
    type: average
    sql: ${pagos_py} ;;
    value_format: "0.00"
  }

  measure: max_numero_pagos {
    type: max
    sql: ${pagos} ;;
  }

  measure:max_pendiente{
    type: max
    sql: ${pendiente} ;;
  }

  measure: suma_pago {
    type: sum
    sql: ${pago} ;;
    value_format: "0.00"
  }
}
