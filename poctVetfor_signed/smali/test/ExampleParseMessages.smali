.class public Ltest/ExampleParseMessages;
.super Ljava/lang/Object;
.source "ExampleParseMessages.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DSR_Q03()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1268
    new-instance v1, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;

    invoke-direct {v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;-><init>()V

    .line 1270
    .local v1, "dsr":Lca/uhn/hl7v2/model/v24/message/DSR_Q03;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v2

    .line 1271
    .local v2, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "^~\\&"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1281
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1282
    .local v3, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "DSR"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "Q03"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "DSR_Q03"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "2.4"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "CHN"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "UTF8"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getMSA()Lca/uhn/hl7v2/model/v24/segment/MSA;

    move-result-object v4

    .line 1295
    .local v4, "msaSegment":Lca/uhn/hl7v2/model/v24/segment/MSA;
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getAcknowledgementCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v5

    const-string v6, "AA"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTextMessage()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u5e94\u7528\u7a0b\u5e8f\u5185\u90e8\u9519\u8bef"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getErrorCondition()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getERR()Lca/uhn/hl7v2/model/v24/segment/ERR;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/ELD;->getCodeIdentifyingError()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v7, "0"

    invoke-virtual {v5, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1304
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getQAK()Lca/uhn/hl7v2/model/v24/segment/QAK;

    move-result-object v5

    .line 1305
    .local v5, "qakSegment":Lca/uhn/hl7v2/model/v24/segment/QAK;
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/QAK;->getQueryTag()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "SR"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/QAK;->getQueryResponseStatus()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v7

    const-string v8, "OK"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getQRD()Lca/uhn/hl7v2/model/v24/segment/QRD;

    move-result-object v7

    .line 1310
    .local v7, "qrdSegment":Lca/uhn/hl7v2/model/v24/segment/QRD;
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v8

    const-string v9, "20151210130202"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryFormatCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v8

    const-string v9, "R"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryPriority()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v8

    const-string v9, "D"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u9012\u589eID"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQuantityLimitedRequest()Lca/uhn/hl7v2/model/v24/datatype/CQ;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/CQ;->getQuantity()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQuantityLimitedRequest()Lca/uhn/hl7v2/model/v24/datatype/CQ;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/CQ;->getUnits()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u5355\u4f4d"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v7, v6}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getWhatSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "OTH"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryResultsLevel()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v8

    const-string v9, "T"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getQRF()Lca/uhn/hl7v2/model/v24/segment/QRF;

    move-result-object v8

    .line 1321
    .local v8, "qrfSegment":Lca/uhn/hl7v2/model/v24/segment/QRF;
    invoke-virtual {v8, v6}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhereSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u67e5\u8be2\u7cfb\u7edf/\u8bbe\u5907"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhenDataStartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v9

    const-string v10, "20151210130202"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhenDataEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v9

    const-string v10, "20151210130202"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {v8, v6}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhichDateTimeQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v9

    const-string v10, "RC"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {v8, v6}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhichDateTimeStatusQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v9

    const-string v10, "COR"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v8, v6}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getDateTimeSelectionQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v9

    const-string v10, "ALL"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u4f4f\u9662\u53f7"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1334
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "2"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u5e8a\u53f7"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1337
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "3"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u59d3\u540d"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1340
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "4"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u51fa\u751f\u65e5\u671f"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1343
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "5"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u6027\u522b"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1346
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "6"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u8840\u578b"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1349
    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "7"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u75c5\u5386\u53f7"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1352
    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "8"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u5730\u5740"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1355
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "10"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u5bb6\u5ead\u7535\u8bdd"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1358
    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "11"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u624b\u673a\u53f7"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1361
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "12"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u8eab\u4efd\u8bc1\u53f7"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1364
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "15"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u75c5\u4eba\u7c7b\u522b"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1367
    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "16"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u793e\u4fdd\u53f7"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1370
    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "17"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u6536\u8d39\u7c7b\u578b"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1373
    const/16 v6, 0xe

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "18"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u6c11\u65cf"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1376
    const/16 v6, 0xf

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v9, "19"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1377
    const/16 v6, 0xf

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u51fa\u751f\u5730"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1379
    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v9, "20"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1380
    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u56fd\u5bb6"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1382
    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v9, "21"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1383
    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u6837\u672c\u6761\u7801"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1385
    const/16 v6, 0x12

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v9, "22"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1386
    const/16 v6, 0x12

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u6837\u672c\u7f16\u53f7"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1388
    const/16 v6, 0x13

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v9, "23"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1389
    const/16 v6, 0x13

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u9001\u68c0\u65f6\u95f4"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1391
    const/16 v6, 0x14

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v9, "24"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1392
    const/16 v6, 0x14

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u662f\u5426\u6025\u75b9"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1394
    const/16 v6, 0x15

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v9, "26"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1395
    const/16 v6, 0x15

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u6837\u672c\u7c7b\u578b"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1397
    const/16 v6, 0x16

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v9, "27"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1398
    const/16 v6, 0x16

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u9001\u68c0\u533b\u751f"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1400
    const/16 v6, 0x17

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v9, "28"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1401
    const/16 v6, 0x17

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u9001\u68c0\u79d1\u5ba4"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1403
    const/16 v6, 0x18

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v9, "29"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1404
    const/16 v6, 0x18

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u9879\u76eeID"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1406
    const/16 v6, 0x19

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v9, "30"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1407
    const/16 v6, 0x19

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u9879\u76ee\u540d\u79f0"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1409
    const/16 v6, 0x1a

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v9, "31"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1410
    const/16 v6, 0x1a

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u5355\u4f4d"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1412
    const/16 v6, 0x1b

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getSetIDDSP()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v9, "32"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1413
    const/16 v6, 0x1b

    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v6

    const-string v9, "\u53c2\u8003\u8303\u56f4"

    invoke-virtual {v6, v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->setValue(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSC()Lca/uhn/hl7v2/model/v24/segment/DSC;

    move-result-object v6

    .line 1416
    .local v6, "dscSegment":Lca/uhn/hl7v2/model/v24/segment/DSC;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationPointer()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationStyle()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1424
    new-instance v9, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v9}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 1430
    .local v9, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v9}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v10

    .line 1431
    .local v10, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v10, v1}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v11

    .line 1432
    .local v11, "encodedMessage":Ljava/lang/String;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "Printing ER7 Encoded Message:"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1433
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1439
    :try_start_0
    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v12
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    .local v12, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 1445
    nop

    .line 1449
    move-object v13, v12

    check-cast v13, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;

    .line 1451
    .local v13, "orfMsg":Lca/uhn/hl7v2/model/v24/message/DSR_Q03;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v14

    .line 1452
    .local v14, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getMSA()Lca/uhn/hl7v2/model/v24/segment/MSA;

    move-result-object v15

    .line 1453
    .local v15, "msa":Lca/uhn/hl7v2/model/v24/segment/MSA;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getQRD()Lca/uhn/hl7v2/model/v24/segment/QRD;

    move-result-object v16

    .line 1454
    .local v16, "qrd":Lca/uhn/hl7v2/model/v24/segment/QRD;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getQRF()Lca/uhn/hl7v2/model/v24/segment/QRF;

    move-result-object v17

    .line 1455
    .local v17, "qrf":Lca/uhn/hl7v2/model/v24/segment/QRF;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getQAK()Lca/uhn/hl7v2/model/v24/segment/QAK;

    move-result-object v18

    .line 1456
    .local v18, "qak":Lca/uhn/hl7v2/model/v24/segment/QAK;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getERR()Lca/uhn/hl7v2/model/v24/segment/ERR;

    move-result-object v19

    .line 1458
    .local v19, "err":Lca/uhn/hl7v2/model/v24/segment/ERR;
    move-object/from16 v20, v2

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSPReps()I

    move-result v2

    .line 1459
    .local v2, "dspSize":I
    .local v20, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    const/16 v21, 0x0

    .line 1459
    .local v21, "i":I
    move-object/from16 v22, v3

    move/from16 v3, v21

    .line 1459
    .end local v21    # "i":I
    .local v3, "i":I
    .local v22, "df":Ljava/text/SimpleDateFormat;
    :goto_0
    if-lt v3, v2, :cond_0

    .line 1463
    .end local v3    # "i":I
    return-void

    .line 1460
    .restart local v3    # "i":I
    :cond_0
    invoke-virtual {v1, v3}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    .line 1459
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1443
    .end local v12    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v13    # "orfMsg":Lca/uhn/hl7v2/model/v24/message/DSR_Q03;
    .end local v14    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v15    # "msa":Lca/uhn/hl7v2/model/v24/segment/MSA;
    .end local v16    # "qrd":Lca/uhn/hl7v2/model/v24/segment/QRD;
    .end local v17    # "qrf":Lca/uhn/hl7v2/model/v24/segment/QRF;
    .end local v18    # "qak":Lca/uhn/hl7v2/model/v24/segment/QAK;
    .end local v19    # "err":Lca/uhn/hl7v2/model/v24/segment/ERR;
    .end local v20    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v22    # "df":Ljava/text/SimpleDateFormat;
    .local v2, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .local v3, "df":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    .line 1443
    .end local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .restart local v20    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v22    # "df":Ljava/text/SimpleDateFormat;
    move-object v2, v0

    .line 1444
    .local v2, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1445
    return-void

    .line 1440
    .end local v20    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v22    # "df":Ljava/text/SimpleDateFormat;
    .local v2, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v3    # "df":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    .line 1440
    .end local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .restart local v20    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v22    # "df":Ljava/text/SimpleDateFormat;
    move-object v2, v0

    .line 1441
    .local v2, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1442
    return-void
.end method

.method public static DeviceStateQuery()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 496
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/ESR_U02;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/ESR_U02;-><init>()V

    .line 498
    .local v0, "esr":Lca/uhn/hl7v2/model/v24/message/ESR_U02;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/ESR_U02;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 499
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 509
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 510
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "ESR"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "U02"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "ESR_U02"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/ESR_U02;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v3

    .line 523
    .local v3, "equSegment":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getEntityIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u673a\u6784ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEventDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/ESR_U02;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v4

    .line 530
    .local v4, "rolSegment":Lca/uhn/hl7v2/model/v24/segment/ROL;
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleInstanceID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u89d2\u8272\u5b9e\u4f8bID"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getActionCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v5

    const-string v6, "\u884c\u4e3a\u7801"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u89d2\u8272ID"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u89d2\u8272\u63cf\u8ff0"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRolePerson()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u89d2\u8272\u4eba"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u884c\u52a8\u539f\u56e0ID"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u884c\u52a8\u539f\u56e0\u63cf\u8ff0"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u7ec4\u7ec7ID"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u7ec4\u7ec7\u63cf\u8ff0"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 539
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/XAD;->getStreetAddress()Lca/uhn/hl7v2/model/v24/datatype/SAD;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/SAD;->getStreetOrMailingAddress()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u529e\u516c\u5ba4/\u5bb6\u5ead\u8be6\u7ec6\u5730\u5740"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getPhone()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u89d2\u8272\u5b9e\u4f8b\u8054\u7cfb\u65b9\u5f0f"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 548
    new-instance v5, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v5}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 554
    .local v5, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v5}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v6

    .line 555
    .local v6, "parser":Lca/uhn/hl7v2/parser/Parser;
    const/4 v7, 0x0

    .line 557
    .local v7, "encodedMessage":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    .line 558
    goto :goto_0

    :catch_0
    move-exception v8

    .line 560
    .local v8, "e1":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v8}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 562
    .end local v8    # "e1":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Printing ER7 Encoded Message:"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 563
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 569
    :try_start_1
    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v8
    :try_end_1
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 570
    .local v8, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 575
    nop

    .line 579
    move-object v9, v8

    check-cast v9, Lca/uhn/hl7v2/model/v24/message/ESR_U02;

    .line 581
    .local v9, "esuMsg":Lca/uhn/hl7v2/model/v24/message/ESR_U02;
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/message/ESR_U02;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v10

    .line 582
    .local v10, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/message/ESR_U02;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v11

    .line 583
    .local v11, "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/message/ESR_U02;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v12

    .line 584
    .local v12, "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    return-void

    .line 573
    .end local v8    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v9    # "esuMsg":Lca/uhn/hl7v2/model/v24/message/ESR_U02;
    .end local v10    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v11    # "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    .end local v12    # "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    :catch_1
    move-exception v8

    .line 574
    .local v8, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v8}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 575
    return-void

    .line 570
    .end local v8    # "e":Lca/uhn/hl7v2/HL7Exception;
    :catch_2
    move-exception v8

    .line 571
    .local v8, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v8}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 572
    return-void
