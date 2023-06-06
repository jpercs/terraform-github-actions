terraform {
  required_providers {
    genesyscloud = {
      source  = "registry.terraform.io/mypurecloud/genesyscloud"
      version = "1.11.1"
    }
  }
  cloud {
    organization = "inoria"

    workspaces {
      name = "inoria"
    }
  }
}


resource "genesyscloud_outbound_attempt_limit" "Attempts_PROD" {
  max_attempts_per_contact = 3
  max_attempts_per_number  = 3
  name                     = "Attempts_PROD"
  recall_entries {
    busy {
      nbr_attempts             = 2
      minutes_between_attempts = 60
    }
    no_answer {
      minutes_between_attempts = 60
      nbr_attempts             = 2
    }
  }
  reset_period = "TODAY"
  time_zone_id = "America/Phoenix"
}

resource "genesyscloud_outbound_callabletimeset" "EUSA_-_Collections_PROD_3345388107" {
  name = "EUSA - Collections_PROD"
  callable_times {
    time_slots {
      stop_time  = "17:00:00"
      day        = 1
      start_time = "11:00:00"
    }
    time_slots {
      day        = 2
      start_time = "11:00:00"
      stop_time  = "17:00:00"
    }
    time_slots {
      stop_time  = "17:00:00"
      day        = 3
      start_time = "11:00:00"
    }
    time_slots {
      day        = 4
      start_time = "11:00:00"
      stop_time  = "17:00:00"
    }
    time_slots {
      day        = 5
      start_time = "11:00:00"
      stop_time  = "17:00:00"
    }
    time_zone_id = "America/Denver"
  }
}

resource "genesyscloud_outbound_callabletimeset" "EUSA_-_High_Water_PROD_3985185501" {
  name = "EUSA - High Water_PROD"
  callable_times {
    time_slots {
      day        = 1
      start_time = "11:00:00"
      stop_time  = "17:00:00"
    }
    time_slots {
      day        = 2
      start_time = "11:00:00"
      stop_time  = "17:00:00"
    }
    time_slots {
      day        = 3
      start_time = "11:00:00"
      stop_time  = "17:00:00"
    }
    time_slots {
      start_time = "11:00:00"
      stop_time  = "17:00:00"
      day        = 4
    }
    time_slots {
      stop_time  = "17:00:00"
      day        = 5
      start_time = "11:00:00"
    }
    time_zone_id = "America/Denver"
  }
}


resource "genesyscloud_outbound_contact_list" "EUSA_ZeroContacts" {
  automatic_time_zone_mapping = true
  column_names                = ["Client Id", "Alert Type", "Product Id", "Consumer Id", "Media Type", "Media Address", "Alert Hour Type Code", "Client Hour Type Code", "Customer First Name", "Customer Last Name", "Customer Address", "Customer City", "Customer State", "Customer Zip Code", "Last Payment Due Date", "Number Days Past Due", "Amount Due", "Authentication String", "Account Id", "Account Check Digit", "Total Amount Due", "Child Alert Type", "Alert ID", "Parent ID", "Alert Status", "Alert Result", "Terminal Check Point", "Date Alert Sent", "Time Alert Sent", "Time Zone", "Call Duration", "Transfer Result Indicator", "Transfer Phone Number", "Hold Duration", "Call Duration After Transfer", "Inbound Phone Number", "Attempt Number"]
  name                        = "EUSA_ZeroContacts"
  phone_columns {
    column_name = "Media Address"
    type        = "Daytime"
  }
}

resource "genesyscloud_outbound_contact_list" "EUSA_HV_UAT_Ryan3" {
  name = "EUSA_HV_UAT_Ryan3"
  phone_columns {
    column_name = "Media Address"
    type        = "Daytime"
  }
  automatic_time_zone_mapping = false
  column_names                = ["Client Id", "Alert Type", "Product Id", "Consumer Id", "Media Type", "Media Address", "Alert Hour Type Code", "Client Hour Type Code", "Customer First Name", "Customer Last Name", "Customer Address", "Customer City", "Customer State", "Customer Zip Code", "Last Payment Due Date", "Number Days Past Due", "Amount Due", "Authentication String", "Account Id", "Account Check Digit", "Total Amount Due", "Child Alert Type", "Alert ID", "Parent ID", "Alert Status", "Alert Result", "Terminal Check Point", "Date Alert Sent", "Time Alert Sent", "Time Zone", "Call Duration", "Transfer Result Indicator", "Transfer Phone Number", "Hold Duration", "Call Duration After Transfer", "Inbound Phone Number", "Attempt Number"]
}

resource "genesyscloud_outbound_contact_list" "JPT_-_HighWater_-_Contact_List_3223492868" {
  automatic_time_zone_mapping = true
  phone_columns {
    column_name = "Media Address"
    type        = "Daytime"
  }
  zip_code_column_name = "Customer Zip Code"
  column_names         = ["Client Id", "Alert Type", "Product Id", "Consumer Id(Account/Premise ID/Balance)", "Media Type", "Media Address", "Alert Hour Type Code", "Client Hour Type Code", "Customer First Name", "Customer Last Name", "Customer Address", "Customer City", "Customer State", "Customer Zip Code", "Last Payment Due Date", "Number Days Past Due", "Amount Due", "Authentication String", "Account Id", "Account Check Digit", "Total Amount Due", "Child Alert Type", "Alert ID", "Parent ID", "Alert Status", "Alert Result", "Terminal Check Point", "Date Alert Sent", "Time Alert Sent", "Time Zone", "Call Duration", "Transfer Result Indicator", "Transfer Phone Number", "Hold Duration", "Call Duration After Transfer", "Inbound Phone Number", "Attempt Number"]
  name                 = "JPT - HighWater - Contact List"
}

resource "genesyscloud_outbound_contact_list" "EUSA_TestMW_CO__Sly_479921762" {
  automatic_time_zone_mapping = false
  column_names                = ["Client Id", "Alert Type", "Product Id", "Consumer Id", "Media Type", "Media Address", "Alert Hour Type Code", "Client Hour Type Code", "Customer First Name", "Customer Last Name", "Customer Address", "Customer City", "Customer State", "Customer Zip Code", "Last Payment Due Date", "Number Days Past Due", "Amount Due", "Authentication String", "Account Id", "Account Check Digit", "Total Amount Due", "Child Alert Type", "Alert ID", "Parent ID", "Alert Status", "Alert Result", "Terminal Check Point", "Date Alert Sent", "Time Alert Sent", "Time Zone", "Call Duration", "Transfer Result Indicator", "Transfer Phone Number", "Hold Duration", "Call Duration After Transfer", "Inbound Phone Number", "Attempt Number"]
  name                        = "EUSA_TestMW(CO)_Sly"
  phone_columns {
    column_name = "Media Address"
    type        = "Daytime"
  }
}

