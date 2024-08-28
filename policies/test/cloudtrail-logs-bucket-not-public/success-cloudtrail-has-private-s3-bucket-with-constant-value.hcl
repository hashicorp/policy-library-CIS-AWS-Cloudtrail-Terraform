mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-success-cloudtrail-has-private-s3-bucket-with-constant-value/mock-tfconfig-v2.sentinel"
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

test {
  rules = {
    main = true
  }
}