.end method

.method public static DeviceStateUpdate()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 392
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/ESU_U01;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/ESU_U01;-><init>()V

    .line 394
    .local v0, "esu":Lca/uhn/hl7v2/model/v24/message/ESU_U01;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/ESU_U01;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 395
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 405
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 406
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "ESU"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "U01"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "ESU_U01"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/ESU_U01;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v3

    .line 419
    .local v3, "equSegment":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getEntityIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u673a\u6784ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEventDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u72b6\u6001\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u72b6\u6001\u6587\u672c"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getLocalRemoteControlState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u672c\u5730/\u8fdc\u7a0b\u63a7\u5236\u72b6\u6001\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getLocalRemoteControlState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u672c\u5730/\u8fdc\u7a0b\u63a7\u5236\u72b6\u6001\u6587\u672c"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getAlertLevel()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u544a\u8b66\u7ea7\u522b\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getAlertLevel()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u544a\u8b66\u7ea7\u522b\u6587\u672c"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 431
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lca/uhn/hl7v2/model/v24/message/ESU_U01;->getISD(I)Lca/uhn/hl7v2/model/v24/segment/ISD;

    move-result-object v5

    .line 432
    .local v5, "isdSegment":Lca/uhn/hl7v2/model/v24/segment/ISD;
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ISD;->getReferenceInteractionNumberUniqueidentifier()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v6

    const-string v7, "\u76f8\u4e92\u4f5c\u7528\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ISD;->getInteractionTypeIdentifier()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u76f8\u4e92\u4f5c\u7528\u7c7b\u578b\u6807\u8bc6\u7b26"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ISD;->getInteractionTypeIdentifier()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u76f8\u4e92\u4f5c\u7528\u7c7b\u578b\u6587\u672c"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ISD;->getInteractionActiveState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u76f8\u4e92\u4f5c\u7528\u72b6\u6001\u6807\u8bc6\u7b26"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ISD;->getInteractionActiveState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u76f8\u4e92\u4f5c\u7528\u72b6\u6001\u6587\u672c"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/ESU_U01;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v6

    .line 440
    .local v6, "rolSegment":Lca/uhn/hl7v2/model/v24/segment/ROL;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleInstanceID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u5b9e\u4f8bID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getActionCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v7

    const-string v8, "\u884c\u4e3a\u7801"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRolePerson()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u4eba"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u884c\u52a8\u539f\u56e0ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u884c\u52a8\u539f\u56e0\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u7ec4\u7ec7ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u7ec4\u7ec7\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v6, v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/XAD;->getStreetAddress()Lca/uhn/hl7v2/model/v24/datatype/SAD;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/SAD;->getStreetOrMailingAddress()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u529e\u516c\u5ba4/\u5bb6\u5ead\u8be6\u7ec6\u5730\u5740"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getPhone()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u5b9e\u4f8b\u8054\u7cfb\u65b9\u5f0f"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 458
    new-instance v7, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v7}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 464
    .local v7, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v7}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v8

    .line 465
    .local v8, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v8, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v9

    .line 466
    .local v9, "encodedMessage":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Printing ER7 Encoded Message:"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 473
    :try_start_0
    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v10
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .local v10, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 479
    nop

    .line 483
    move-object v11, v10

    check-cast v11, Lca/uhn/hl7v2/model/v24/message/ESU_U01;

    .line 485
    .local v11, "esuMsg":Lca/uhn/hl7v2/model/v24/message/ESU_U01;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/ESU_U01;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v12

    .line 486
    .local v12, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/ESU_U01;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v13

    .line 487
    .local v13, "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v11, v4}, Lca/uhn/hl7v2/model/v24/message/ESU_U01;->getISD(I)Lca/uhn/hl7v2/model/v24/segment/ISD;

    move-result-object v4

    .line 488
    .local v4, "isd":Lca/uhn/hl7v2/model/v24/segment/ISD;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/ESU_U01;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v14

    .line 489
    .local v14, "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    return-void

    .line 477
    .end local v4    # "isd":Lca/uhn/hl7v2/model/v24/segment/ISD;
    .end local v10    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v11    # "esuMsg":Lca/uhn/hl7v2/model/v24/message/ESU_U01;
    .end local v12    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v13    # "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    .end local v14    # "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    :catch_0
    move-exception v4

    .line 478
    .local v4, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 479
    return-void

    .line 474
    .end local v4    # "e":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v4

    .line 475
    .local v4, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 476
    return-void
.end method

.method public static EAC_U07()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1806
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/EAC_U07;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/EAC_U07;-><init>()V

    .line 1808
    .local v0, "eac":Lca/uhn/hl7v2/model/v24/message/EAC_U07;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/EAC_U07;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 1809
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1810
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1811
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1813
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1814
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1819
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1820
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "EAC"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1822
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "U07"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "EAC_U07"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1824
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1825
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1827
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/EAC_U07;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v3

    .line 1833
    .local v3, "equSegment":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getEntityIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u673a\u6784ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEventDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    const-string v5, "20151210130202"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u72b6\u6001\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u72b6\u6001\u6587\u672c"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getLocalRemoteControlState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u672c\u5730/\u8fdc\u7a0b\u63a7\u5236\u72b6\u6001\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getLocalRemoteControlState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u672c\u5730/\u8fdc\u7a0b\u63a7\u5236\u72b6\u6001\u6587\u672c"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1841
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getAlertLevel()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u544a\u8b66\u7ea7\u522b\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getAlertLevel()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u544a\u8b66\u7ea7\u522b\u6587\u672c"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1845
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lca/uhn/hl7v2/model/v24/message/EAC_U07;->getECD(I)Lca/uhn/hl7v2/model/v24/segment/ECD;

    move-result-object v5

    .line 1846
    .local v5, "eqpSegment":Lca/uhn/hl7v2/model/v24/segment/ECD;
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getReferenceCommandNumber()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 1847
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getRemoteControlCommand()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u547d\u4ee4\u6807\u8bc6\u7b26"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getRemoteControlCommand()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u547d\u4ee4\u63cf\u8ff0"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getResponseRequired()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "\u5fc5\u8981\u54cd\u5e94"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1850
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getRequestedCompletionTime()Lca/uhn/hl7v2/model/v24/datatype/TQ;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getStartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getRequestedCompletionTime()Lca/uhn/hl7v2/model/v24/datatype/TQ;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/EAC_U07;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v6

    .line 1855
    .local v6, "rolSegment":Lca/uhn/hl7v2/model/v24/segment/ROL;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleInstanceID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u5b9e\u4f8bID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1856
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getActionCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v7

    const-string v8, "\u884c\u4e3a\u7801"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1859
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRolePerson()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u4eba"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u884c\u52a8\u539f\u56e0ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u884c\u52a8\u539f\u56e0\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u7ec4\u7ec7ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u7ec4\u7ec7\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v6, v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/XAD;->getStreetAddress()Lca/uhn/hl7v2/model/v24/datatype/SAD;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/SAD;->getStreetOrMailingAddress()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u529e\u516c\u5ba4/\u5bb6\u5ead\u8be6\u7ec6\u5730\u5740"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1865
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getPhone()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u5b9e\u4f8b\u8054\u7cfb\u65b9\u5f0f"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1873
    new-instance v7, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v7}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 1879
    .local v7, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v7}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v8

    .line 1880
    .local v8, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v8, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v9

    .line 1881
    .local v9, "encodedMessage":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Printing ER7 Encoded Message:"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1882
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1888
    :try_start_0
    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v10
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1889
    .local v10, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 1894
    nop

    .line 1898
    move-object v11, v10

    check-cast v11, Lca/uhn/hl7v2/model/v24/message/EAC_U07;

    .line 1900
    .local v11, "eacMsg":Lca/uhn/hl7v2/model/v24/message/EAC_U07;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/EAC_U07;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v12

    .line 1901
    .local v12, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/EAC_U07;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v13

    .line 1902
    .local v13, "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v11, v4}, Lca/uhn/hl7v2/model/v24/message/EAC_U07;->getECD(I)Lca/uhn/hl7v2/model/v24/segment/ECD;

    move-result-object v4

    .line 1903
    .local v4, "ecd":Lca/uhn/hl7v2/model/v24/segment/ECD;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/EAC_U07;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v14

    .line 1904
    .local v14, "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    return-void

    .line 1892
    .end local v4    # "ecd":Lca/uhn/hl7v2/model/v24/segment/ECD;
    .end local v10    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v11    # "eacMsg":Lca/uhn/hl7v2/model/v24/message/EAC_U07;
    .end local v12    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v13    # "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    .end local v14    # "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    :catch_0
    move-exception v4

    .line 1893
    .local v4, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1894
    return-void

    .line 1889
    .end local v4    # "e":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v4

    .line 1890
    .local v4, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1891
    return-void
.end method

