mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-failure-cloudwatch-logs-group-arn-attribute-missing/mock-tfconfig-v2.sentinel"
  }
}

import "plugin" "tfresources" {
  source = "../../../plugins/darwin/arm64/sentinel-plugin-tfresources"
}

mock "report" {
  module {
    source = "../../../modules/mocks/report/report.sentinel"
  }
}


param "verify_cloudwatch_logs_group_arn_present" {
  value = true
}

test {
  rules = {
    main = false
  }
}