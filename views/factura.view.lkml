view: factura {
  sql_table_name: `Demo_facturacion.Factura`
    ;;

  dimension: anio {
    label: "año"
    type: number
    sql: ${TABLE}.Anio ;;
  }

  dimension: aprobada {
    type: number
    sql: ${TABLE}.Aprobada ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.Customer_Id ;;
  }

  dimension_group: fecha_factura {
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
    type: number
    sql: ${TABLE}.Glosa_1 ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.IVA ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}.Mes ;;
  }

  dimension: nro_factura {
    type: number
    sql: ${TABLE}.Nro_FACTURA ;;
  }

  dimension: pago {
    type: number
    sql: ${TABLE}.Pago ;;
  }

  dimension: pagos {
    type: number
    sql: ${TABLE}.Pagos ;;
  }

  dimension: pagos_cy {
    type: number
    sql: ${TABLE}.Pagos_CY ;;
  }

  dimension: pagos_py {
    type: number
    sql: ${TABLE}.Pagos_PY ;;
  }

  dimension: pendiente {
    type: number
    sql: ${TABLE}.Pendiente ;;
  }

  dimension: plan {
    type: string
    sql: ${TABLE}.Plan ;;
  }

  dimension: productos {
    type: number
    sql: ${TABLE}.Productos ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: segmento {
    type: string
    sql: ${TABLE}.Segmento ;;
  }

  dimension: tipo_de_evento {
    type: string
    sql: ${TABLE}.Tipo_de_Evento ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