.method public static EAR_U08()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1908
    new-instance v1, Lca/uhn/hl7v2/model/v24/message/EAR_U08;

    invoke-direct {v1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;-><init>()V

    .line 1910
    .local v1, "ear":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v2

    .line 1911
    .local v2, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1912
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "^~\\&"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1914
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1915
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1916
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1920
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1921
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1922
    .local v3, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "EAR"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "U08"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "EAR_U08"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1926
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1927
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1928
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "2.4"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1930
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "CHN"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1931
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "UTF8"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v4

    .line 1935
    .local v4, "equSegment":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getEntityIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u8bbe\u5907\u6807\u8bc6\u7b26"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v5

    const-string v6, "\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u673a\u6784ID"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEventDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1939
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u8bbe\u5907\u72b6\u6001\u6807\u8bc6\u7b26"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1940
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u8bbe\u5907\u72b6\u6001\u6587\u672c"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getLocalRemoteControlState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u672c\u5730/\u8fdc\u7a0b\u63a7\u5236\u72b6\u6001\u6807\u8bc6\u7b26"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1942
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getLocalRemoteControlState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u672c\u5730/\u8fdc\u7a0b\u63a7\u5236\u72b6\u6001\u6587\u672c"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getAlertLevel()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u544a\u8b66\u7ea7\u522b\u6807\u8bc6\u7b26"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getAlertLevel()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u544a\u8b66\u7ea7\u522b\u6587\u672c"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1947
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getCOMMAND_RESPONSE(I)Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;->getECD()Lca/uhn/hl7v2/model/v24/segment/ECD;

    move-result-object v6

    .line 1948
    .local v6, "eqpSegment":Lca/uhn/hl7v2/model/v24/segment/ECD;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getReferenceCommandNumber()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getRemoteControlCommand()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u547d\u4ee4\u6807\u8bc6\u7b26"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getRemoteControlCommand()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u547d\u4ee4\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1951
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getResponseRequired()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v7

    const-string v8, "\u5fc5\u8981\u54cd\u5e94"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {v1, v5}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getCOMMAND_RESPONSE(I)Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;->getECR()Lca/uhn/hl7v2/model/v24/segment/ECR;

    move-result-object v7

    .line 1954
    .local v7, "ecrSegment":Lca/uhn/hl7v2/model/v24/segment/ECR;
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/ECR;->getCommandResponse()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u547d\u4ee4\u54cd\u5e94\u60c5\u51b5\u6807\u8bc6\u7b26"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1955
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/ECR;->getCommandResponse()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u547d\u4ee4\u54cd\u5e94\u60c5\u51b5\u6587\u672c"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/ECR;->getDateTimeCompleted()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {v7, v5}, Lca/uhn/hl7v2/model/v24/segment/ECR;->getCommandResponseParameters(I)Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u547d\u4ee4\u54cd\u5e94\u8fd4\u56de\u4fe1\u606f"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1960
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v8

    .line 1961
    .local v8, "rolSegment":Lca/uhn/hl7v2/model/v24/segment/ROL;
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleInstanceID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u89d2\u8272\u5b9e\u4f8bID"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1962
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getActionCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v9

    const-string v10, "\u884c\u4e3a\u7801"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1963
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u89d2\u8272ID"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1964
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u89d2\u8272\u63cf\u8ff0"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1965
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRolePerson()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u89d2\u8272\u4eba"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u884c\u52a8\u539f\u56e0ID"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1967
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u884c\u52a8\u539f\u56e0\u63cf\u8ff0"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1968
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u7ec4\u7ec7ID"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1969
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u7ec4\u7ec7\u63cf\u8ff0"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {v8, v5}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/XAD;->getStreetAddress()Lca/uhn/hl7v2/model/v24/datatype/SAD;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/SAD;->getStreetOrMailingAddress()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u529e\u516c\u5ba4/\u5bb6\u5ead\u8be6\u7ec6\u5730\u5740"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getPhone()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u89d2\u8272\u5b9e\u4f8b\u8054\u7cfb\u65b9\u5f0f"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1979
    new-instance v9, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v9}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 1985
    .local v9, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v9}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v10

    .line 1986
    .local v10, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v10, v1}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v11

    .line 1987
    .local v11, "encodedMessage":Ljava/lang/String;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "Printing ER7 Encoded Message:"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1988
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1994
    :try_start_0
    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v12
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1995
    .local v12, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 2000
    nop

    .line 2004
    move-object v13, v12

    check-cast v13, Lca/uhn/hl7v2/model/v24/message/EAR_U08;

    .line 2006
    .local v13, "earMsg":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v14

    .line 2007
    .local v14, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v15

    .line 2008
    .local v15, "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    move-object/from16 v16, v1

    invoke-virtual {v13, v5}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getCOMMAND_RESPONSE(I)Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    move-result-object v1

    .line 2008
    .end local v1    # "ear":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    .local v16, "ear":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;->getECD()Lca/uhn/hl7v2/model/v24/segment/ECD;

    move-result-object v1

    .line 2009
    .local v1, "ecd":Lca/uhn/hl7v2/model/v24/segment/ECD;
    invoke-virtual {v13, v5}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getCOMMAND_RESPONSE(I)Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;->getECR()Lca/uhn/hl7v2/model/v24/segment/ECR;

    move-result-object v5

    .line 2010
    .local v5, "ecr":Lca/uhn/hl7v2/model/v24/segment/ECR;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v17

    .line 2011
    .local v17, "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    return-void

    .line 1998
    .end local v5    # "ecr":Lca/uhn/hl7v2/model/v24/segment/ECR;
    .end local v12    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v13    # "earMsg":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    .end local v14    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v15    # "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    .end local v16    # "ear":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    .end local v17    # "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    .local v1, "ear":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    .line 1998
    .end local v1    # "ear":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    .restart local v16    # "ear":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    move-object v1, v0

    .line 1999
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 2000
    return-void

    .line 1995
    .end local v16    # "ear":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    .local v1, "ear":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    :catch_1
    move-exception v0

    move-object/from16 v16, v1

    .line 1995
    .end local v1    # "ear":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    .restart local v16    # "ear":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    move-object v1, v0

    .line 1996
    .local v1, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1997
    return-void
.end method

.method public static ErrorACK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p0, "messageType"    # Ljava/lang/String;
    .param p1, "triggerEvent"    # Ljava/lang/String;
    .param p2, "messageStruct"    # Ljava/lang/String;
    .param p3, "messageControlID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1724
    new-instance v1, Lca/uhn/hl7v2/model/v24/message/ACK;

    invoke-direct {v1}, Lca/uhn/hl7v2/model/v24/message/ACK;-><init>()V

    .line 1726
    .local v1, "ack":Lca/uhn/hl7v2/model/v24/message/ACK;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ACK;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v2

    .line 1727
    .local v2, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1728
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "^~\\&"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1729
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1730
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1732
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1733
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1734
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1737
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1738
    .local v3, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    move-object/from16 v5, p0

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1740
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    move-object/from16 v6, p1

    invoke-virtual {v4, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1741
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    move-object/from16 v7, p2

    invoke-virtual {v4, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v8, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v4, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v8, "P"

    invoke-virtual {v4, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1744
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v8, "2.4"

    invoke-virtual {v4, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v8, "0"

    invoke-virtual {v4, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v8, "CHN"

    invoke-virtual {v4, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v8, "UTF8"

    invoke-virtual {v4, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1750
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ACK;->getMSA()Lca/uhn/hl7v2/model/v24/segment/MSA;

    move-result-object v4

    .line 1751
    .local v4, "msaSegment":Lca/uhn/hl7v2/model/v24/segment/MSA;
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getAcknowledgementCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v8

    const-string v9, "AR"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTextMessage()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u5e94\u7528\u7a0b\u5e8f\u5185\u90e8\u9519\u8bef"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1754
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getErrorCondition()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "207"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ACK;->getERR()Lca/uhn/hl7v2/model/v24/segment/ERR;

    move-result-object v8

    .line 1758
    .local v8, "errSegment":Lca/uhn/hl7v2/model/v24/segment/ERR;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;

    move-result-object v10

    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/datatype/ELD;->getSegmentID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v10

    const-string v11, "\u6bb5ID"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;

    move-result-object v10

    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/datatype/ELD;->getSequence()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v10

    const-string v11, "\u7ec4\u4ef6Index"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;

    move-result-object v10

    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/datatype/ELD;->getFieldPosition()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v10

    const-string v11, "\u57df\u4f4d\u7f6e"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;

    move-result-object v10

    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/datatype/ELD;->getCodeIdentifyingError()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v10

    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v10

    const-string v11, "\u9519\u8bef\u4ee3\u7801"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/ELD;->getCodeIdentifyingError()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u9519\u8bef\u63cf\u8ff0"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1771
    new-instance v9, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v9}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 1777
    .local v9, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v9}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v10

    .line 1778
    .local v10, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v10, v1}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v11

    .line 1779
    .local v11, "encodedMessage":Ljava/lang/String;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "Printing ER7 Encoded Message:"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1780
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1786
    :try_start_0
    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v12
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1787
    .local v12, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 1792
    nop

    .line 1796
    move-object v13, v12

    check-cast v13, Lca/uhn/hl7v2/model/v24/message/ACK;

    .line 1798
    .local v13, "ackMsg":Lca/uhn/hl7v2/model/v24/message/ACK;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/ACK;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v14

    .line 1799
    .local v14, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/ACK;->getMSA()Lca/uhn/hl7v2/model/v24/segment/MSA;

    move-result-object v15

    .line 1800
    .local v15, "msa":Lca/uhn/hl7v2/model/v24/segment/MSA;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/ACK;->getERR()Lca/uhn/hl7v2/model/v24/segment/ERR;

    move-result-object v16

    .line 1801
    .local v16, "err":Lca/uhn/hl7v2/model/v24/segment/ERR;
    return-void

    .line 1790
    .end local v12    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v13    # "ackMsg":Lca/uhn/hl7v2/model/v24/message/ACK;
    .end local v14    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v15    # "msa":Lca/uhn/hl7v2/model/v24/segment/MSA;
    .end local v16    # "err":Lca/uhn/hl7v2/model/v24/segment/ERR;
    :catch_0
    move-exception v0

    move-object v12, v0

    .line 1791
    .local v12, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v12}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1792
    return-void

    .line 1787
    .end local v12    # "e":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v0

    move-object v12, v0

    .line 1788
    .local v12, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v12}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1789
    return-void
.end method

.method public static EventOrLogQuery()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 909
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/LSR_U13;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/LSR_U13;-><init>()V

    .line 911
    .local v0, "lsr":Lca/uhn/hl7v2/model/v24/message/LSR_U13;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/LSR_U13;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 912
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 917
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 920
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 922
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 923
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "LSR"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 925
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "U13"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 926
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "LSR_U13"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 928
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/LSR_U13;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v3

    .line 936
    .local v3, "equSegment":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getEntityIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u673a\u6784ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEventDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    const-string v5, "20151210130202"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 942
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lca/uhn/hl7v2/model/v24/message/LSR_U13;->getEQP(I)Lca/uhn/hl7v2/model/v24/segment/EQP;

    move-result-object v5

    .line 943
    .local v5, "eqpSegment":Lca/uhn/hl7v2/model/v24/segment/EQP;
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/EQP;->getEventType()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u4e8b\u4ef6/\u65e5\u5fd7\u7c7b\u578bID"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/EQP;->getEventType()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u4e8b\u4ef6\u7c7b\u578b\u6587\u672c"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/EQP;->getStartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20151210130202"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/EQP;->getEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20151210130202"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/LSR_U13;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v6

    .line 950
    .local v6, "rolSegment":Lca/uhn/hl7v2/model/v24/segment/ROL;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleInstanceID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u5b9e\u4f8bID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 951
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getActionCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v7

    const-string v8, "\u884c\u4e3a\u7801"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 953
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRolePerson()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u4eba"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u884c\u52a8\u539f\u56e0ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 956
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u884c\u52a8\u539f\u56e0\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u7ec4\u7ec7ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u7ec4\u7ec7\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 959
    invoke-virtual {v6, v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/XAD;->getStreetAddress()Lca/uhn/hl7v2/model/v24/datatype/SAD;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/SAD;->getStreetOrMailingAddress()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u529e\u516c\u5ba4/\u5bb6\u5ead\u8be6\u7ec6\u5730\u5740"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getPhone()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u5b9e\u4f8b\u8054\u7cfb\u65b9\u5f0f"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 968
    new-instance v7, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v7}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 974
    .local v7, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v7}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v8

    .line 975
    .local v8, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v8, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v9

    .line 976
    .local v9, "encodedMessage":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Printing ER7 Encoded Message:"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 977
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 983
    :try_start_0
    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v10
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    .local v10, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 989
    nop

    .line 993
    move-object v11, v10

    check-cast v11, Lca/uhn/hl7v2/model/v24/message/LSR_U13;

    .line 995
    .local v11, "lsrMsg":Lca/uhn/hl7v2/model/v24/message/LSR_U13;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/LSR_U13;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v12

    .line 996
    .local v12, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/LSR_U13;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v13

    .line 997
    .local v13, "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v11, v4}, Lca/uhn/hl7v2/model/v24/message/LSR_U13;->getEQP(I)Lca/uhn/hl7v2/model/v24/segment/EQP;

    move-result-object v4

    .line 998
    .local v4, "eqp":Lca/uhn/hl7v2/model/v24/segment/EQP;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/LSR_U13;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v14

    .line 999
    .local v14, "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    return-void

    .line 987
    .end local v4    # "eqp":Lca/uhn/hl7v2/model/v24/segment/EQP;
    .end local v10    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v11    # "lsrMsg":Lca/uhn/hl7v2/model/v24/message/LSR_U13;
    .end local v12    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v13    # "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    .end local v14    # "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    :catch_0
    move-exception v4

    .line 988
    .local v4, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 989
    return-void

    .line 984
    .end local v4    # "e":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v4

    .line 985
    .local v4, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 986
    return-void
.end method

.method public static EventOrLogUpdate()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 803
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/LSU_U12;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/LSU_U12;-><init>()V

    .line 805
    .local v0, "lsu":Lca/uhn/hl7v2/model/v24/message/LSU_U12;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/LSU_U12;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 806
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 816
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 817
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "LSU"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "U12"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "LSU_U12"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/LSU_U12;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v3

    .line 830
    .local v3, "equSegment":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getEntityIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u673a\u6784ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEventDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    const-string v5, "20151210130202"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u72b6\u6001\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u72b6\u6001\u6587\u672c"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getLocalRemoteControlState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u672c\u5730/\u8fdc\u7a0b\u63a7\u5236\u72b6\u6001\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getLocalRemoteControlState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u672c\u5730/\u8fdc\u7a0b\u63a7\u5236\u72b6\u6001\u6587\u672c"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getAlertLevel()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u544a\u8b66\u7ea7\u522b\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getAlertLevel()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u544a\u8b66\u7ea7\u522b\u6587\u672c"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 842
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lca/uhn/hl7v2/model/v24/message/LSU_U12;->getEQP(I)Lca/uhn/hl7v2/model/v24/segment/EQP;

    move-result-object v5

    .line 843
    .local v5, "eqpSegment":Lca/uhn/hl7v2/model/v24/segment/EQP;
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/EQP;->getEventType()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u4e8b\u4ef6/\u65e5\u5fd7\u7c7b\u578bID"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/EQP;->getEventType()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u4e8b\u4ef6\u7c7b\u578b\u6587\u672c"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/EQP;->getEventID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u4e8b\u4ef6ID"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/EQP;->getStartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20151210130202"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/EQP;->getEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20151210130202"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/EQP;->getTransactionData()Lca/uhn/hl7v2/model/v24/datatype/FT;

    move-result-object v6

    const-string v7, "\u4e8b\u7269\u63cf\u8ff0"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/FT;->setValue(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/LSU_U12;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v6

    .line 852
    .local v6, "rolSegment":Lca/uhn/hl7v2/model/v24/segment/ROL;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleInstanceID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u5b9e\u4f8bID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getActionCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v7

    const-string v8, "\u884c\u4e3a\u7801"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRolePerson()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u4eba"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u884c\u52a8\u539f\u56e0ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u884c\u52a8\u539f\u56e0\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u7ec4\u7ec7ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u7ec4\u7ec7\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v6, v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/XAD;->getStreetAddress()Lca/uhn/hl7v2/model/v24/datatype/SAD;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/SAD;->getStreetOrMailingAddress()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u529e\u516c\u5ba4/\u5bb6\u5ead\u8be6\u7ec6\u5730\u5740"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getPhone()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u5b9e\u4f8b\u8054\u7cfb\u65b9\u5f0f"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 870
    new-instance v7, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v7}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 876
    .local v7, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v7}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v8

    .line 877
    .local v8, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v8, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v9

    .line 878
    .local v9, "encodedMessage":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Printing ER7 Encoded Message:"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 879
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 885
    :try_start_0
    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v10
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    .local v10, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 891
    nop

    .line 895
    move-object v11, v10

    check-cast v11, Lca/uhn/hl7v2/model/v24/message/LSU_U12;

    .line 897
    .local v11, "lsuMsg":Lca/uhn/hl7v2/model/v24/message/LSU_U12;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/LSU_U12;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v12

    .line 898
    .local v12, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/LSU_U12;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v13

    .line 899
    .local v13, "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v11, v4}, Lca/uhn/hl7v2/model/v24/message/LSU_U12;->getEQP(I)Lca/uhn/hl7v2/model/v24/segment/EQP;

    move-result-object v4

    .line 900
    .local v4, "eqp":Lca/uhn/hl7v2/model/v24/segment/EQP;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/LSU_U12;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v14

    .line 901
    .local v14, "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    return-void

    .line 889
    .end local v4    # "eqp":Lca/uhn/hl7v2/model/v24/segment/EQP;
    .end local v10    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v11    # "lsuMsg":Lca/uhn/hl7v2/model/v24/message/LSU_U12;
    .end local v12    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v13    # "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    .end local v14    # "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    :catch_0
    move-exception v4

    .line 890
    .local v4, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 891
    return-void

    .line 886
    .end local v4    # "e":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v4

    .line 887
    .local v4, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 888
    return-void