resource "genesyscloud_outbound_contact_list" "EUSA_CollTest_Chris" {
  automatic_time_zone_mapping = false
  column_names                = ["Client Id", "Alert Type", "Product Id", "Consumer Id", "Media Type", "Media Address", "Alert Hour Type Code", "Client Hour Type Code", "Customer First Name", "Customer Last Name", "Customer Address", "Customer City", "Customer State", "Customer Zip Code", "Last Payment Due Date", "Number Days Past Due", "Amount Due", "Authentication String", "Account Id", "Account Check Digit", "Total Amount Due", "Child Alert Type", "Alert ID", "Parent ID", "Alert Status", "Alert Result", "Terminal Check Point", "Date Alert Sent", "Time Alert Sent", "Time Zone", "Call Duration", "Transfer Result Indicator", "Transfer Phone Number", "Hold Duration", "Call Duration After Transfer", "Inbound Phone Number", "Attempt Number"]
  name                        = "EUSA_CollTest_Chris"
  attempt_limit_id            = "${genesyscloud_outbound_attempt_limit.Attempts_PROD.id}"
  phone_columns {
    column_name = "Media Address"
    type        = "Home"
  }
}

resource "genesyscloud_outbound_contact_list" "EUSA_-_High_Water_PROD_3985185501" {
  name                        = "EUSA - High Water_PROD"
  automatic_time_zone_mapping = true
  column_names                = ["Client Id", "Alert Type", "Product Id", "Consumer Id", "Media Type", "Media Address", "Alert Hour Type Code", "Client Hour Type Code", "Customer First Name", "Customer Last Name", "Customer Address", "Customer City", "Customer State", "Customer Zip Code", "Last Payment Due Date", "Number Days Past Due", "Amount Due", "Authentication String", "Account Id", "Account Check Digit", "Total Amount Due", "Child Alert Type", "Alert ID", "Parent ID", "Alert Status", "Alert Result", "Terminal Check Point", "Date Alert Sent", "Time Alert Sent", "Time Zone", "Call Duration", "Transfer Result Indicator", "Transfer Phone Number", "Hold Duration", "Call Duration After Transfer", "Inbound Phone Number", "Attempt Number"]
  phone_columns {
    column_name = "Media Address"
    type        = "Daytime"
  }
}

resource "genesyscloud_outbound_contact_list" "EUSA_HighUse_Schedule" {
  name = "EUSA_HighUse_Schedule"
  phone_columns {
    type        = "Daytime"
    column_name = "Media Address"
  }
  automatic_time_zone_mapping = true
  column_names                = ["Client Id", "Alert Type", "Product Id", "Consumer Id", "Media Type", "Media Address", "Alert Hour Type Code", "Client Hour Type Code", "Customer First Name", "Customer Last Name", "Customer Address", "Customer City", "Customer State", "Customer Zip Code", "Last Payment Due Date", "Number Days Past Due", "Amount Due", "Authentication String", "Account Id", "Account Check Digit", "Total Amount Due", "Child Alert Type", "Alert ID", "Parent ID", "Alert Status", "Alert Result", "Terminal Check Point", "Date Alert Sent", "Time Alert Sent", "Time Zone", "Call Duration", "Transfer Result Indicator", "Transfer Phone Number", "Hold Duration", "Call Duration After Transfer", "Inbound Phone Number", "Attempt Number"]
}

resource "genesyscloud_outbound_contact_list" "EUSA_-_Collections_PROD_3345388107" {
  phone_columns {
    column_name = "Media Address"
    type        = "Daytime"
  }
  automatic_time_zone_mapping = true
  column_names                = ["Client Id", "Alert Type", "Product Id", "Consumer Id", "Media Type", "Media Address", "Alert Hour Type Code", "Client Hour Type Code", "Customer First Name", "Customer Last Name", "Customer Address", "Customer City", "Customer State", "Customer Zip Code", "Last Payment Due Date", "Number Days Past Due", "Amount Due", "Authentication String", "Account Id", "Account Check Digit", "Total Amount Due", "Child Alert Type", "Alert ID", "Parent ID", "Alert Status", "Alert Result", "Terminal Check Point", "Date Alert Sent", "Time Alert Sent", "Time Zone", "Call Duration", "Transfer Result Indicator", "Transfer Phone Number", "Hold Duration", "Call Duration After Transfer", "Inbound Phone Number", "Attempt Number"]
  name                        = "EUSA - Collections_PROD"
}

resource "genesyscloud_outbound_contact_list" "EUSA_TestMW_CL__Sly_3465206803" {
  name = "EUSA_TestMW(CL)_Sly"
  phone_columns {
    column_name = "Media Address"
    type        = "Daytime"
  }
  automatic_time_zone_mapping = true
  column_names                = ["Client Id", "Alert Type", "Product Id", "Consumer Id", "Media Type", "Media Address", "Alert Hour Type Code", "Client Hour Type Code", "Customer First Name", "Customer Last Name", "Customer Address", "Customer City", "Customer State", "Customer Zip Code", "Last Payment Due Date", "Number Days Past Due", "Amount Due", "Authentication String", "Account Id", "Account Check Digit", "Total Amount Due", "Child Alert Type", "Alert ID", "Parent ID", "Alert Status", "Alert Result", "Terminal Check Point", "Date Alert Sent", "Time Alert Sent", "Time Zone", "Call Duration", "Transfer Result Indicator", "Transfer Phone Number", "Hold Duration", "Call Duration After Transfer", "Inbound Phone Number", "Attempt Number"]
}



resource "genesyscloud_flow" "EUSA_OB_HighWater_Customer_PROD" {
  filepath = "./flows/EUSA_OB_HighWater_Customer_PROD.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_HighWater_Customer_PROD.yaml")
}

