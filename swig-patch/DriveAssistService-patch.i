%ignore GET_MODE_ID;
%ignore MODE_CHANGED_ID;
%ignore GET_WARNING_LEFT_ID;
%ignore WARNING_LEFT_CHANGED_ID;
%ignore GET_WARNING_RIGHT_ID;
%ignore WARNING_RIGHT_CHANGED_ID;
%ignore GET_STATUS_ID;
%ignore STATUS_CHANGED_ID;
%ignore GET_WARNING_POS_ID;
%ignore WARNING_POS_CHANGED_ID;
%rename (AssistanceVisualizationServiceParameters__getMode_result) cluster::driveAssist::AssistanceVisualizationServiceParameters::getMode_result;
%rename (AttentionAssistServiceParameters__getMode_result) cluster::driveAssist::AttentionAssistServiceParameters::getMode_result;
%rename (BSMServiceParameters__getWarningLeft_result) cluster::driveAssist::BSMServiceParameters::getWarningLeft_result;
%rename (SRAServiceParameters__getWarningLeft_result) cluster::driveAssist::SRAServiceParameters::getWarningLeft_result;
%rename (DSRServiceParameters__getStatus_result) cluster::driveAssist::DSRServiceParameters::getStatus_result;
%rename (BSMServiceParameters__getStatus_result) cluster::driveAssist::BSMServiceParameters::getStatus_result;
%rename (LDPServiceParameters__getStatus_result) cluster::driveAssist::LDPServiceParameters::getStatus_result;
%rename (LDPServiceParameters__getWarningPos_result) cluster::driveAssist::LDPServiceParameters::getWarningPos_result;
%rename (BSMServiceParameters__getWarningPos_result) cluster::driveAssist::BSMServiceParameters::getWarningPos_result;