.end method

.method public static GetSampleInfoFromLIS()V
    .locals 4

    .line 353
    :try_start_0
    invoke-static {}, Ltest/ExampleParseMessages;->QRY_Q02()V

    .line 355
    invoke-static {}, Ltest/ExampleParseMessages;->QCK_Q02()V

    .line 357
    invoke-static {}, Ltest/ExampleParseMessages;->DSR_Q03()V

    .line 361
    const-string v0, "ACK"

    const-string v1, "Q03"

    const-string v2, "ACK"

    const-string v3, "1"

    invoke-static {v0, v1, v2, v3}, Ltest/ExampleParseMessages;->OkACK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    goto :goto_0

    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 366
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method

.method public static MadicalRuery()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 704
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/INR_U06;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/INR_U06;-><init>()V

    .line 706
    .local v0, "inr":Lca/uhn/hl7v2/model/v24/message/INR_U06;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/INR_U06;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 707
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 717
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 718
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "INR"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "U06"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "INR_U06"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/INR_U06;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v3

    .line 731
    .local v3, "equSegment":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getEntityIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u673a\u6784ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEventDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    const-string v5, "20151210130202"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 738
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lca/uhn/hl7v2/model/v24/message/INR_U06;->getINV(I)Lca/uhn/hl7v2/model/v24/segment/INV;

    move-result-object v5

    .line 739
    .local v5, "invSegment":Lca/uhn/hl7v2/model/v24/segment/INV;
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/INV;->getSubstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8017\u6750\u6807\u8bc6\u7b26"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/INV;->getSubstanceStatus(I)Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u72b6\u6001\u6807\u8bc6\u7b26"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/INV;->getSubstanceStatus(I)Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u72b6\u6001\u63cf\u8ff0\u6587\u672c"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/INR_U06;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v6

    .line 746
    .local v6, "rolSegment":Lca/uhn/hl7v2/model/v24/segment/ROL;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleInstanceID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u5b9e\u4f8bID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getActionCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v7

    const-string v8, "\u884c\u4e3a\u7801"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRolePerson()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u4eba"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u884c\u52a8\u539f\u56e0ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u884c\u52a8\u539f\u56e0\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u7ec4\u7ec7ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u7ec4\u7ec7\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v6, v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/XAD;->getStreetAddress()Lca/uhn/hl7v2/model/v24/datatype/SAD;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/SAD;->getStreetOrMailingAddress()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u529e\u516c\u5ba4/\u5bb6\u5ead\u8be6\u7ec6\u5730\u5740"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getPhone()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u5b9e\u4f8b\u8054\u7cfb\u65b9\u5f0f"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 764
    new-instance v7, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v7}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 770
    .local v7, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v7}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v8

    .line 771
    .local v8, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v8, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v9

    .line 772
    .local v9, "encodedMessage":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Printing ER7 Encoded Message:"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 773
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 779
    :try_start_0
    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v10
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .local v10, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 785
    nop

    .line 789
    move-object v11, v10

    check-cast v11, Lca/uhn/hl7v2/model/v24/message/INR_U06;

    .line 791
    .local v11, "inrMsg":Lca/uhn/hl7v2/model/v24/message/INR_U06;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/INR_U06;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v12

    .line 792
    .local v12, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/INR_U06;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v13

    .line 793
    .local v13, "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v11, v4}, Lca/uhn/hl7v2/model/v24/message/INR_U06;->getINV(I)Lca/uhn/hl7v2/model/v24/segment/INV;

    move-result-object v4

    .line 794
    .local v4, "inv":Lca/uhn/hl7v2/model/v24/segment/INV;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/INR_U06;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v14

    .line 795
    .local v14, "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    return-void

    .line 783
    .end local v4    # "inv":Lca/uhn/hl7v2/model/v24/segment/INV;
    .end local v10    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v11    # "inrMsg":Lca/uhn/hl7v2/model/v24/message/INR_U06;
    .end local v12    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v13    # "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    .end local v14    # "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    :catch_0
    move-exception v4

    .line 784
    .local v4, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 785
    return-void

    .line 780
    .end local v4    # "e":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v4

    .line 781
    .local v4, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 782
    return-void
.end method

.method public static MadicalUpdate()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 592
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/INU_U05;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/INU_U05;-><init>()V

    .line 594
    .local v0, "inu":Lca/uhn/hl7v2/model/v24/message/INU_U05;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/INU_U05;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 595
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 605
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 606
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "INU"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "U05"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "INU_U05"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/INU_U05;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v3

    .line 619
    .local v3, "equSegment":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getEntityIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentInstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/EI;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/EI;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u673a\u6784ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEventDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    const-string v5, "20151210130202"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u72b6\u6001\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getEquipmentState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u8bbe\u5907\u72b6\u6001\u6587\u672c"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getLocalRemoteControlState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u672c\u5730/\u8fdc\u7a0b\u63a7\u5236\u72b6\u6001\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getLocalRemoteControlState()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u672c\u5730/\u8fdc\u7a0b\u63a7\u5236\u72b6\u6001\u6587\u672c"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getAlertLevel()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u544a\u8b66\u7ea7\u522b\u6807\u8bc6\u7b26"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/EQU;->getAlertLevel()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u544a\u8b66\u7ea7\u522b\u6587\u672c"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 631
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lca/uhn/hl7v2/model/v24/message/INU_U05;->getINV(I)Lca/uhn/hl7v2/model/v24/segment/INV;

    move-result-object v5

    .line 632
    .local v5, "invSegment":Lca/uhn/hl7v2/model/v24/segment/INV;
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/INV;->getSubstanceIdentifier()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8017\u6750\u6807\u8bc6\u7b26"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/INV;->getSubstanceStatus(I)Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u72b6\u6001\u6807\u8bc6\u7b26"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/INV;->getSubstanceStatus(I)Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u72b6\u6001\u63cf\u8ff0\u6587\u672c"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/INV;->getSubstanceType()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8017\u6750\u7c7b\u578b\u6807\u8bc6\u7b26"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/INV;->getSubstanceType()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8017\u6750\u7c7b\u578b\u6587\u672c"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/INV;->getInitialQuantity()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v6

    const-string v7, "96"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/INV;->getCurrentQuantity()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v6

    const-string v7, "32"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/INV;->getQuantityUnits()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u6570\u91cf\u5355\u4f4d"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/INV;->getExpirationDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20151210130202"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/INV;->getFirstUsedDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20131210130202"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/INV;->getOnBoardStabilityDuration()Lca/uhn/hl7v2/model/v24/datatype/TQ;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getStartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20131210130202"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/INV;->getOnBoardStabilityDuration()Lca/uhn/hl7v2/model/v24/datatype/TQ;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TQ;->getEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20141210130202"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/INU_U05;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v6

    .line 647
    .local v6, "rolSegment":Lca/uhn/hl7v2/model/v24/segment/ROL;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleInstanceID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u5b9e\u4f8bID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getActionCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v7

    const-string v8, "\u884c\u4e3a\u7801"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRolePerson()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u4eba"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u884c\u52a8\u539f\u56e0ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getRoleActionReason()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u884c\u52a8\u539f\u56e0\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u7ec4\u7ec7ID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOrganizationUnitTypeROL()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u7ec4\u7ec7\u63cf\u8ff0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v6, v4}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getOfficeHomeAddress(I)Lca/uhn/hl7v2/model/v24/datatype/XAD;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/XAD;->getStreetAddress()Lca/uhn/hl7v2/model/v24/datatype/SAD;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/SAD;->getStreetOrMailingAddress()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u529e\u516c\u5ba4/\u5bb6\u5ead\u8be6\u7ec6\u5730\u5740"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/ROL;->getPhone()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89d2\u8272\u5b9e\u4f8b\u8054\u7cfb\u65b9\u5f0f"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 665
    new-instance v7, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v7}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 671
    .local v7, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v7}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v8

    .line 672
    .local v8, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v8, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v9

    .line 673
    .local v9, "encodedMessage":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Printing ER7 Encoded Message:"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 674
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 680
    :try_start_0
    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v10
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .local v10, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 686
    nop

    .line 690
    move-object v11, v10

    check-cast v11, Lca/uhn/hl7v2/model/v24/message/INU_U05;

    .line 692
    .local v11, "inuMsg":Lca/uhn/hl7v2/model/v24/message/INU_U05;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/INU_U05;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v12

    .line 693
    .local v12, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/INU_U05;->getEQU()Lca/uhn/hl7v2/model/v24/segment/EQU;

    move-result-object v13

    .line 694
    .local v13, "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    invoke-virtual {v11, v4}, Lca/uhn/hl7v2/model/v24/message/INU_U05;->getINV(I)Lca/uhn/hl7v2/model/v24/segment/INV;

    move-result-object v4

    .line 695
    .local v4, "inv":Lca/uhn/hl7v2/model/v24/segment/INV;
    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/message/INU_U05;->getROL()Lca/uhn/hl7v2/model/v24/segment/ROL;

    move-result-object v14

    .line 696
    .local v14, "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    return-void

    .line 684
    .end local v4    # "inv":Lca/uhn/hl7v2/model/v24/segment/INV;
    .end local v10    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v11    # "inuMsg":Lca/uhn/hl7v2/model/v24/message/INU_U05;
    .end local v12    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v13    # "equ":Lca/uhn/hl7v2/model/v24/segment/EQU;
    .end local v14    # "rol":Lca/uhn/hl7v2/model/v24/segment/ROL;
    :catch_0
    move-exception v4

    .line 685
    .local v4, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 686
    return-void

    .line 681
    .end local v4    # "e":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v4

    .line 682
    .local v4, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 683
    return-void
