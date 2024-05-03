# variable "alert_loop" {
#   type = map(object({{
#     account_id = number
#     type = string
#     baseline_direction =string
#     name=string
#     description=string
#     runbook_url=string
#     enabled=bool
#     violation_time_limit_seconds=number
#     fill_option=string
#     fill_value=number
#     aggregation_window=number
#     aggregation_method=string
#     aggregation_delay=number
#     expiration_duration=number
#     open_violation_on_expiration=bool
#     close_violations_on_expiration=bool
#     slide_by=number
#     nrql=string
#     critical=map(object({
#       operator       = string
#       threshold      = number
#       threshold_duration        = number
#       threshold_occurrences=string
#     }))
#   }}))

# }

variable "policyname" {
  type = string
}
# variable "warning" {
#   type = any
# }

variable "alert_loop" {
  type = object({
    account_id                     = number
    type                           = string
    baseline_direction             = string
    name                           = string
    description                    = string
    runbook_url                    = string
    enabled                        = bool
    violation_time_limit_seconds   = number
    fill_option                    = string
    fill_value                     = number
    aggregation_window             = number
    aggregation_method             = string
    aggregation_delay              = number
    expiration_duration            = number
    open_violation_on_expiration   = bool
    close_violations_on_expiration = bool
    slide_by                       = number
    nrql                           = string,
    critical = object({
      operator              = string,
      threshold             = number,
      threshold_duration    = number,
      threshold_occurrences = string
    })

    warning_enabled = bool

    # warning = object(any)

    warning = object({
      operator              = string
      threshold             = number
      threshold_duration    = number
      threshold_occurrences = string
    })

  })
}