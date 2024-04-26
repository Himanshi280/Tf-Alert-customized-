policyname = "alertpolicy-2"
alert_loop = {
  "1" = {

    account_id                     = 4411834
    type                           = "static"
    baseline_direction             = "upper_and_lower"
    name                           = "Warning & Critical(static)"
    description                    = "Alert when transactions are taking too long"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    nrql                           = "SELECT average(duration) FROM Transaction where appName = 'Your App'"
    critical = {
      operator              = "above"
      threshold             = 5.5
      threshold_duration    = 300
      threshold_occurrences = "ALL"
    }

    warning_enabled = true
    warning = {
      operator              = "above"
      threshold             = 3.5
      threshold_duration    = 600
      threshold_occurrences = "ALL"
    }
  }

  "2" = {
    account_id                     = 4411834
    type                           = "baseline"
    baseline_direction             = "upper_and_lower"
    name                           = "Critical (baseline)"
    description                    = "Alert when transactions are taking too long"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    nrql                           = "SELECT average(duration) FROM Transaction where appName = 'Your App'"
    critical = {
      operator              = "above"
      threshold             = 5.5
      threshold_duration    = 300
      threshold_occurrences = "ALL"
    }
    warning_enabled                = false

    # warning = {
    #   operator              = "above"
    #   threshold             = 3.5
    #   threshold_duration    = 600
    #   threshold_occurrences = "ALL"
    # }
  }
}