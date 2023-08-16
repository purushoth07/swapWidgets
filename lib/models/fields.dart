import 'dart:convert';

List<WidgetFields> widgetFieldsFromJson(String str) => List<WidgetFields>.from(json.decode(str)['data'].map((x) => WidgetFields.fromJson(x)));

String widgetFieldsToJson(List<WidgetFields> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WidgetFields {
  int? id;
  int? activityId;
  int? fieldId;
  int? sequenceNo;
  String? isVisible;
  String? validationId;
  String? isMandatory;
  String? layoutParams;
  String? backgroundColourCode;
  String? textColourCode;
  String? paramsHeight;
  String? paramsWidth;
  double? layoutWeight;
  String? extraParams;
  String? alignment;
  String? parentLayoutId;
  String? orientation;
  String? isEditable;
  int? fontSize;
  String? fontStyle;
  String? dataType;
  String? topSpace;
  String? bottomSpace;
  String? rightSpace;
  String? leftSpace;
  String? clickable;
  int? dependencyId;
  String? codedValueType;
  String? hasDependency;
  String? fieldsSession;
  String? labelName;
  String? inputType;
  int? inputLength;
  String? validation;
  String? fieldName;
  String? title;
  String? values;
  String? variableParams;
  String? imagePathRequried;
  int? tabId;
  String? labelNameLocal;
  String? appLanguage;
  dynamic displayDataFrom;
  dynamic refTblId;
  dynamic belowId;
  dynamic topOfId;
  dynamic rightOfId;
  dynamic leftOfId;
  dynamic alertType;
  dynamic defaultValue;
  dynamic extraControlsData;
  dynamic parentAlignment;
  dynamic messageId;
  dynamic alertMessage;
  dynamic jsonElement;
  dynamic imagePath;
  dynamic dropDownValues;
  String? deviceType;
  dynamic sendFieldsAs;
  dynamic activitySaveSession;
  String? companyCode;
  dynamic holidayMasterData;
  dynamic maskedData;
  dynamic fontFamily;
  dynamic borderStyle;
  dynamic borderStyles;
  dynamic minDate;
  dynamic maxDate;
  dynamic noOfDates;
  dynamic frequency;
  String? appCode;

  WidgetFields({
    this.id,
    this.activityId,
    this.fieldId,
    this.sequenceNo,
    this.isVisible,
    this.validationId,
    this.isMandatory,
    this.layoutParams,
    this.backgroundColourCode,
    this.textColourCode,
    this.paramsHeight,
    this.paramsWidth,
    this.layoutWeight,
    this.extraParams,
    this.alignment,
    this.parentLayoutId,
    this.orientation,
    this.isEditable,
    this.fontSize,
    this.fontStyle,
    this.dataType,
    this.topSpace,
    this.bottomSpace,
    this.rightSpace,
    this.leftSpace,
    this.clickable,
    this.dependencyId,
    this.codedValueType,
    this.hasDependency,
    this.fieldsSession,
    this.labelName,
    this.inputType,
    this.inputLength,
    this.validation,
    this.fieldName,
    this.title,
    this.values,
    this.variableParams,
    this.imagePathRequried,
    this.tabId,
    this.labelNameLocal,
    this.appLanguage,
    this.displayDataFrom,
    this.refTblId,
    this.belowId,
    this.topOfId,
    this.rightOfId,
    this.leftOfId,
    this.alertType,
    this.defaultValue,
    this.extraControlsData,
    this.parentAlignment,
    this.messageId,
    this.alertMessage,
    this.jsonElement,
    this.imagePath,
    this.dropDownValues,
    this.deviceType,
    this.sendFieldsAs,
    this.activitySaveSession,
    this.companyCode,
    this.holidayMasterData,
    this.maskedData,
    this.fontFamily,
    this.borderStyle,
    this.borderStyles,
    this.minDate,
    this.maxDate,
    this.noOfDates,
    this.frequency,
    this.appCode,
  });

  factory WidgetFields.fromJson(Map<String, dynamic> json) => WidgetFields(
    id: json["id"],
    activityId: json["activityId"],
    fieldId: json["fieldId"],
    sequenceNo: json["sequenceNo"],
    isVisible: json["isVisible"],
    validationId: json["validationId"],
    isMandatory: json["isMandatory"],
    layoutParams: json["layoutParams"],
    backgroundColourCode: json["backgroundColourCode"],
    textColourCode: json["textColourCode"],
    paramsHeight: json["paramsHeight"],
    paramsWidth: json["paramsWidth"],
    layoutWeight: json["layoutWeight"],
    extraParams: json["extraParams"],
    alignment: json["alignment"],
    parentLayoutId: json["parentLayoutId"],
    orientation: json["orientation"],
    isEditable: json["isEditable"],
    fontSize: json["fontSize"],
    fontStyle: json["fontStyle"],
    dataType: json["dataType"],
    topSpace: json["topSpace"],
    bottomSpace: json["bottomSpace"],
    rightSpace: json["rightSpace"],
    leftSpace: json["leftSpace"],
    clickable: json["clickable"],
    dependencyId: json["dependencyId"],
    codedValueType: json["codedValueType"],
    hasDependency: json["hasDependency"],
    fieldsSession: json["fieldsSession"],
    labelName: json["labelName"],
    inputType: json["inputType"],
    inputLength: json["inputLength"],
    validation: json["validation"],
    fieldName: json["fieldName"],
    title: json["title"],
    values: json["values"],
    variableParams: json["variableParams"],
    imagePathRequried: json["imagePathRequried"],
    tabId: json["tabId"],
    labelNameLocal: json["labelNameLocal"],
    appLanguage: json["appLanguage"],
    displayDataFrom: json["displayDataFrom"],
    refTblId: json["refTblId"],
    belowId: json["belowId"],
    topOfId: json["topOfId"],
    rightOfId: json["rightOfId"],
    leftOfId: json["leftOfId"],
    alertType: json["alertType"],
    defaultValue: json["defaultValue"],
    extraControlsData: json["extraControlsData"],
    parentAlignment: json["parentAlignment"],
    messageId: json["messageId"],
    alertMessage: json["alertMessage"],
    jsonElement: json["jsonElement"],
    imagePath: json["imagePath"],
    dropDownValues: json["dropDownValues"],
    deviceType: json["deviceType"],
    sendFieldsAs: json["sendFieldsAs"],
    activitySaveSession: json["activitySaveSession"],
    companyCode: json["companyCode"],
    holidayMasterData: json["holidayMasterData"],
    maskedData: json["maskedData"],
    fontFamily: json["fontFamily"],
    borderStyle: json["borderStyle"],
    borderStyles: json["borderStyles"],
    minDate: json["minDate"],
    maxDate: json["maxDate"],
    noOfDates: json["noOfDates"],
    frequency: json["frequency"],
    appCode: json["appCode"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "activityId": activityId,
    "fieldId": fieldId,
    "sequenceNo": sequenceNo,
    "isVisible": isVisible,
    "validationId": validationId,
    "isMandatory": isMandatory,
    "layoutParams": layoutParams,
    "backgroundColourCode": backgroundColourCode,
    "textColourCode": textColourCode,
    "paramsHeight": paramsHeight,
    "paramsWidth": paramsWidth,
    "layoutWeight": layoutWeight,
    "extraParams": extraParams,
    "alignment": alignment,
    "parentLayoutId": parentLayoutId,
    "orientation": orientation,
    "isEditable": isEditable,
    "fontSize": fontSize,
    "fontStyle": fontStyle,
    "dataType": dataType,
    "topSpace": topSpace,
    "bottomSpace": bottomSpace,
    "rightSpace": rightSpace,
    "leftSpace": leftSpace,
    "clickable": clickable,
    "dependencyId": dependencyId,
    "codedValueType": codedValueType,
    "hasDependency": hasDependency,
    "fieldsSession": fieldsSession,
    "labelName": labelName,
    "inputType": inputType,
    "inputLength": inputLength,
    "validation": validation,
    "fieldName": fieldName,
    "title": title,
    "values": values,
    "variableParams": variableParams,
    "imagePathRequried": imagePathRequried,
    "tabId": tabId,
    "labelNameLocal": labelNameLocal,
    "appLanguage": appLanguage,
    "displayDataFrom": displayDataFrom,
    "refTblId": refTblId,
    "belowId": belowId,
    "topOfId": topOfId,
    "rightOfId": rightOfId,
    "leftOfId": leftOfId,
    "alertType": alertType,
    "defaultValue": defaultValue,
    "extraControlsData": extraControlsData,
    "parentAlignment": parentAlignment,
    "messageId": messageId,
    "alertMessage": alertMessage,
    "jsonElement": jsonElement,
    "imagePath": imagePath,
    "dropDownValues": dropDownValues,
    "deviceType": deviceType,
    "sendFieldsAs": sendFieldsAs,
    "activitySaveSession": activitySaveSession,
    "companyCode": companyCode,
    "holidayMasterData": holidayMasterData,
    "maskedData": maskedData,
    "fontFamily": fontFamily,
    "borderStyle": borderStyle,
    "borderStyles": borderStyles,
    "minDate": minDate,
    "maxDate": maxDate,
    "noOfDates": noOfDates,
    "frequency": frequency,
    "appCode": appCode,
  };
}