resource "genesyscloud_flow" "EUSA_OB_HighWater_Customer_TRAIN" {
  filepath = "./flows/EUSA_OB_HighWater_Customer_TRAIN.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_HighWater_Customer_TRAIN.yaml")
}

resource "genesyscloud_flow" "EUSA_OB_HighWater_Customer_UAT" {
  filepath = "./flows/EUSA_OB_HighWater_Customer_UAT.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_HighWater_Customer_UAT.yaml")
}

resource "genesyscloud_flow" "EUSA_OB_HighWater_Customer_DEV" {
  filepath = "./flows/EUSA_OB_HighWater_Customer_DEV.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_HighWater_Customer_DEV.yaml")
}


resource "genesyscloud_flow" "EUSA_OB_HighWater_Voicemail_PROD" {
  filepath = "./flows/EUSA_OB_HighWater_Voicemail_PROD.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_HighWater_Voicemail_PROD.yaml")
}

resource "genesyscloud_flow" "EUSA_OB_HighWater_Voicemail_TRAIN" {
  filepath = "./flows/EUSA_OB_HighWater_Voicemail_TRAIN.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_HighWater_Voicemail_TRAIN.yaml")
}

resource "genesyscloud_flow" "EUSA_OB_HighWater_Voicemail_UAT" {
  filepath = "./flows/EUSA_OB_HighWater_Voicemail_UAT.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_HighWater_Voicemail_UAT.yaml")
}

resource "genesyscloud_flow" "EUSA_OB_HighWater_Voicemail_DEV" {
  filepath = "./flows/EUSA_OB_HighWater_Voicemail_DEV.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_HighWater_Voicemail_DEV.yaml")
}



resource "genesyscloud_flow" "EUSA_OB_Collections_Customer_PROD" {
  filepath = "./flows/EUSA_OB_Collections_Customer_PROD.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_Collections_Customer_PROD.yaml")
}

resource "genesyscloud_flow" "EUSA_OB_Collections_Customer_TRAIN" {
  filepath = "./flows/EUSA_OB_Collections_Customer_TRAIN.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_Collections_Customer_TRAIN.yaml")
}

resource "genesyscloud_flow" "EUSA_OB_Collections_Customer_UAT" {
  filepath = "./flows/EUSA_OB_Collections_Customer_UAT.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_Collections_Customer_UAT.yaml")
}

resource "genesyscloud_flow" "EUSA_OB_Collections_Customer_DEV" {
  filepath = "./flows/EUSA_OB_Collections_Customer_DEV.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_Collections_Customer_DEV.yaml")
}

resource "genesyscloud_flow" "EUSA_OB_Collections_Voicemail_PROD" {
  filepath = "./flows/EUSA_OB_Collections_Voicemail_PROD.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_Collections_Voicemail_PROD.yaml")
}

resource "genesyscloud_flow" "EUSA_OB_Collections_Voicemail_TRAIN" {
  filepath = "./flows/EUSA_OB_Collections_Voicemail_TRAIN.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_Collections_Voicemail_TRAIN.yaml")
}

resource "genesyscloud_flow" "EUSA_OB_Collections_Voicemail_UAT" {
  filepath = "./flows/EUSA_OB_Collections_Voicemail_DEV.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_Collections_Voicemail_UAT.yaml")
}

resource "genesyscloud_flow" "EUSA_OB_Collections_Voicemail_DEV" {
  filepath = "./flows/EUSA_OB_Collections_Voicemail_DEV.yaml"
  file_content_hash = filesha256("./flows/EUSA_OB_Collections_Voicemail_DEV.yaml")
}






resource "genesyscloud_outbound_ruleset" "EUSA_-_Mark_Number_as_Uncallable_2981339257" {
  name = "EUSA - Mark Number as Uncallable"
  rules {
    actions {
      properties = {
        Action = "NUMBER_UNCALLABLE"
      }
      type             = "Action"
      action_type_name = "NUMBER_UNCALLABLE"
    }
    category = "DIALER_PRECALL"
    conditions {
      type                      = "contactAttributeCondition"
      value_type                = "STRING"
      operator                  = "EQUALS"
      value                     = "7806199786"
      attribute_name            = "Media Address"
      inverted                  = false
      data_not_found_resolution = false
    }
    name = "Mark Number as Uncallable"
  }
}

resource "genesyscloud_outbound_ruleset" "EUSA_-_Do_not_dial_action_1341883758" {
  rules {
    actions {
      action_type_name = "DO_NOT_DIAL"
      type             = "Action"
      properties = {
        Action = "DO_NOT_DIAL"
      }
    }
    category = "DIALER_PRECALL"
    conditions {
      data_not_found_resolution = false
      operator                  = "EQUALS"
      value                     = "5877848402"
      inverted                  = false
      type                      = "phoneNumberCondition"
    }
    name = "Do not call action"
  }
  name = "EUSA - Do not dial action"
}