.end method

.method public static ORF_R04()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1019
    new-instance v1, Lca/uhn/hl7v2/model/v24/message/ORF_R04;

    invoke-direct {v1}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;-><init>()V

    .line 1021
    .local v1, "orf":Lca/uhn/hl7v2/model/v24/message/ORF_R04;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v2

    .line 1022
    .local v2, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "^~\\&"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1032
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v3, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "ORF"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "R04"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "ORF_R04"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "2.4"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "CHN"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "UTF8"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getMSA()Lca/uhn/hl7v2/model/v24/segment/MSA;

    move-result-object v4

    .line 1046
    .local v4, "msaSegment":Lca/uhn/hl7v2/model/v24/segment/MSA;
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getAcknowledgementCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v5

    const-string v6, "AA"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTextMessage()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "\u5e94\u7528\u7a0b\u5e8f\u5185\u90e8\u9519\u8bef"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getErrorCondition()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getQRD()Lca/uhn/hl7v2/model/v24/segment/QRD;

    move-result-object v5

    .line 1053
    .local v5, "qrdSegment":Lca/uhn/hl7v2/model/v24/segment/QRD;
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20151210130202"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryFormatCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "R"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryPriority()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "D"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u9012\u589eID"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQuantityLimitedRequest()Lca/uhn/hl7v2/model/v24/datatype/CQ;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CQ;->getQuantity()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQuantityLimitedRequest()Lca/uhn/hl7v2/model/v24/datatype/CQ;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CQ;->getUnits()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u5355\u4f4d"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1059
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getWhatSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "OTH"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryResultsLevel()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v7

    const-string v8, "T"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getQRF()Lca/uhn/hl7v2/model/v24/segment/QRF;

    move-result-object v7

    .line 1064
    .local v7, "qrfSegment":Lca/uhn/hl7v2/model/v24/segment/QRF;
    invoke-virtual {v7, v6}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhereSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u67e5\u8be2\u7cfb\u7edf/\u8bbe\u5907"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhenDataStartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v8

    const-string v9, "20121025000000"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhenDataEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v8

    const-string v9, "20121025235959"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v7, v6}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhichDateTimeQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v8

    const-string v9, "RC"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v7, v6}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhichDateTimeStatusQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v8

    const-string v9, "COR"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v7, v6}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getDateTimeSelectionQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v8

    const-string v9, "ALL"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getRESPONSE(I)Lca/uhn/hl7v2/model/v24/group/ORF_R04_RESPONSE;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_RESPONSE;->getPATIENT()Lca/uhn/hl7v2/model/v24/group/ORF_R04_PATIENT;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_PATIENT;->getPID()Lca/uhn/hl7v2/model/v24/segment/PID;

    move-result-object v8

    .line 1074
    .local v8, "pidSegment":Lca/uhn/hl7v2/model/v24/segment/PID;
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/PID;->getSetIDPID()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u8eab\u4efd\u8bc1\u53f7"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v8, v6}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u75c5\u5386\u53f7"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v8, v6}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getCheckDigit()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u4f4f\u9662\u53f7"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v8, v6}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getCodeIdentifyingTheCheckDigitSchemeEmployed()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v9

    const-string v10, "\u5e8a\u53f7"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientName()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u60a3\u8005\u59d3\u540d"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/PID;->getDateTimeOfBirth()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v9

    const-string v10, "19671005120526"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/PID;->getAdministrativeSex()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v9

    const-string v10, "F"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/PID;->getBloodType()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u8840\u578b"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientAddress()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u60a3\u8005\u5730\u5740"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPhoneNumberHome()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u5bb6\u4e2d\u7535\u8bdd"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPhoneNumberBusiness()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u624b\u673a\u53f7"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/PID;->getSSNNumberPatient()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u793e\u4fdd\u53f7"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/PID;->getEthnicGroup()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u6c11\u65cf"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/PID;->getBirthPlace()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "\u7c4d\u8d2f"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getRESPONSE(I)Lca/uhn/hl7v2/model/v24/group/ORF_R04_RESPONSE;

    move-result-object v9

    invoke-virtual {v9, v6}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_RESPONSE;->getORDER(I)Lca/uhn/hl7v2/model/v24/group/ORF_R04_ORDER;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_ORDER;->getOBR()Lca/uhn/hl7v2/model/v24/segment/OBR;

    move-result-object v9

    .line 1092
    .local v9, "obrSegment":Lca/uhn/hl7v2/model/v24/segment/OBR;
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSetIDOBR()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSampleBarCode()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v10

    const-string v11, "\u6837\u672c\u6761\u7801"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSampleID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v10

    const-string v11, "\u6837\u672c\u7f16\u53f7"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getObservationDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v10

    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v10

    const-string v11, "20151210130202"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getObservationEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v10

    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v10

    const-string v11, "20151210130202"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getRelevantClinicalInfo()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v10

    const-string v11, "\u75c5\u4eba\u8bca\u65ad\u4fe1\u606f"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSpecimenReceivedDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v10

    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v10

    const-string v11, "20151210130202"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSampleType()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v10

    const-string v11, "\u6837\u672c\u7c7b\u578b"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSubmittingPhysician()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v10

    const-string v11, "\u9001\u68c0\u533b\u5e08"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSubmittingDepartment()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v10

    const-string v11, "\u9001\u68c0\u79d1\u5ba4"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getAttendingPhysician()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v10

    const-string v11, "\u4e3b\u6cbb\u533b\u5e08"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTreatDepartment()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v10

    const-string v11, "\u6cbb\u7597\u79d1\u5ba4"

    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getRESPONSE(I)Lca/uhn/hl7v2/model/v24/group/ORF_R04_RESPONSE;

    move-result-object v10

    invoke-virtual {v10, v6}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_RESPONSE;->getORDER(I)Lca/uhn/hl7v2/model/v24/group/ORF_R04_ORDER;

    move-result-object v10

    invoke-virtual {v10, v6}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_ORDER;->getOBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORF_R04_OBSERVATION;

    move-result-object v10

    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_OBSERVATION;->getOBX()Lca/uhn/hl7v2/model/v24/segment/OBX;

    move-result-object v10

    .line 1108
    .local v10, "obxSegment":Lca/uhn/hl7v2/model/v24/segment/OBX;
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getSetIDOBX()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getValueType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v11

    const-string v12, "NM"

    invoke-virtual {v11, v12}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getObx3_ProjectID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v11

    const-string v12, "\u9879\u76eeID"

    invoke-virtual {v11, v12}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getProjectName()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v11

    const-string v12, "\u9879\u76ee\u540d\u79f0"

    invoke-virtual {v11, v12}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getObservationResult()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v11

    const-string v12, "\u7ed3\u679c"

    invoke-virtual {v11, v12}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getUnits()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v11

    const-string v12, "\u5355\u4f4d"

    invoke-virtual {v11, v12}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getReferencesRange()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v11

    const-string v12, "\u53c2\u8003\u503c\u8303\u56f4"

    invoke-virtual {v11, v12}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getAbnormalFlags()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v11

    const-string v12, "\u4e0d\u6b63\u5e38\u6807\u8bb0"

    invoke-virtual {v11, v12}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getObservationResultStatus()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v11

    const-string v12, "\u7ed3\u679c\u72b6\u6001"

    invoke-virtual {v11, v12}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getOriginalResult()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v11

    const-string v12, "\u539f\u59cb\u7ed3\u679c"

    invoke-virtual {v11, v12}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getDateTimeOfTheObservation()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v11

    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v11

    const-string v12, "20151210130202"

    invoke-virtual {v11, v12}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getResponsibleObserver()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v11

    const-string v12, "\u89c2\u5bdf\u8d1f\u8d23\u4eba"

    invoke-virtual {v11, v12}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getERR()Lca/uhn/hl7v2/model/v24/segment/ERR;

    move-result-object v11

    .line 1123
    .local v11, "errSegment":Lca/uhn/hl7v2/model/v24/segment/ERR;
    invoke-virtual {v11, v6}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;

    move-result-object v12

    invoke-virtual {v12}, Lca/uhn/hl7v2/model/v24/datatype/ELD;->getSegmentID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v12

    const-string v13, "\u6bb5ID"

    invoke-virtual {v12, v13}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v11, v6}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;

    move-result-object v12

    invoke-virtual {v12}, Lca/uhn/hl7v2/model/v24/datatype/ELD;->getSequence()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v12

    const-string v13, "0"

    invoke-virtual {v12, v13}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v11, v6}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;

    move-result-object v12

    invoke-virtual {v12}, Lca/uhn/hl7v2/model/v24/datatype/ELD;->getFieldPosition()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v12

    const-string v13, "0"

    invoke-virtual {v12, v13}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v11, v6}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;

    move-result-object v12

    invoke-virtual {v12}, Lca/uhn/hl7v2/model/v24/datatype/ELD;->getCodeIdentifyingError()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v12

    invoke-virtual {v12}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v12

    const-string v13, "\u9519\u8bef\u4ee3\u7801"

    invoke-virtual {v12, v13}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v11, v6}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;

    move-result-object v12

    invoke-virtual {v12}, Lca/uhn/hl7v2/model/v24/datatype/ELD;->getCodeIdentifyingError()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v12

    invoke-virtual {v12}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v12

    const-string v13, "\u9519\u8bef\u63cf\u8ff0"

    invoke-virtual {v12, v13}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getQAK()Lca/uhn/hl7v2/model/v24/segment/QAK;

    move-result-object v12

    .line 1131
    .local v12, "qakSegment":Lca/uhn/hl7v2/model/v24/segment/QAK;
    invoke-virtual {v12}, Lca/uhn/hl7v2/model/v24/segment/QAK;->getQueryTag()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v13

    const-string v14, "SR"

    invoke-virtual {v13, v14}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v12}, Lca/uhn/hl7v2/model/v24/segment/QAK;->getQueryResponseStatus()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v13

    const-string v14, "OK"

    invoke-virtual {v13, v14}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1139
    new-instance v13, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v13}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 1145
    .local v13, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v13}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v14

    .line 1146
    .local v14, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v14, v1}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v15

    .line 1147
    .local v15, "encodedMessage":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v1

    const-string v1, "Printing ER7 Encoded Message:"

    .line 1147
    .end local v1    # "orf":Lca/uhn/hl7v2/model/v24/message/ORF_R04;
    .local v17, "orf":Lca/uhn/hl7v2/model/v24/message/ORF_R04;
    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1148
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1154
    :try_start_0
    invoke-virtual {v14, v15}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    .local v1, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 1160
    nop

    .line 1164
    move-object v6, v1

    check-cast v6, Lca/uhn/hl7v2/model/v24/message/ORF_R04;

    .line 1166
    .local v6, "orfMsg":Lca/uhn/hl7v2/model/v24/message/ORF_R04;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v18

    .line 1167
    .local v18, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getMSA()Lca/uhn/hl7v2/model/v24/segment/MSA;

    move-result-object v19

    .line 1168
    .local v19, "msa":Lca/uhn/hl7v2/model/v24/segment/MSA;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getQRD()Lca/uhn/hl7v2/model/v24/segment/QRD;

    move-result-object v20

    .line 1169
    .local v20, "qrd":Lca/uhn/hl7v2/model/v24/segment/QRD;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getQRF()Lca/uhn/hl7v2/model/v24/segment/QRF;

    move-result-object v21

    .line 1170
    .local v21, "qrf":Lca/uhn/hl7v2/model/v24/segment/QRF;
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getRESPONSE(I)Lca/uhn/hl7v2/model/v24/group/ORF_R04_RESPONSE;

    move-result-object v2

    .line 1170
    .end local v1    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .local v22, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .local v23, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_RESPONSE;->getPATIENT()Lca/uhn/hl7v2/model/v24/group/ORF_R04_PATIENT;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_PATIENT;->getPID()Lca/uhn/hl7v2/model/v24/segment/PID;

    move-result-object v2

    .line 1171
    .local v2, "pid":Lca/uhn/hl7v2/model/v24/segment/PID;
    move-object/from16 v24, v2

    invoke-virtual {v6, v1}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getRESPONSE(I)Lca/uhn/hl7v2/model/v24/group/ORF_R04_RESPONSE;

    move-result-object v2

    .line 1171
    .end local v2    # "pid":Lca/uhn/hl7v2/model/v24/segment/PID;
    .local v24, "pid":Lca/uhn/hl7v2/model/v24/segment/PID;
    invoke-virtual {v2, v1}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_RESPONSE;->getORDER(I)Lca/uhn/hl7v2/model/v24/group/ORF_R04_ORDER;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_ORDER;->getOBR()Lca/uhn/hl7v2/model/v24/segment/OBR;

    move-result-object v2

    .line 1172
    .local v2, "obr":Lca/uhn/hl7v2/model/v24/segment/OBR;
    move-object/from16 v25, v2

    invoke-virtual {v6, v1}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getRESPONSE(I)Lca/uhn/hl7v2/model/v24/group/ORF_R04_RESPONSE;

    move-result-object v2

    .line 1172
    .end local v2    # "obr":Lca/uhn/hl7v2/model/v24/segment/OBR;
    .local v25, "obr":Lca/uhn/hl7v2/model/v24/segment/OBR;
    invoke-virtual {v2, v1}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_RESPONSE;->getORDER(I)Lca/uhn/hl7v2/model/v24/group/ORF_R04_ORDER;

    move-result-object v2

    invoke-virtual {v2, v1}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_ORDER;->getOBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORF_R04_OBSERVATION;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/group/ORF_R04_OBSERVATION;->getOBX()Lca/uhn/hl7v2/model/v24/segment/OBX;

    move-result-object v1

    .line 1173
    .local v1, "obx":Lca/uhn/hl7v2/model/v24/segment/OBX;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getQAK()Lca/uhn/hl7v2/model/v24/segment/QAK;

    move-result-object v2

    .line 1174
    .local v2, "qak":Lca/uhn/hl7v2/model/v24/segment/QAK;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/message/ORF_R04;->getERR()Lca/uhn/hl7v2/model/v24/segment/ERR;

    move-result-object v16

    .line 1176
    .local v16, "err":Lca/uhn/hl7v2/model/v24/segment/ERR;
    return-void

    .line 1158
    .end local v1    # "obx":Lca/uhn/hl7v2/model/v24/segment/OBX;
    .end local v6    # "orfMsg":Lca/uhn/hl7v2/model/v24/message/ORF_R04;
    .end local v16    # "err":Lca/uhn/hl7v2/model/v24/segment/ERR;
    .end local v18    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v19    # "msa":Lca/uhn/hl7v2/model/v24/segment/MSA;
    .end local v20    # "qrd":Lca/uhn/hl7v2/model/v24/segment/QRD;
    .end local v21    # "qrf":Lca/uhn/hl7v2/model/v24/segment/QRF;
    .end local v22    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v23    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v24    # "pid":Lca/uhn/hl7v2/model/v24/segment/PID;
    .end local v25    # "obr":Lca/uhn/hl7v2/model/v24/segment/OBR;
    .local v2, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    :catch_0
    move-exception v0

    move-object/from16 v23, v2

    .line 1158
    .end local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v23    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    move-object v1, v0

    .line 1159
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1160
    return-void

    .line 1155
    .end local v1    # "e":Lca/uhn/hl7v2/HL7Exception;
    .end local v23    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    :catch_1
    move-exception v0

    move-object/from16 v23, v2

    .line 1155
    .end local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v23    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    move-object v1, v0

    .line 1156
    .local v1, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1157
    return-void
