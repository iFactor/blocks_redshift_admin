view: stl_load_errors {
  derived_table: {
    sql: select * from stl_load_errors
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: userid {
    type: number
    sql: ${TABLE}.userid ;;
  }

  dimension: slice {
    type: number
    sql: ${TABLE}.slice ;;
  }

  dimension: tbl {
    type: number
    sql: ${TABLE}.tbl ;;
  }

  dimension_group: starttime {
    type: time
    sql: ${TABLE}.starttime ;;
  }

  dimension: session {
    type: number
    sql: ${TABLE}.session ;;
  }

  dimension: query {
    type: number
    sql: ${TABLE}.query ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: line_number {
    type: number
    sql: ${TABLE}.line_number ;;
  }

  dimension: colname {
    type: string
    sql: ${TABLE}.colname ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: col_length {
    type: string
    sql: ${TABLE}.col_length ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: raw_line {
    type: string
    sql: ${TABLE}.raw_line ;;
  }

  dimension: raw_field_value {
    type: string
    sql: ${TABLE}.raw_field_value ;;
  }

  dimension: err_code {
    type: number
    sql: ${TABLE}.err_code ;;
  }

  dimension: err_reason {
    type: string
    sql: ${TABLE}.err_reason ;;
  }

  set: detail {
    fields: [
      userid,
      slice,
      tbl,
      starttime_time,
      session,
      query,
      filename,
      line_number,
      colname,
      type,
      col_length,
      position,
      raw_line,
      raw_field_value,
      err_code,
      err_reason
    ]
  }
}