resource "genesyscloud_outbound_ruleset" "EUSA_-_Custom_Attempt_Rule_Set_4064565590" {
  name = "EUSA - Custom Attempt Rule Set"
  rules {
    category = "DIALER_PRECALL"
    conditions {
      inverted                  = false
      operator                  = "BEFORE"
      type                      = "contactPropertyCondition"
      value                     = "P-1DT-0H-0M"
      value_type                = "PERIOD"
      property_type             = "LAST_ATTEMPT_OVERALL"
      data_not_found_resolution = false
    }
    name = "Last Attempt > 24h |  Reset Attempts"
    actions {
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        "Attempt Number" = "0"
      }
      type = "modifyContactAttribute"
    }
  }
  rules {
    category = "DIALER_PRECALL"
    conditions {
      operator                  = "GREATER_THAN_EQUALS"
      value_type                = "NUMERIC"
      type                      = "contactAttributeCondition"
      attribute_name            = "Attempt Number"
      inverted                  = false
      value                     = "3"
      data_not_found_resolution = false
    }
    name  = "DND - Attempts >= 3"
    order = 1
    actions {
      type = "Action"
      properties = {
        Action = "DO_NOT_DIAL"
      }
      action_type_name = "DO_NOT_DIAL"
    }
  }
  rules {
    actions {
      type             = "modifyContactAttribute"
      update_option    = "INCREMENT"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    category = "DIALER_WRAPUP"
    conditions {
      inverted                  = false
      operator                  = "EQUALS"
      type                      = "callAnalysisCondition"
      data_not_found_resolution = false
      value                     = "disposition.classification.callable.busy"
    }
    conditions {
      value_type                = "NUMERIC"
      attribute_name            = "Attempt Number"
      type                      = "contactAttributeCondition"
      inverted                  = false
      operator                  = "LESS_THAN"
      value                     = "3"
      data_not_found_resolution = false
    }
    name  = "Increment Attempts - Busy"
    order = 2
  }
  rules {
    name  = "Increment Attempts - No Answer"
    order = 3
    actions {
      type             = "modifyContactAttribute"
      update_option    = "INCREMENT"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    category = "DIALER_WRAPUP"
    conditions {
      data_not_found_resolution = false
      operator                  = "EQUALS"
      value                     = "disposition.classification.callable.noanswer"
      inverted                  = false
      type                      = "callAnalysisCondition"
    }
    conditions {
      attribute_name            = "Attempt Number"
      type                      = "contactAttributeCondition"
      value                     = "3"
      inverted                  = false
      operator                  = "LESS_THAN"
      data_not_found_resolution = false
      value_type                = "NUMERIC"
    }
  }
  rules {
    actions {
      update_option    = "INCREMENT"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      type             = "modifyContactAttribute"
    }
    category = "DIALER_WRAPUP"
    conditions {
      data_not_found_resolution = false
      type                      = "callAnalysisCondition"
      operator                  = "EQUALS"
      value                     = "disposition.classification.callable.machine"
      inverted                  = false
    }
    conditions {
      value                     = "3"
      type                      = "contactAttributeCondition"
      value_type                = "NUMERIC"
      attribute_name            = "Attempt Number"
      data_not_found_resolution = false
      operator                  = "LESS_THAN"
      inverted                  = false
    }
    name  = "Increment Attempts - Machine"
    order = 4
  }
  rules {
    actions {
      type             = "modifyContactAttribute"
      update_option    = "INCREMENT"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    category = "DIALER_WRAPUP"
    conditions {
      type                      = "callAnalysisCondition"
      value                     = "disposition.classification.callable.person"
      data_not_found_resolution = false
      inverted                  = false
      operator                  = "EQUALS"
    }
    conditions {
      type                      = "contactAttributeCondition"
      value                     = "3"
      value_type                = "NUMERIC"
      attribute_name            = "Attempt Number"
      data_not_found_resolution = false
      inverted                  = false
      operator                  = "LESS_THAN"
    }
    name  = "Increment Attempts - Person"
    order = 5
  }
  rules {
    category = "DIALER_WRAPUP"
    conditions {
      type                      = "callAnalysisCondition"
      value                     = "disposition.classification.callable.fax"
      inverted                  = false
      data_not_found_resolution = false
      operator                  = "EQUALS"
    }
    conditions {
      type                      = "contactAttributeCondition"
      value_type                = "NUMERIC"
      data_not_found_resolution = false
      inverted                  = false
      operator                  = "LESS_THAN"
      attribute_name            = "Attempt Number"
      value                     = "3"
    }
    name  = "Increment Attempts - Fax"
    order = 6
    actions {
      type             = "modifyContactAttribute"
      update_option    = "INCREMENT"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
  }
  rules {
    actions {
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      type             = "modifyContactAttribute"
      update_option    = "INCREMENT"
    }
    category = "DIALER_WRAPUP"
    conditions {
      inverted                  = false
      data_not_found_resolution = false
      type                      = "systemDispositionCondition"
    }
    name  = "Increment Attempts - ININ-OUTBOUND-DISCONNECT"
    order = 7
  }
  contact_list_id = "${genesyscloud_outbound_contact_list.JPT_-_HighWater_-_Contact_List_3223492868.id}"
}

resource "genesyscloud_outbound_ruleset" "EUSA_-_Schedule_Callbacks_Rule_Set_840489549" {
  contact_list_id = "${genesyscloud_outbound_contact_list.JPT_-_HighWater_-_Contact_List_3223492868.id}"
  name            = "EUSA - Schedule Callbacks Rule Set"
  rules {
    actions {
      properties = {
        callbackOffset = "60"
      }
      type             = "Action"
      action_type_name = "SCHEDULE_CALLBACK"
    }
    category = "DIALER_WRAPUP"
    conditions {
      inverted                  = false
      data_not_found_resolution = false
      type                      = "systemDispositionCondition"
    }
    name = "Callback based on Dispositions"
  }
  rules {
    actions {
      action_type_name = "SCHEDULE_CALLBACK"
      properties = {
        callbackOffset = "60"
      }
      type = "Action"
    }
    category = "DIALER_WRAPUP"
    conditions {
      data_not_found_resolution = false
      inverted                  = false
      operator                  = "EQUALS"
      type                      = "callAnalysisCondition"
      value                     = "disposition.classification.callable.busy"
    }
    name  = "Callback on Call Analysis Busy"
    order = 1
  }
  rules {
    order = 2
    actions {
      properties = {
        callbackOffset = "60"
      }
      action_type_name = "SCHEDULE_CALLBACK"
      type             = "Action"
    }
    category = "DIALER_WRAPUP"
    conditions {
      type                      = "callAnalysisCondition"
      inverted                  = false
      value                     = "disposition.classification.callable.noanswer"
      operator                  = "EQUALS"
      data_not_found_resolution = false
    }
    name = "Callback on Call Analysis No Answer"
  }
  rules {
    order = 3
    actions {
      action_type_name = "SCHEDULE_CALLBACK"
      type             = "Action"
      properties = {
        callbackOffset = "60"
      }
    }
    category = "DIALER_WRAPUP"
    conditions {
      type                      = "callAnalysisCondition"
      data_not_found_resolution = false
      inverted                  = false
      value                     = "disposition.classification.callable.machine"
      operator                  = "EQUALS"
    }
    conditions {
      type                      = "contactPropertyCondition"
      data_not_found_resolution = false
      property_type             = "LAST_WRAPUP_OVERALL"
      operator                  = "IN"
      inverted                  = false
      value_type                = "STRING"
    }
    name = "Callback on Call Analysis Machine + OB_VM Incomplete"
  }
  rules {
    category = "DIALER_WRAPUP"
    conditions {
      operator                  = "EQUALS"
      type                      = "callAnalysisCondition"
      value                     = "disposition.classification.callable.person"
      inverted                  = false
      data_not_found_resolution = false
    }
    conditions {
      type                      = "wrapupCondition"
      data_not_found_resolution = false
      inverted                  = false
    }
    name  = "Callback on Person + OB_Incomplete"
    order = 4
    actions {
      action_type_name = "SCHEDULE_CALLBACK"
      properties = {
        callbackOffset = "60"
      }
      type = "Action"
    }
    actions {
      type             = "modifyContactAttribute"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      update_option    = "INCREMENT"
    }
  }
  rules {
    actions {
      properties = {
        callbackOffset = "60"
      }
      type             = "Action"
      action_type_name = "SCHEDULE_CALLBACK"
    }
    actions {
      type             = "modifyContactAttribute"
      update_option    = "INCREMENT"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    category = "DIALER_WRAPUP"
    conditions {
      operator                  = "EQUALS"
      type                      = "callAnalysisCondition"
      value                     = "disposition.classification.callable.machine"
      data_not_found_resolution = false
      inverted                  = false
    }
    conditions {
      type                      = "wrapupCondition"
      inverted                  = false
      data_not_found_resolution = false
    }
    name  = "Callback on Machine + OB_VM Incomplete"
    order = 5
  }
}

resource "genesyscloud_outbound_ruleset" "EUSA_-_Terminal_Check_Point__Alert_Status__Alert_Result_3015274809" {
  contact_list_id = "${genesyscloud_outbound_contact_list.JPT_-_HighWater_-_Contact_List_3223492868.id}"
  name            = "EUSA - Terminal Check Point, Alert Status, Alert Result"
  rules {
    actions {
      properties = {
        "Terminal Check Point" = "Answer Human"
      }
      type             = "modifyContactAttribute"
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    actions {
      properties = {
        "Alert Status" = "MD"
      }
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      type             = "modifyContactAttribute"
      update_option    = "SET"
    }
    actions {
      properties = {
        "Alert Result" = "A"
      }
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      type             = "modifyContactAttribute"
      update_option    = "SET"
    }
    category = "DIALER_WRAPUP"
    conditions {
      operator                  = "EQUALS"
      data_not_found_resolution = false
      inverted                  = false
      type                      = "callAnalysisCondition"
      value                     = "disposition.classification.callable.person"
    }
    name = "Success"
  }
  rules {
    actions {
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        "Terminal Check Point" = "Answer Machine"
      }
      type          = "modifyContactAttribute"
      update_option = "SET"
    }
    actions {
      properties = {
        "Alert Status" = "MC"
      }
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      type             = "modifyContactAttribute"
    }
    actions {
      properties = {
        "Alert Result" = "AM"
      }
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      type             = "modifyContactAttribute"
    }
    category = "DIALER_WRAPUP"
    conditions {
      value                     = "disposition.classification.callable.machine"
      type                      = "callAnalysisCondition"
      operator                  = "EQUALS"
      data_not_found_resolution = false
      inverted                  = false
    }
    name  = "Answering Machine"
    order = 1
  }
  rules {
    actions {
      properties = {
        "Terminal Check Point" = "Ring_No_Answer"
      }
      update_option    = "SET"
      type             = "modifyContactAttribute"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    actions {
      properties = {
        "Alert Status" = "NA"
      }
      update_option    = "SET"
      type             = "modifyContactAttribute"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    actions {
      type = "modifyContactAttribute"
      properties = {
        "Alert Result" = "A"
      }
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    category = "DIALER_WRAPUP"
    conditions {
      data_not_found_resolution = false
      operator                  = "EQUALS"
      inverted                  = false
      type                      = "callAnalysisCondition"
      value                     = "disposition.classification.callable.noanswer"
    }
    name  = "No Answer"
    order = 2
  }
  rules {
    actions {
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        "Terminal Check Point" = "Bad Phone Number"
      }
      type          = "modifyContactAttribute"
      update_option = "SET"
    }
    actions {
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        "Alert Status" = "BP"
      }
      type = "modifyContactAttribute"
    }
    actions {
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      update_option    = "SET"
      properties = {
        "Alert Result" = "BP"
      }
      type = "modifyContactAttribute"
    }
    category = "DIALER_WRAPUP"
    conditions {
      data_not_found_resolution = false
      operator                  = "EQUALS"
      type                      = "callAnalysisCondition"
      inverted                  = false
      value                     = "disposition.classification.uncallable.sit"
    }
    name  = "Bad Phone Number"
    order = 3
  }
  rules {
    actions {
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        "Alert Status" = "N"
      }
      type          = "modifyContactAttribute"
      update_option = "SET"
    }
    actions {
      type             = "modifyContactAttribute"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        "Alert Result" = "A"
      }
      update_option = "SET"
    }
    category = "DIALER_WRAPUP"
    conditions {
      value                     = "disposition.classification.callable.disconnect"
      inverted                  = false
      data_not_found_resolution = false
      type                      = "callAnalysisCondition"
      operator                  = "EQUALS"
    }
    name  = "Call Disconnected"
    order = 4
  }
  rules {
    conditions {
      inverted                  = false
      value                     = "disposition.classification.callable.busy"
      data_not_found_resolution = false
      type                      = "callAnalysisCondition"
      operator                  = "EQUALS"
    }
    name  = "Busy"
    order = 5
    actions {
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        "Alert Status" = "B"
      }
      type          = "modifyContactAttribute"
      update_option = "SET"
    }
    actions {
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        "Alert Result" = "B"
      }
      update_option = "SET"
      type          = "modifyContactAttribute"
    }
    actions {
      properties = {
        "Terminal Check Point" = "BUSY"
      }
      type             = "modifyContactAttribute"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      update_option    = "SET"
    }
    category = "DIALER_WRAPUP"
  }
  rules {
    actions {
      properties = {
        "Alert Status" = "FT"
      }
      type             = "modifyContactAttribute"
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    actions {
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        "Alert Result" = "FT"
      }
      type          = "modifyContactAttribute"
      update_option = "SET"
    }
    actions {
      type = "modifyContactAttribute"
      properties = {
        "Terminal Check Point" = "FAX"
      }
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    category = "DIALER_WRAPUP"
    conditions {
      inverted                  = false
      data_not_found_resolution = false
      operator                  = "EQUALS"
      type                      = "callAnalysisCondition"
      value                     = "disposition.classification.callable.fax"
    }
    name  = "Fax"
    order = 6
  }
  rules {
    actions {
      properties = {
        "Alert Status" = "D"
      }
      type             = "modifyContactAttribute"
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    category = "DIALER_WRAPUP"
    conditions {
      data_not_found_resolution = false
      type                      = "systemDispositionCondition"
      inverted                  = false
    }
    name  = "Reserve Agent Fail + Agent Skip"
    order = 7
  }
  rules {
    order = 8
    actions {
      type = "modifyContactAttribute"
      properties = {
        "Alert Status" = "D"
      }
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    actions {
      update_option = "SET"
      properties = {
        "Alert Result" = "NC"
      }
      type             = "modifyContactAttribute"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    actions {
      properties = {
        "Terminal Check Point" = "INCOMPLETE"
      }
      type             = "modifyContactAttribute"
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    category = "DIALER_WRAPUP"
    conditions {
      type                      = "callAnalysisCondition"
      operator                  = "EQUALS"
      value                     = "disposition.classification.uncallable.notfound"
      inverted                  = false
      data_not_found_resolution = false
    }
    name = "Not In Service 404"
  }
  rules {
    order = 9
    actions {
      properties = {
        "Alert Status" = "D"
      }
      type             = "modifyContactAttribute"
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    actions {
      type             = "modifyContactAttribute"
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        "Alert Result" = "NC"
      }
    }
    actions {
      update_option = "SET"
      properties = {
        "Terminal Check Point" = "INCOMPLETE"
      }
      type             = "modifyContactAttribute"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    category = "DIALER_WRAPUP"
    conditions {
      operator                  = "EQUALS"
      type                      = "callAnalysisCondition"
      data_not_found_resolution = false
      value                     = "disposition.classification.callable.sit"
      inverted                  = false
    }
    name = "Dial Error - SIT Callable"
  }
}

resource "genesyscloud_outbound_ruleset" "Test" {
  name = "Test"
}

resource "genesyscloud_outbound_ruleset" "Test_Rule_Set_3521622929" {
  name = "Test Rule Set"
  rules {
    actions {
      type = "modifyContactAttribute"
      properties = {
        custom1 = "machine"
      }
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    actions {
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        custom2 = "Current Time when Action Taken"
      }
      type          = "modifyContactAttribute"
      update_option = "CURRENT_TIME"
    }
    category = "DIALER_WRAPUP"
    conditions {
      data_not_found_resolution = false
      inverted                  = false
      type                      = "callAnalysisCondition"
      value                     = "disposition.classification.callable.machine"
      operator                  = "EQUALS"
    }
    name = "Test Wrap-Up Rule"
  }
  rules {
    conditions {
      type                      = "callAnalysisCondition"
      inverted                  = false
      operator                  = "EQUALS"
      value                     = "disposition.classification.callable.machine"
      data_not_found_resolution = false
    }
    name  = "Test Wrap-Up Rule 2"
    order = 1
    actions {
      properties = {
        custom4 = "Current Time when Action Taken"
      }
      type             = "modifyContactAttribute"
      update_option    = "CURRENT_TIME"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    category = "DIALER_WRAPUP"
  }
  rules {
    order = 2
    actions {
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        custom1 = "DN"
      }
      type          = "modifyContactAttribute"
      update_option = "SET"
    }
    actions {
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      update_option    = "SET"
      properties = {
        custom2 = "A"
      }
      type = "modifyContactAttribute"
    }
    actions {
      properties = {
        custom3 = "Answered"
      }
      type             = "modifyContactAttribute"
      update_option    = "SET"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    actions {
      type = "modifyContactAttribute"
      properties = {
        custom4 = "Current Time when Action Taken"
      }
      update_option    = "CURRENT_TIME"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    category = "DIALER_WRAPUP"
    conditions {
      type                      = "wrapupCondition"
      data_not_found_resolution = false
      inverted                  = false
    }
    name = "Wrap Code Colum Update Test -Dev"
  }
  rules {
    order = 3
    actions {
      type = "Action"
      properties = {
        callbackOffset = "120"
      }
      action_type_name = "SCHEDULE_CALLBACK"
    }
    category = "DIALER_WRAPUP"
    conditions {
      data_not_found_resolution = false
      inverted                  = false
      operator                  = "EQUALS"
      type                      = "callAnalysisCondition"
      value                     = "disposition.classification.callable.busy"
    }
    name = "EUSA - Call Back Busy Numbers in 120 Minutes - Dev"
  }
}

resource "genesyscloud_outbound_ruleset" "EUSA_-_Mark_Contact_as_Uncallable_1726952288" {
  name = "EUSA - Mark Contact as Uncallable"
  rules {
    actions {
      action_type_name = "CONTACT_UNCALLABLE"
      properties = {
        Action = "CONTACT_UNCALLABLE"
      }
      type = "Action"
    }
    category = "DIALER_PRECALL"
    conditions {
      inverted                  = false
      operator                  = "EQUALS"
      data_not_found_resolution = false
      type                      = "phoneNumberCondition"
      value                     = "7802034787"
    }
    name = "Mark Contact as Uncallable"
  }
}

resource "genesyscloud_outbound_ruleset" "EUSA_-__BLANKS_2623744615" {
  contact_list_id = "${genesyscloud_outbound_contact_list.JPT_-_HighWater_-_Contact_List_3223492868.id}"
  name            = "EUSA -  BLANKS"
  rules {
    name = "Child Alert Type"
    actions {
      properties = {
        "Child Alert Type" = "O"
      }
      type             = "modifyContactAttribute"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      update_option    = "SET"
    }
    category = "DIALER_WRAPUP"
    conditions {
      value                     = "Daytime"
      data_not_found_resolution = false
      operator                  = "EQUALS"
      type                      = "phoneNumberTypeCondition"
      inverted                  = false
    }
  }
  rules {
    actions {
      type             = "modifyContactAttribute"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      update_option    = "CURRENT_TIME"
      properties = {
        "Date Alert Sent" = "Current Time when Action Taken"
      }
    }
    actions {
      properties = {
        "Time Alert Sent" = "Current Time when Action Taken"
      }
      type             = "modifyContactAttribute"
      update_option    = "CURRENT_TIME"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    category = "DIALER_WRAPUP"
    conditions {
      operator                  = "EQUALS"
      type                      = "phoneNumberTypeCondition"
      data_not_found_resolution = false
      value                     = "Daytime"
      inverted                  = false
    }
    name  = "Date and Time Alert Sent"
    order = 1
  }
  rules {
    category = "DIALER_WRAPUP"
    conditions {
      data_not_found_resolution = false
      type                      = "phoneNumberTypeCondition"
      inverted                  = false
      operator                  = "EQUALS"
      value                     = "Daytime"
    }
    name  = "Transfer Result Indicator"
    order = 2
    actions {
      properties = {
        "Transfer Result Indicator" = "N"
      }
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      type             = "modifyContactAttribute"
      update_option    = "SET"
    }
  }
  rules {
    category = "DIALER_WRAPUP"
    conditions {
      inverted                  = false
      operator                  = "EQUALS"
      value                     = "Daytime"
      data_not_found_resolution = false
      type                      = "phoneNumberTypeCondition"
    }
    name  = "Zero Fills"
    order = 3
    actions {
      properties = {
        "Transfer Phone Number" = "0"
      }
      update_option    = "SET"
      type             = "modifyContactAttribute"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
    }
    actions {
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        "Hold Duration" = "0"
      }
      type          = "modifyContactAttribute"
      update_option = "SET"
    }
    actions {
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      properties = {
        "Call Duration After Transfer" = "0"
      }
      type          = "modifyContactAttribute"
      update_option = "SET"
    }
    actions {
      properties = {
        "Inbound Phone Number" = "0"
      }
      type             = "modifyContactAttribute"
      action_type_name = "MODIFY_CONTACT_ATTRIBUTE"
      update_option    = "SET"
    }
  }
}

resource "genesyscloud_outbound_ruleset" "Test_JO_1920720014" {
  name = "Test JO"
}

resource "genesyscloud_outbound_callanalysisresponseset" "Default_Response_Set_981040257" {
  name = "Default Response Set"
  responses {
    uncallable_sit {
      reaction_type = "hangup"
    }
    callable_machine {
      reaction_type = "hangup"
    }
    callable_noanswer {
      reaction_type = "hangup"
    }
    callable_person {
      reaction_type = "transfer"
    }
    callable_sit {
      reaction_type = "hangup"
    }
    uncallable_notfound {
      reaction_type = "hangup"
    }
    callable_busy {
      reaction_type = "hangup"
    }
    callable_disconnect {
      reaction_type = "hangup"
    }
    callable_fax {
      reaction_type = "hangup"
    }
  }
}

resource "genesyscloud_outbound_callanalysisresponseset" "Collections_-_Call_Analysis_Response_2229861016" {
  beep_detection_enabled = true
  name                   = "Collections - Call Analysis Response"
  responses {
    callable_busy {
      reaction_type = "hangup"
    }
    callable_disconnect {
      reaction_type = "hangup"
    }
    callable_noanswer {
      reaction_type = "hangup"
    }
    callable_person {
      data          = "${genesyscloud_flow.EUSA_OB_Collections_Customer_PROD.id}"
      name          = "EUSA_OB_Collections_Customer_PROD"
      reaction_type = "transfer_flow"
    }
    callable_sit {
      reaction_type = "hangup"
    }
    uncallable_sit {
      reaction_type = "hangup"
    }
    callable_fax {
      reaction_type = "hangup"
    }
    callable_machine {
      reaction_type = "transfer_flow"
      data          = "${genesyscloud_flow.EUSA_OB_Collections_Voicemail_PROD.id}"
      name          = "EUSA_OB_Collections_Voicemail_PROD"
    }
    uncallable_notfound {
      reaction_type = "hangup"
    }
  }
}

resource "genesyscloud_outbound_callanalysisresponseset" "Collections_UAT_Call_Analysis_2754018488" {
  beep_detection_enabled = true
  name                   = "Collections UAT Call Analysis"
  responses {
    callable_disconnect {
      reaction_type = "hangup"
    }
    callable_noanswer {
      reaction_type = "hangup"
    }
    uncallable_sit {
      reaction_type = "hangup"
    }
    callable_sit {
      reaction_type = "hangup"
    }
    uncallable_notfound {
      reaction_type = "hangup"
    }
    callable_busy {
      reaction_type = "hangup"
    }
    callable_fax {
      reaction_type = "hangup"
    }
    callable_machine {
      name          = "EUSA_OB_Collections_Voicemail_UAT"
      reaction_type = "transfer_flow"
      data          = "${genesyscloud_flow.EUSA_OB_Collections_Voicemail_UAT.id}"
    }
    callable_person {
      data          = "${genesyscloud_flow.EUSA_OB_Collections_Customer_UAT.id}"
      name          = "EUSA_OB_Collections_Customer_UAT"
      reaction_type = "transfer_flow"
    }
  }
}

resource "genesyscloud_outbound_callanalysisresponseset" "High_Water_-_Call_Analysis_Response_2427016056" {
  beep_detection_enabled = true
  name                   = "High Water - Call Analysis Response"
  responses {
    callable_disconnect {
      reaction_type = "hangup"
    }
    callable_person {
      data          = "${genesyscloud_flow.EUSA_OB_HighWater_Customer_PROD.id}"
      name          = "EUSA_OB_HighWater_Customer_PROD"
      reaction_type = "transfer_flow"
    }
    callable_sit {
      reaction_type = "hangup"
    }
    uncallable_sit {
      reaction_type = "hangup"
    }
    callable_busy {
      reaction_type = "hangup"
    }
    callable_fax {
      reaction_type = "hangup"
    }
    callable_machine {
      name          = "EUSA_OB_HighWater_Voicemail_PROD"
      reaction_type = "transfer_flow"
      data          = "${genesyscloud_flow.EUSA_OB_HighWater_Voicemail_PROD.id}"
    }
    callable_noanswer {
      reaction_type = "hangup"
    }
    uncallable_notfound {
      reaction_type = "hangup"
    }
  }
}

resource "genesyscloud_outbound_campaign" "EUSA_HighUsage_IST" {
  no_answer_timeout             = 60
  priority                      = 5
  call_analysis_response_set_id = "${genesyscloud_outbound_callanalysisresponseset.Collections_UAT_Call_Analysis_2754018488.id}"
  campaign_status               = "off"
  outbound_line_count           = 10
  contact_list_id               = "${genesyscloud_outbound_contact_list.EUSA_TestMW_CO__Sly_479921762.id}"
  dialing_mode                  = "agentless"
  preview_time_out_seconds      = 0
  rule_set_ids                  = ["${genesyscloud_outbound_ruleset.EUSA_-_Terminal_Check_Point__Alert_Status__Alert_Result_3015274809.id}", "${genesyscloud_outbound_ruleset.EUSA_-__BLANKS_2623744615.id}", "${genesyscloud_outbound_ruleset.EUSA_-_Custom_Attempt_Rule_Set_4064565590.id}"]
  name                          = "EUSA_HighUsage_IST"
  skip_preview_disabled         = false
  caller_address                = "+18003830834"
  caller_name                   = "EPCOR USA"
  always_running                = false
  abandon_rate                  = 5
  phone_columns {
    type        = "Daytime"
    column_name = "Media Address"
  }
}

resource "genesyscloud_outbound_campaign" "EUSA_-_Collections_PROD_3345388107" {
  preview_time_out_seconds = 0
  priority                 = 5
  always_running           = false
  skip_preview_disabled    = false
  outbound_line_count      = 10
  no_answer_timeout        = 60
  phone_columns {
    column_name = "Media Address"
    type        = "Daytime"
  }
  caller_address                = "+18003830834"
  campaign_status               = "off"
  dialing_mode                  = "agentless"
  contact_list_id               = "${genesyscloud_outbound_contact_list.EUSA_-_Collections_PROD_3345388107.id}"
  name                          = "EUSA - Collections_PROD"
  caller_name                   = "EPCOR USA"
  rule_set_ids                  = ["${genesyscloud_outbound_ruleset.EUSA_-_Terminal_Check_Point__Alert_Status__Alert_Result_3015274809.id}", "${genesyscloud_outbound_ruleset.EUSA_-__BLANKS_2623744615.id}", "${genesyscloud_outbound_ruleset.EUSA_-_Schedule_Callbacks_Rule_Set_840489549.id}", "${genesyscloud_outbound_ruleset.EUSA_-_Custom_Attempt_Rule_Set_4064565590.id}"]
  abandon_rate                  = 5
  call_analysis_response_set_id = "${genesyscloud_outbound_callanalysisresponseset.Collections_-_Call_Analysis_Response_2229861016.id}"
}

resource "genesyscloud_outbound_campaign" "EUSA_CollTest_Chris_UAT" {
  dialing_mode                  = "agentless"
  no_answer_timeout             = 60
  priority                      = 5
  rule_set_ids                  = ["${genesyscloud_outbound_ruleset.EUSA_-_Terminal_Check_Point__Alert_Status__Alert_Result_3015274809.id}", "${genesyscloud_outbound_ruleset.EUSA_-__BLANKS_2623744615.id}", "${genesyscloud_outbound_ruleset.EUSA_-_Custom_Attempt_Rule_Set_4064565590.id}"]
  call_analysis_response_set_id = "${genesyscloud_outbound_callanalysisresponseset.Collections_UAT_Call_Analysis_2754018488.id}"
  caller_address                = "+18003830834"
  contact_list_id               = "${genesyscloud_outbound_contact_list.EUSA_CollTest_Chris.id}"
  always_running                = false
  outbound_line_count           = 10
  preview_time_out_seconds      = 0
  abandon_rate                  = 5
  name                          = "EUSA_CollTest_Chris_UAT"
  phone_columns {
    type        = "Home"
    column_name = "Media Address"
  }
  campaign_status       = "off"
  skip_preview_disabled = false
  caller_name           = "EPCOR USA"
}

resource "genesyscloud_outbound_campaign" "EUSA_-_High_Water_PROD_3985185501" {
  campaign_status          = "off"
  dialing_mode             = "agentless"
  preview_time_out_seconds = 0
  always_running           = false
  no_answer_timeout        = 60
  skip_preview_disabled    = false
  caller_name              = "EPCOR USA"
  priority                 = 5
  phone_columns {
    column_name = "Media Address"
    type        = "Daytime"
  }
  rule_set_ids                  = ["${genesyscloud_outbound_ruleset.EUSA_-__BLANKS_2623744615.id}", "${genesyscloud_outbound_ruleset.EUSA_-_Terminal_Check_Point__Alert_Status__Alert_Result_3015274809.id}", "${genesyscloud_outbound_ruleset.EUSA_-_Schedule_Callbacks_Rule_Set_840489549.id}", "${genesyscloud_outbound_ruleset.EUSA_-_Custom_Attempt_Rule_Set_4064565590.id}"]
  abandon_rate                  = 5
  call_analysis_response_set_id = "${genesyscloud_outbound_callanalysisresponseset.High_Water_-_Call_Analysis_Response_2427016056.id}"
  outbound_line_count           = 5
  caller_address                = "+18003830834"
  name                          = "EUSA - High Water_PROD"
  contact_list_id               = "${genesyscloud_outbound_contact_list.EUSA_-_High_Water_PROD_3985185501.id}"
}

resource "genesyscloud_outbound_campaign" "EUSA_Collections_IST" {
  always_running                = false
  caller_address                = "+18337189933"
  campaign_status               = "off"
  outbound_line_count           = 10
  rule_set_ids                  = ["${genesyscloud_outbound_ruleset.EUSA_-_Terminal_Check_Point__Alert_Status__Alert_Result_3015274809.id}", "${genesyscloud_outbound_ruleset.EUSA_-__BLANKS_2623744615.id}"]
  abandon_rate                  = 5
  contact_list_id               = "${genesyscloud_outbound_contact_list.EUSA_TestMW_CL__Sly_3465206803.id}"
  call_analysis_response_set_id = "${genesyscloud_outbound_callanalysisresponseset.Collections_UAT_Call_Analysis_2754018488.id}"
  caller_name                   = "EPCOR USA"
  name                          = "EUSA_Collections_IST"
  priority                      = 5
  phone_columns {
    column_name = "Media Address"
    type        = "Daytime"
  }
  preview_time_out_seconds = 0
  skip_preview_disabled    = false
  no_answer_timeout        = 60
  dialing_mode             = "agentless"
}

resource "genesyscloud_outbound_settings" "outbound_settings" {
}



