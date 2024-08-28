mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-failure-cloudtrail-s3-bucket-public-access-block-has-missing-fields/mock-tfconfig-v2.sentinel"
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
    main = false
  }
}