.end method

.method public static OkACK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "messageType"    # Ljava/lang/String;
    .param p1, "triggerEvent"    # Ljava/lang/String;
    .param p2, "messageStruct"    # Ljava/lang/String;
    .param p3, "messageControlID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1643
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/ACK;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/ACK;-><init>()V

    .line 1645
    .local v0, "ack":Lca/uhn/hl7v2/model/v24/message/ACK;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/ACK;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 1646
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1647
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1650
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1652
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1654
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1656
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1657
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1658
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    invoke-virtual {v3, p0}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1659
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    invoke-virtual {v3, p1}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1660
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    invoke-virtual {v3, p2}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/ACK;->getMSA()Lca/uhn/hl7v2/model/v24/segment/MSA;

    move-result-object v3

    .line 1670
    .local v3, "msaSegment":Lca/uhn/hl7v2/model/v24/segment/MSA;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getAcknowledgementCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "AA"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1672
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTextMessage()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u5e94\u7528\u7a0b\u5e8f\u5185\u90e8\u9519\u8bef"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1673
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getErrorCondition()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1690
    new-instance v4, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v4}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 1696
    .local v4, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v4}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v5

    .line 1697
    .local v5, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v5, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v6

    .line 1698
    .local v6, "encodedMessage":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Printing ER7 Encoded Message:"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1699
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1705
    :try_start_0
    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v7
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1706
    .local v7, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 1711
    nop

    .line 1715
    move-object v8, v7

    check-cast v8, Lca/uhn/hl7v2/model/v24/message/ACK;

    .line 1717
    .local v8, "ackMsg":Lca/uhn/hl7v2/model/v24/message/ACK;
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/message/ACK;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v9

    .line 1718
    .local v9, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/message/ACK;->getMSA()Lca/uhn/hl7v2/model/v24/segment/MSA;

    move-result-object v10

    .line 1720
    .local v10, "msa":Lca/uhn/hl7v2/model/v24/segment/MSA;
    return-void

    .line 1709
    .end local v7    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v8    # "ackMsg":Lca/uhn/hl7v2/model/v24/message/ACK;
    .end local v9    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v10    # "msa":Lca/uhn/hl7v2/model/v24/segment/MSA;
    :catch_0
    move-exception v7

    .line 1710
    .local v7, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v7}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1711
    return-void

    .line 1706
    .end local v7    # "e":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v7

    .line 1707
    .local v7, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v7}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1708
    return-void
.end method

.method public static QCK_Q02()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1469
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;-><init>()V

    .line 1471
    .local v0, "qck":Lca/uhn/hl7v2/model/v24/message/QCK_Q02;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 1472
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1478
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1482
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1483
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "QCK"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "Q02"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "QCK_Q02"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;->getMSA()Lca/uhn/hl7v2/model/v24/segment/MSA;

    move-result-object v3

    .line 1496
    .local v3, "msaSegment":Lca/uhn/hl7v2/model/v24/segment/MSA;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getAcknowledgementCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "AA"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1497
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTextMessage()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u5e94\u7528\u7a0b\u5e8f\u5185\u90e8\u9519\u8bef"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getErrorCondition()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1502
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;->getERR()Lca/uhn/hl7v2/model/v24/segment/ERR;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/segment/ERR;->getErrorCodeAndLocation(I)Lca/uhn/hl7v2/model/v24/datatype/ELD;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/ELD;->getCodeIdentifyingError()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;->getQAK()Lca/uhn/hl7v2/model/v24/segment/QAK;

    move-result-object v4

    .line 1506
    .local v4, "qakSegment":Lca/uhn/hl7v2/model/v24/segment/QAK;
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/QAK;->getQueryTag()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "SR"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1507
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/QAK;->getQueryResponseStatus()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v5

    const-string v6, "OK"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1514
    new-instance v5, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v5}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 1520
    .local v5, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v5}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v6

    .line 1521
    .local v6, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v6, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v7

    .line 1522
    .local v7, "encodedMessage":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Printing ER7 Encoded Message:"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1523
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1529
    :try_start_0
    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v8
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1530
    .local v8, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 1535
    nop

    .line 1539
    move-object v9, v8

    check-cast v9, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;

    .line 1541
    .local v9, "qckMsg":Lca/uhn/hl7v2/model/v24/message/QCK_Q02;
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v10

    .line 1542
    .local v10, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;->getMSA()Lca/uhn/hl7v2/model/v24/segment/MSA;

    move-result-object v11

    .line 1543
    .local v11, "msa":Lca/uhn/hl7v2/model/v24/segment/MSA;
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;->getQAK()Lca/uhn/hl7v2/model/v24/segment/QAK;

    move-result-object v12

    .line 1544
    .local v12, "qak":Lca/uhn/hl7v2/model/v24/segment/QAK;
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;->getERR()Lca/uhn/hl7v2/model/v24/segment/ERR;

    move-result-object v13

    .line 1546
    .local v13, "err":Lca/uhn/hl7v2/model/v24/segment/ERR;
    return-void

    .line 1533
    .end local v8    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v9    # "qckMsg":Lca/uhn/hl7v2/model/v24/message/QCK_Q02;
    .end local v10    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v11    # "msa":Lca/uhn/hl7v2/model/v24/segment/MSA;
    .end local v12    # "qak":Lca/uhn/hl7v2/model/v24/segment/QAK;
    .end local v13    # "err":Lca/uhn/hl7v2/model/v24/segment/ERR;
    :catch_0
    move-exception v8

    .line 1534
    .local v8, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v8}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1535
    return-void

    .line 1530
    .end local v8    # "e":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v8

    .line 1531
    .local v8, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v8}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1532
    return-void
.end method

.method public static QCResult()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;,
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 227
    new-instance v1, Lca/uhn/hl7v2/model/v24/message/ORU_R01;

    invoke-direct {v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;-><init>()V

    .line 230
    .local v1, "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v2

    .line 231
    .local v2, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "^~\\&"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 241
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 242
    .local v3, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "ORU"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "R01"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "2.4"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "CHN"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "UTF8"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 258
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    move-result-object v5

    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getORDER_OBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getOBR()Lca/uhn/hl7v2/model/v24/segment/OBR;

    move-result-object v5

    .line 259
    .local v5, "obrSegment":Lca/uhn/hl7v2/model/v24/segment/OBR;
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSetIDOBR()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCProjectID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u9879\u76ee\u7f16\u53f7"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCProjectName()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u9879\u76ee\u540d\u79f0"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCTestTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20131010092536"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidQuantity()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8d28\u63a7\u7f16\u53f7"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidName()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8d28\u63a7\u6db2\u540d\u79f0"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidValidDate()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20151010235959"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidBatchNo()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8d28\u63a7\u6279\u53f7"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCScope()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8d28\u63a7\u8303\u56f4"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidDensityLevel()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8d28\u63a7\u6db2\u6d53\u5ea6\u6c34\u5e73"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidDensityAV()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8d28\u63a7\u6db2\u5747\u503c"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidSD()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8d28\u63a7\u6db2\u6807\u51c6\u5dee"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCTestResult()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8d28\u63a7\u6db2\u6d4b\u8bd5\u7ed3\u679c"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCReagentBatchNo()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8d28\u63a7\u8bd5\u5242\u6279\u53f7"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1, v4}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    move-result-object v6

    invoke-virtual {v6, v4}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getORDER_OBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    move-result-object v6

    invoke-virtual {v6, v4}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getOBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;->getOBX()Lca/uhn/hl7v2/model/v24/segment/OBX;

    move-result-object v6

    .line 277
    .local v6, "obxSegment":Lca/uhn/hl7v2/model/v24/segment/OBX;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getSetIDOBX()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getValueType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v7

    const-string v8, "NM"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getProjectID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u9879\u76eeID"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getProjectName()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u9879\u76ee\u540d\u79f0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getObservationResult()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u7ed3\u679c"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getUnits()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u5355\u4f4d"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getReferencesRange()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u53c2\u8003\u503c\u8303\u56f4"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getAbnormalFlags()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v7

    const-string v8, "\u4e0d\u6b63\u5e38\u6807\u8bb0"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getObservationResultStatus()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v7

    const-string v8, "\u7ed3\u679c\u72b6\u6001"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getOriginalResult()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u539f\u59cb\u7ed3\u679c"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getDateTimeOfTheObservation()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v7

    const-string v8, "20131010092536"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getResponsibleObserver()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u89c2\u5bdf\u8d1f\u8d23\u4eba"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getDSC()Lca/uhn/hl7v2/model/v24/segment/DSC;

    move-result-object v7

    .line 291
    .local v7, "dscSegment":Lca/uhn/hl7v2/model/v24/segment/DSC;
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationPointer()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationStyle()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v8

    const-string v9, "F"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 300
    new-instance v8, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v8}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 306
    .local v8, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v8}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v9

    .line 308
    .local v9, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v9, v1}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v10

    .line 309
    .local v10, "encodedMessage":Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "Printing ER7 Encoded Message:"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    :try_start_0
    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v11
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .local v11, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 322
    nop

    .line 333
    move-object v12, v11

    check-cast v12, Lca/uhn/hl7v2/model/v24/message/ORU_R01;

    .line 335
    .local v12, "oruMsg":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    invoke-virtual {v12}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v13

    .line 336
    .local v13, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v12, v4}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    move-result-object v14

    invoke-virtual {v14, v4}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getORDER_OBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getOBR()Lca/uhn/hl7v2/model/v24/segment/OBR;

    move-result-object v4

    .line 339
    .local v4, "obr":Lca/uhn/hl7v2/model/v24/segment/OBR;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v14

    invoke-virtual {v14}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v14

    invoke-virtual {v14}, Lca/uhn/hl7v2/model/v24/datatype/ID;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 340
    .local v14, "msgType":Ljava/lang/String;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v15

    invoke-virtual {v15}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v15

    invoke-virtual {v15}, Lca/uhn/hl7v2/model/v24/datatype/ID;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 342
    .local v15, "msgTrigger":Ljava/lang/String;
    move-object/from16 v16, v1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 342
    .end local v1    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .local v16, "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    move-object/from16 v17, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .line 342
    .end local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .local v17, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    move-object/from16 v18, v3

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 342
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .local v18, "df":Ljava/text/SimpleDateFormat;
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    return-void

    .line 320
    .end local v4    # "obr":Lca/uhn/hl7v2/model/v24/segment/OBR;
    .end local v11    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v12    # "oruMsg":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .end local v13    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v14    # "msgType":Ljava/lang/String;
    .end local v15    # "msgTrigger":Ljava/lang/String;
    .end local v16    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .end local v17    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v18    # "df":Ljava/text/SimpleDateFormat;
    .restart local v1    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .restart local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v3    # "df":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 320
    .end local v1    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .end local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .restart local v16    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .restart local v17    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v18    # "df":Ljava/text/SimpleDateFormat;
    move-object v1, v0

    .line 321
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 322
    return-void

    .line 317
    .end local v16    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .end local v17    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v18    # "df":Ljava/text/SimpleDateFormat;
    .local v1, "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .restart local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v3    # "df":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 317
    .end local v1    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .end local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .restart local v16    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .restart local v17    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v18    # "df":Ljava/text/SimpleDateFormat;
    move-object v1, v0

    .line 318
    .local v1, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 319
    return-void
.end method

.method public static QRY_Q02()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1551
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;-><init>()V

    .line 1553
    .local v0, "qry":Lca/uhn/hl7v2/model/v24/message/QRY_Q02;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 1554
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1555
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1561
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1564
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1565
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1566
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "QRY"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "Q02"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "QRY_Q02"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;->getQRD()Lca/uhn/hl7v2/model/v24/segment/QRD;

    move-result-object v3

    .line 1579
    .local v3, "qrdSegment":Lca/uhn/hl7v2/model/v24/segment/QRD;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    const-string v5, "20151210130202"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryFormatCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "R"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryPriority()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "D"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u9012\u589eID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQuantityLimitedRequest()Lca/uhn/hl7v2/model/v24/datatype/CQ;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CQ;->getQuantity()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v4

    const-string v5, "20151210130202"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQuantityLimitedRequest()Lca/uhn/hl7v2/model/v24/datatype/CQ;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CQ;->getUnits()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u5355\u4f4d"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1585
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getWhatSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "OTH"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryResultsLevel()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v5

    const-string v6, "T"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1589
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;->getQRF()Lca/uhn/hl7v2/model/v24/segment/QRF;

    move-result-object v5

    .line 1590
    .local v5, "qrfSegment":Lca/uhn/hl7v2/model/v24/segment/QRF;
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhereSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u67e5\u8be2\u7cfb\u7edf/\u8bbe\u5907"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhenDataStartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20151210130202"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhenDataEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20151210130202"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhichDateTimeQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "RC"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhichDateTimeStatusQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "COR"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getDateTimeSelectionQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v6, "ALL"

    invoke-virtual {v4, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;->getDSC()Lca/uhn/hl7v2/model/v24/segment/DSC;

    move-result-object v4

    .line 1600
    .local v4, "dscSegment":Lca/uhn/hl7v2/model/v24/segment/DSC;
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationPointer()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u6307\u793a\u5668"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationStyle()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "F"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1608
    new-instance v6, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v6}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 1614
    .local v6, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v6}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v7

    .line 1615
    .local v7, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v7, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v8

    .line 1616
    .local v8, "encodedMessage":Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Printing ER7 Encoded Message:"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1617
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1623
    :try_start_0
    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v9
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    .local v9, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 1629
    nop

    .line 1633
    move-object v10, v9

    check-cast v10, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;

    .line 1635
    .local v10, "orfMsg":Lca/uhn/hl7v2/model/v24/message/QRY_Q02;
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v11

    .line 1636
    .local v11, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;->getQRD()Lca/uhn/hl7v2/model/v24/segment/QRD;

    move-result-object v12

    .line 1637
    .local v12, "qrd":Lca/uhn/hl7v2/model/v24/segment/QRD;
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;->getQRF()Lca/uhn/hl7v2/model/v24/segment/QRF;

    move-result-object v13

    .line 1638
    .local v13, "qrf":Lca/uhn/hl7v2/model/v24/segment/QRF;
    invoke-virtual {v10}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;->getDSC()Lca/uhn/hl7v2/model/v24/segment/DSC;

    move-result-object v14

    .line 1639
    .local v14, "dsc":Lca/uhn/hl7v2/model/v24/segment/DSC;
    return-void

    .line 1627
    .end local v9    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v10    # "orfMsg":Lca/uhn/hl7v2/model/v24/message/QRY_Q02;
    .end local v11    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v12    # "qrd":Lca/uhn/hl7v2/model/v24/segment/QRD;
    .end local v13    # "qrf":Lca/uhn/hl7v2/model/v24/segment/QRF;
    .end local v14    # "dsc":Lca/uhn/hl7v2/model/v24/segment/DSC;
    :catch_0
    move-exception v9

    .line 1628
    .local v9, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v9}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1629
    return-void

    .line 1624
    .end local v9    # "e":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v9

    .line 1625
    .local v9, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v9}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1626
    return-void
.end method

.method public static QRY_R02()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1181
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/QRY_R02;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_R02;-><init>()V

    .line 1183
    .local v0, "qry":Lca/uhn/hl7v2/model/v24/message/QRY_R02;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_R02;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 1184
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1194
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1195
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "QRY"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "R02"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "QRY_R02"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_R02;->getQRD()Lca/uhn/hl7v2/model/v24/segment/QRD;

    move-result-object v3

    .line 1209
    .local v3, "qrdSegment":Lca/uhn/hl7v2/model/v24/segment/QRD;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    const-string v5, "20151210130202"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryFormatCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "R"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryPriority()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "D"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u9012\u589eID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQuantityLimitedRequest()Lca/uhn/hl7v2/model/v24/datatype/CQ;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CQ;->getQuantity()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQuantityLimitedRequest()Lca/uhn/hl7v2/model/v24/datatype/CQ;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CQ;->getUnits()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u5355\u4f4d"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1215
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getWhatSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "OTH"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryResultsLevel()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v5

    const-string v6, "T"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_R02;->getQRF()Lca/uhn/hl7v2/model/v24/segment/QRF;

    move-result-object v5

    .line 1220
    .local v5, "qrfSegment":Lca/uhn/hl7v2/model/v24/segment/QRF;
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhereSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u67e5\u8be2\u7cfb\u7edf/\u8bbe\u5907"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhenDataStartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20151210130202"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhenDataEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "20151210130202"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhichDateTimeQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "RC"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhichDateTimeStatusQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "COR"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getDateTimeSelectionQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v6, "ALL"

    invoke-virtual {v4, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 1233
    new-instance v4, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v4}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 1239
    .local v4, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v4}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v6

    .line 1240
    .local v6, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v6, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v7

    .line 1241
    .local v7, "encodedMessage":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Printing ER7 Encoded Message:"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1242
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1248
    :try_start_0
    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v8
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    .local v8, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 1254
    nop

    .line 1258
    move-object v9, v8

    check-cast v9, Lca/uhn/hl7v2/model/v24/message/QRY_R02;

    .line 1260
    .local v9, "orfMsg":Lca/uhn/hl7v2/model/v24/message/QRY_R02;
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/message/QRY_R02;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v10

    .line 1261
    .local v10, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/message/QRY_R02;->getQRD()Lca/uhn/hl7v2/model/v24/segment/QRD;

    move-result-object v11

    .line 1262
    .local v11, "qrd":Lca/uhn/hl7v2/model/v24/segment/QRD;
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/message/QRY_R02;->getQRF()Lca/uhn/hl7v2/model/v24/segment/QRF;

    move-result-object v12

    .line 1263
    .local v12, "qrf":Lca/uhn/hl7v2/model/v24/segment/QRF;
    return-void

    .line 1252
    .end local v8    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v9    # "orfMsg":Lca/uhn/hl7v2/model/v24/message/QRY_R02;
    .end local v10    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v11    # "qrd":Lca/uhn/hl7v2/model/v24/segment/QRD;
    .end local v12    # "qrf":Lca/uhn/hl7v2/model/v24/segment/QRF;
    :catch_0
    move-exception v8

    .line 1253
    .local v8, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v8}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1254
    return-void

    .line 1249
    .end local v8    # "e":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v8

    .line 1250
    .local v8, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v8}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1251
    return-void
.end method

.method public static QuerySampleResultOrQCResult()V
    .locals 1

    .line 375
    :try_start_0
    invoke-static {}, Ltest/ExampleParseMessages;->QRY_R02()V

    .line 378
    invoke-static {}, Ltest/ExampleParseMessages;->ORF_R04()V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    goto :goto_0

    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 383
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method

.method public static RemoteControl()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1007
    invoke-static {}, Ltest/ExampleParseMessages;->EAC_U07()V

    .line 1009
    const-string v0, "ACK"

    const-string v1, "U07"

    const-string v2, "ACK"

    const-string v3, "messageControlID"

    invoke-static {v0, v1, v2, v3}, Ltest/ExampleParseMessages;->OkACK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-static {}, Ltest/ExampleParseMessages;->EAR_U08()V

    .line 1013
    const-string v0, "ACK"

    const-string v1, "U08"

    const-string v2, "ACK"

    const-string v3, "messageControlID"

    invoke-static {v0, v1, v2, v3}, Ltest/ExampleParseMessages;->OkACK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public static SampleResult()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;,
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 91
    new-instance v1, Lca/uhn/hl7v2/model/v24/message/ORU_R01;

    invoke-direct {v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;-><init>()V

    .line 94
    .local v1, "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v2

    .line 95
    .local v2, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "^~\\&"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u540d\u79f0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u552f\u4e00\u6807\u8bc6\u7b26"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "\u63a5\u6536\u8bbe\u5907\u578b\u53f7"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 105
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 106
    .local v3, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "ORU"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "R01"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "ORU_R01"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "\u6d88\u606f\u63a7\u5236ID"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "2.4"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "CHN"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "UTF8"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 118
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getPATIENT()Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;->getPID()Lca/uhn/hl7v2/model/v24/segment/PID;

    move-result-object v5

    .line 119
    .local v5, "pidSegment":Lca/uhn/hl7v2/model/v24/segment/PID;
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/PID;->getSetIDPID()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8eab\u4efd\u8bc1\u53f7"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u75c5\u5386\u53f7"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getCheckDigit()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u4f4f\u9662\u53f7"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getCodeIdentifyingTheCheckDigitSchemeEmployed()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "\u5e8a\u53f7"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientName()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u60a3\u8005\u59d3\u540d"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/PID;->getDateTimeOfBirth()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, "19750205102023"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/PID;->getAdministrativeSex()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v6

    const-string v7, "F"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/PID;->getBloodType()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u8840\u578b"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientAddress()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u60a3\u8005\u5730\u5740"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPhoneNumberHome()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u5bb6\u4e2d\u7535\u8bdd"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPhoneNumberBusiness()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u624b\u673a\u53f7"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/PID;->getSSNNumberPatient()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u793e\u4fdd\u53f7"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/PID;->getEthnicGroup()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u6c11\u65cf"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/PID;->getBirthPlace()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "\u7c4d\u8d2f"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v4}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    move-result-object v6

    invoke-virtual {v6, v4}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getORDER_OBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getOBR()Lca/uhn/hl7v2/model/v24/segment/OBR;

    move-result-object v6

    .line 137
    .local v6, "obrSegment":Lca/uhn/hl7v2/model/v24/segment/OBR;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSetIDOBR()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSampleBarCode()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u6837\u672c\u6761\u7801"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSampleID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u6837\u672c\u7f16\u53f7"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getObservationDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v7

    const-string v8, "20131010092536"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getObservationEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v7

    const-string v8, "20131010092536"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getRelevantClinicalInfo()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u75c5\u4eba\u8bca\u65ad\u4fe1\u606f"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSpecimenReceivedDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v7

    const-string v8, "20131010092536"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSampleType()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u6837\u672c\u7c7b\u578b"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSubmittingPhysician()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u9001\u68c0\u533b\u5e08"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSubmittingDepartment()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u9001\u68c0\u79d1\u5ba4"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getAttendingPhysician()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u4e3b\u6cbb\u533b\u5e08"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTreatDepartment()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "\u6cbb\u7597\u79d1\u5ba4"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v4}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    move-result-object v7

    invoke-virtual {v7, v4}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getORDER_OBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    move-result-object v7

    invoke-virtual {v7, v4}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getOBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;->getOBX()Lca/uhn/hl7v2/model/v24/segment/OBX;

    move-result-object v7

    .line 153
    .local v7, "obxSegment":Lca/uhn/hl7v2/model/v24/segment/OBX;
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getSetIDOBX()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getValueType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v8

    const-string v9, "NM"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getProjectID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u9879\u76eeID"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getProjectName()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u9879\u76ee\u540d\u79f0"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getObservationResult()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u7ed3\u679c"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getUnits()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u5355\u4f4d"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getReferencesRange()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u53c2\u8003\u503c\u8303\u56f4"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getAbnormalFlags()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v8

    const-string v9, "\u4e0d\u6b63\u5e38\u6807\u8bb0"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getObservationResultStatus()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v8

    const-string v9, "\u7ed3\u679c\u72b6\u6001"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getOriginalResult()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u539f\u59cb\u7ed3\u679c"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getDateTimeOfTheObservation()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v8

    const-string v9, "20131010092536"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getResponsibleObserver()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, "\u89c2\u5bdf\u8d1f\u8d23\u4eba"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getDSC()Lca/uhn/hl7v2/model/v24/segment/DSC;

    move-result-object v8

    .line 167
    .local v8, "dscSegment":Lca/uhn/hl7v2/model/v24/segment/DSC;
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationPointer()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationStyle()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v9

    const-string v10, "F"

    invoke-virtual {v9, v10}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 176
    new-instance v9, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v9}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 182
    .local v9, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v9}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v10

    .line 184
    .local v10, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v10, v1}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v11

    .line 185
    .local v11, "encodedMessage":Ljava/lang/String;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "Printing ER7 Encoded Message:"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    :try_start_0
    invoke-virtual {v10, v11}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v12
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .local v12, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 198
    nop

    .line 209
    move-object v13, v12

    check-cast v13, Lca/uhn/hl7v2/model/v24/message/ORU_R01;

    .line 211
    .local v13, "oruMsg":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v14

    .line 212
    .local v14, "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v13, v4}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    move-result-object v15

    invoke-virtual {v15}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getPATIENT()Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;

    move-result-object v15

    invoke-virtual {v15}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;->getPID()Lca/uhn/hl7v2/model/v24/segment/PID;

    move-result-object v15

    .line 213
    .local v15, "pid":Lca/uhn/hl7v2/model/v24/segment/PID;
    move-object/from16 v16, v1

    invoke-virtual {v13, v4}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    move-result-object v1

    .line 213
    .end local v1    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .local v16, "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    invoke-virtual {v1, v4}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getORDER_OBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getOBR()Lca/uhn/hl7v2/model/v24/segment/OBR;

    move-result-object v1

    .line 214
    .local v1, "obr":Lca/uhn/hl7v2/model/v24/segment/OBR;
    move-object/from16 v17, v1

    invoke-virtual {v13, v4}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    move-result-object v1

    .line 214
    .end local v1    # "obr":Lca/uhn/hl7v2/model/v24/segment/OBR;
    .local v17, "obr":Lca/uhn/hl7v2/model/v24/segment/OBR;
    invoke-virtual {v1, v4}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getORDER_OBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    move-result-object v1

    invoke-virtual {v1, v4}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getOBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;->getOBX()Lca/uhn/hl7v2/model/v24/segment/OBX;

    move-result-object v1

    .line 217
    .local v1, "obx":Lca/uhn/hl7v2/model/v24/segment/OBX;
    invoke-virtual {v14}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "msgType":Ljava/lang/String;
    move-object/from16 v18, v1

    invoke-virtual {v14}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v1

    .line 218
    .end local v1    # "obx":Lca/uhn/hl7v2/model/v24/segment/OBX;
    .local v18, "obx":Lca/uhn/hl7v2/model/v24/segment/OBX;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/datatype/ID;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "msgTrigger":Ljava/lang/String;
    move-object/from16 v19, v2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 220
    .end local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .local v19, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    move-object/from16 v20, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .line 220
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .local v20, "df":Ljava/text/SimpleDateFormat;
    move-object/from16 v21, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .end local v5    # "pidSegment":Lca/uhn/hl7v2/model/v24/segment/PID;
    .local v21, "pidSegment":Lca/uhn/hl7v2/model/v24/segment/PID;
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    return-void

    .line 196
    .end local v4    # "msgType":Ljava/lang/String;
    .end local v12    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v13    # "oruMsg":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .end local v14    # "msh":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v15    # "pid":Lca/uhn/hl7v2/model/v24/segment/PID;
    .end local v16    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .end local v17    # "obr":Lca/uhn/hl7v2/model/v24/segment/OBR;
    .end local v18    # "obx":Lca/uhn/hl7v2/model/v24/segment/OBX;
    .end local v19    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v20    # "df":Ljava/text/SimpleDateFormat;
    .end local v21    # "pidSegment":Lca/uhn/hl7v2/model/v24/segment/PID;
    .local v1, "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .restart local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v3    # "df":Ljava/text/SimpleDateFormat;
    .restart local v5    # "pidSegment":Lca/uhn/hl7v2/model/v24/segment/PID;
    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    .line 196
    .end local v1    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .end local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .end local v5    # "pidSegment":Lca/uhn/hl7v2/model/v24/segment/PID;
    .restart local v16    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .restart local v19    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v20    # "df":Ljava/text/SimpleDateFormat;
    .restart local v21    # "pidSegment":Lca/uhn/hl7v2/model/v24/segment/PID;
    move-object v1, v0

    .line 197
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 198
    return-void

    .line 193
    .end local v16    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .end local v19    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v20    # "df":Ljava/text/SimpleDateFormat;
    .end local v21    # "pidSegment":Lca/uhn/hl7v2/model/v24/segment/PID;
    .local v1, "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .restart local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v3    # "df":Ljava/text/SimpleDateFormat;
    .restart local v5    # "pidSegment":Lca/uhn/hl7v2/model/v24/segment/PID;
    :catch_1
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    .line 193
    .end local v1    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .end local v2    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .end local v5    # "pidSegment":Lca/uhn/hl7v2/model/v24/segment/PID;
    .restart local v16    # "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    .restart local v19    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v20    # "df":Ljava/text/SimpleDateFormat;
    .restart local v21    # "pidSegment":Lca/uhn/hl7v2/model/v24/segment/PID;
    move-object v1, v0

    .line 194
    .local v1, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 195
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 62
    :try_start_0
    invoke-static {}, Ltest/ExampleParseMessages;->SampleResult()V

    .line 63
    invoke-static {}, Ltest/ExampleParseMessages;->QCResult()V

    .line 65
    invoke-static {}, Ltest/ExampleParseMessages;->GetSampleInfoFromLIS()V

    .line 67
    invoke-static {}, Ltest/ExampleParseMessages;->QuerySampleResultOrQCResult()V

    .line 69
    invoke-static {}, Ltest/ExampleParseMessages;->MadicalUpdate()V

    .line 71
    invoke-static {}, Ltest/ExampleParseMessages;->MadicalRuery()V

    .line 73
    invoke-static {}, Ltest/ExampleParseMessages;->EventOrLogUpdate()V

    .line 75
    invoke-static {}, Ltest/ExampleParseMessages;->EventOrLogQuery()V

    .line 77
    invoke-static {}, Ltest/ExampleParseMessages;->RemoteControl()V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 83
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method
