.class public Lcom/wen/fluorescence/lis/HL7;
.super Ljava/lang/Object;
.source "HL7.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field private static App_Name:Ljava/lang/String; = null

.field public static final CE_Description_CL:Ljava/lang/String; = "\u6b63\u5728\u6e05\u7a7a"

.field public static final CE_Description_CO:Ljava/lang/String; = "\u6b63\u5728\u914d\u7f6e"

.field public static final CE_Description_ES:Ljava/lang/String; = "\u5df2\u505c\u6b62"

.field public static final CE_Description_ID:Ljava/lang/String; = "\u7a7a\u95f2"

.field public static final CE_Description_IN:Ljava/lang/String; = "\u521d\u59cb\u5316"

.field public static final CE_Description_OP:Ljava/lang/String; = "\u6b63\u5e38\u8fd0\u884c"

.field public static final CE_Description_PA:Ljava/lang/String; = "\u6b63\u5728\u6682\u505c"

.field public static final CE_Description_PD:Ljava/lang/String; = "\u5df2\u6682\u505c"

.field public static final CE_Description_PU:Ljava/lang/String; = "\u5df2\u5f00\u673a"

.field public static final CE_Value_CL:Ljava/lang/String; = "CL"

.field public static final CE_Value_CO:Ljava/lang/String; = "CO"

.field public static final CE_Value_ES:Ljava/lang/String; = "ES"

.field public static final CE_Value_ID:Ljava/lang/String; = "ID"

.field public static final CE_Value_IN:Ljava/lang/String; = "IN"

.field public static final CE_Value_OP:Ljava/lang/String; = "OP"

.field public static final CE_Value_PA:Ljava/lang/String; = "PA"

.field public static final CE_Value_PD:Ljava/lang/String; = "PD"

.field public static final CE_Value_PU:Ljava/lang/String; = "PU"

.field private static Company_Name:Ljava/lang/String; = null

.field private static Dev_Name:Ljava/lang/String; = null

.field private static Dev_Type:Ljava/lang/String; = null

.field public static final ECR1_ER:Ljava/lang/String; = "ER"

.field public static final ECR1_OK:Ljava/lang/String; = "OK"

.field public static final ECR1_ST:Ljava/lang/String; = "ST"

.field public static final ECR1_TI:Ljava/lang/String; = "TI"

.field public static final ECR1_UN:Ljava/lang/String; = "UN"

.field public static final EQU4_App:Ljava/lang/String; = "App"

.field public static final EQU4_Code:Ljava/lang/String; = "Code"

.field public static final MSG_ACK:I = 0x102

.field public static final MSG_DSR_Q03:I = 0x104

.field public static final MSG_ORU_R01:I = 0x101

.field public static final MSG_OTHERS:I = 0x105

.field public static final MSG_QCK_Q02_NF:I = 0x106

.field public static final MSG_QCK_Q02_OK:I = 0x103

.field public static final WARN_Description_C:Ljava/lang/String; = "\u5371\u6025"

.field public static final WARN_Description_N:Ljava/lang/String; = "\u6b63\u5e38"

.field public static final WARN_Description_S:Ljava/lang/String; = "\u4e25\u91cd"

.field public static final WARN_Description_W:Ljava/lang/String; = "\u8b66\u544a"

.field public static final WARN_VALUE_C:Ljava/lang/String; = "C"

.field public static final WARN_VALUE_N:Ljava/lang/String; = "N"

.field public static final WARN_VALUE_S:Ljava/lang/String; = "S"

.field public static final WARN_VALUE_W:Ljava/lang/String; = "W"

.field public static beginFlag:Ljava/lang/String;

.field public static endFlag:Ljava/lang/String;

.field private static tempBuffer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 97
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0xb

    aput-byte v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/wen/fluorescence/lis/HL7;->beginFlag:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/wen/fluorescence/lis/HL7;->endFlag:Ljava/lang/String;

    .line 100
    const-string v0, "--"

    sput-object v0, Lcom/wen/fluorescence/lis/HL7;->Dev_Type:Ljava/lang/String;

    .line 101
    const-string v0, "Fluorescence"

    sput-object v0, Lcom/wen/fluorescence/lis/HL7;->Dev_Name:Ljava/lang/String;

    .line 102
    const-string v0, "Fluorescence"

    sput-object v0, Lcom/wen/fluorescence/lis/HL7;->App_Name:Ljava/lang/String;

    .line 103
    const-string v0, "--"

    sput-object v0, Lcom/wen/fluorescence/lis/HL7;->Company_Name:Ljava/lang/String;

    .line 567
    const-string v0, ""

    sput-object v0, Lcom/wen/fluorescence/lis/HL7;->tempBuffer:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x1ct
        0xdt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EAR_U08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "connectNumber"    # Ljava/lang/String;
    .param p1, "connectCMD"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "serialMac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 419
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/EAR_U08;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;-><init>()V

    .line 421
    .local v0, "ear":Lca/uhn/hl7v2/model/v24/message/EAR_U08;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 422
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    sget-object v3, Lcom/wen/fluorescence/lis/HL7;->App_Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    sget-object v3, Lcom/wen/fluorescence/lis/HL7;->Dev_Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    invoke-virtual {v2, p3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    sget-object v3, Lcom/wen/fluorescence/lis/HL7;->Dev_Type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "LIS"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "LIS_SERVER"

    .line 430
    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "PC"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 433
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 434
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 435
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "EAR"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "U08"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "EAR_U08"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 447
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getCOMMAND_RESPONSE(I)Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;->getECD()Lca/uhn/hl7v2/model/v24/segment/ECD;

    move-result-object v4

    .line 448
    .local v4, "eqpSegment":Lca/uhn/hl7v2/model/v24/segment/ECD;
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getReferenceCommandNumber()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getRemoteControlCommand()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getRemoteControlCommand()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getResponseRequired()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v4, v3}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getParameters(I)Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    invoke-virtual {v5, p0}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 453
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8fd4\u56de\u8fde\u63a5\u53f7:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v4, v3}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getEcd5_Parameters(I)Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    invoke-virtual {v5, p0}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 458
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/segment/ECD;->getEcd5_Parameters(I)Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    invoke-virtual {v5, p1}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/model/v24/message/EAR_U08;->getCOMMAND_RESPONSE(I)Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/group/EAR_U08_COMMAND_RESPONSE;->getECR()Lca/uhn/hl7v2/model/v24/segment/ECR;

    move-result-object v5

    .line 461
    .local v5, "ecrSegment":Lca/uhn/hl7v2/model/v24/segment/ECR;
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ECR;->getCommandResponse()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ECR;->getCommandResponse()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getText()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ECR;->getDateTimeCompleted()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v5, v3}, Lca/uhn/hl7v2/model/v24/segment/ECR;->getCommandResponseParameters(I)Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/ECR;->getEcr1_CommandResponse()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getAlternateIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    .line 466
    invoke-virtual {v3, p2}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 468
    new-instance v3, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v3}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 470
    .local v3, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v3}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v6

    .line 471
    .local v6, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v6, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v7

    .line 473
    .local v7, "encodedMessage":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/wen/fluorescence/lis/HL7;->beginFlag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/wen/fluorescence/lis/HL7;->endFlag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static HL7dateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "ori"    # Ljava/lang/String;

    .line 289
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static OkACK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "messageType"    # Ljava/lang/String;
    .param p1, "triggerEvent"    # Ljava/lang/String;
    .param p2, "messageStruct"    # Ljava/lang/String;
    .param p3, "messageControlID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 367
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/ACK;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/ACK;-><init>()V

    .line 370
    .local v0, "ack":Lca/uhn/hl7v2/model/v24/message/ACK;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/ACK;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 371
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    sget-object v3, Lcom/wen/fluorescence/lis/HL7;->App_Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    sget-object v3, Lcom/wen/fluorescence/lis/HL7;->Dev_Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    sget-object v3, Lcom/wen/fluorescence/lis/HL7;->Dev_Type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "LIS"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "LIS_SERVER"

    .line 379
    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "PC"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 382
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 383
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 384
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    invoke-virtual {v3, p0}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    invoke-virtual {v3, p1}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    invoke-virtual {v3, p2}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    invoke-virtual {v3, p3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/ACK;->getMSA()Lca/uhn/hl7v2/model/v24/segment/MSA;

    move-result-object v3

    .line 397
    .local v3, "msaSegment":Lca/uhn/hl7v2/model/v24/segment/MSA;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getAcknowledgementCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "AA"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    invoke-virtual {v4, p3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getTextMessage()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/MSA;->getErrorCondition()Lca/uhn/hl7v2/model/v24/datatype/CE;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CE;->getIdentifier()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 410
    new-instance v4, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v4}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 412
    .local v4, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v4}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v5

    .line 413
    .local v5, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v5, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, "encodedMessage":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/wen/fluorescence/lis/HL7;->beginFlag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/wen/fluorescence/lis/HL7;->endFlag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static QCResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;
    .locals 12
    .param p0, "result"    # Lcom/wen/fluorescence/database/TestResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;,
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 300
    const-string v0, ""

    .line 301
    .local v0, "mac":Ljava/lang/String;
    new-instance v1, Lca/uhn/hl7v2/model/v24/message/ORU_R01;

    invoke-direct {v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;-><init>()V

    .line 303
    .local v1, "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v2

    .line 304
    .local v2, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "^~\\&"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    sget-object v4, Lcom/wen/fluorescence/lis/HL7;->App_Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    sget-object v4, Lcom/wen/fluorescence/lis/HL7;->Dev_Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    invoke-virtual {v3, v0}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    sget-object v4, Lcom/wen/fluorescence/lis/HL7;->Dev_Type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "LIS"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v3

    const-string v4, "LIS\u7ba1\u7406\u7cfb\u7edf"

    .line 312
    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "PCV1.0.0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "PC"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 315
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 316
    .local v3, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 317
    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "ORU"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "R01"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "ORU_R01"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "2.4"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "CHN"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, "UTF8"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 329
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    move-result-object v5

    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getORDER_OBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    move-result-object v4

    .line 330
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getOBR()Lca/uhn/hl7v2/model/v24/segment/OBR;

    move-result-object v4

    .line 331
    .local v4, "obrSegment":Lca/uhn/hl7v2/model/v24/segment/OBR;
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSetIDOBR()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCProjectID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCProjectName()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCTestTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wen/fluorescence/lis/HL7;->HL7dateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidQuantity()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidName()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidValidDate()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 339
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidBatchNo()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getLogNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCScope()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getLevel()I

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "L"

    goto :goto_0

    :cond_0
    const-string v5, "H"

    .line 343
    .local v5, "level":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidDensityLevel()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    invoke-virtual {v6, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidDensityAV()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCLiquidSD()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCTestResult()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getQCReagentBatchNo()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getLogNo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getDSC()Lca/uhn/hl7v2/model/v24/segment/DSC;

    move-result-object v6

    .line 350
    .local v6, "dscSegment":Lca/uhn/hl7v2/model/v24/segment/DSC;
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationPointer()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationStyle()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v7

    const-string v8, "F"

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 353
    new-instance v7, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v7}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 354
    .local v7, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v7}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v8

    .line 355
    .local v8, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v8, v1}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v9

    .line 357
    .local v9, "encodedMessage":Ljava/lang/String;
    :try_start_0
    invoke-interface {v7}, Lca/uhn/hl7v2/HapiContext;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    goto :goto_1

    .line 358
    :catch_0
    move-exception v10

    .line 359
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 361
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/wen/fluorescence/lis/HL7;->beginFlag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/wen/fluorescence/lis/HL7;->endFlag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public static QRY_Q02(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p0, "sampleBarcode"    # Ljava/lang/String;
    .param p1, "SampleCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 486
    new-instance v0, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;-><init>()V

    .line 487
    .local v0, "qry":Lca/uhn/hl7v2/model/v24/message/QRY_Q02;
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v1

    .line 488
    .local v1, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "^~\\&"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    sget-object v3, Lcom/wen/fluorescence/lis/HL7;->App_Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    sget-object v3, Lcom/wen/fluorescence/lis/HL7;->Dev_Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    sget-object v3, Lcom/wen/fluorescence/lis/HL7;->Dev_Type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "LIS"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v2

    const-string v3, "LIS Server"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v3, "--"

    .line 498
    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 499
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 500
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 501
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "QRY"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "Q02"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "QRY_Q02"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 505
    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "P"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v3

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "2.4"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v3

    const-string v4, "CHN"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;->getQRD()Lca/uhn/hl7v2/model/v24/segment/QRD;

    move-result-object v3

    .line 515
    .local v3, "qrdSegment":Lca/uhn/hl7v2/model/v24/segment/QRD;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 516
    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryFormatCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "R"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryPriority()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "D"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQuantityLimitedRequest()Lca/uhn/hl7v2/model/v24/datatype/CQ;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/CQ;->getQuantity()Lca/uhn/hl7v2/model/v24/datatype/NM;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/NM;->setValue(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getQueryResultsLevel()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, "T"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/segment/QRD;->getSampleBarcode()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    invoke-virtual {v4, p0}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;->getQRF()Lca/uhn/hl7v2/model/v24/segment/QRF;

    move-result-object v4

    .line 528
    .local v4, "qrfSegment":Lca/uhn/hl7v2/model/v24/segment/QRF;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhereSubjectFilter(I)Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "LIS"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhenDataStartDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 530
    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhenDataEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 532
    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhichDateTimeQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "RC"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getWhichDateTimeStatusQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "COR"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/segment/QRF;->getDateTimeSelectionQualifier(I)Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v5

    const-string v6, "ALL"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0}, Lca/uhn/hl7v2/model/v24/message/QRY_Q02;->getDSC()Lca/uhn/hl7v2/model/v24/segment/DSC;

    move-result-object v5

    .line 539
    .local v5, "dscSegment":Lca/uhn/hl7v2/model/v24/segment/DSC;
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationPointer()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationStyle()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "F"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 547
    new-instance v6, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v6}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 554
    .local v6, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v6}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v7

    .line 555
    .local v7, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v7, v0}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v8

    .line 558
    .local v8, "encodedMessage":Ljava/lang/String;
    :try_start_0
    invoke-interface {v6}, Lca/uhn/hl7v2/HapiContext;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    goto :goto_0

    .line 559
    :catch_0
    move-exception v9

    .line 560
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 562
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/wen/fluorescence/lis/HL7;->beginFlag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/wen/fluorescence/lis/HL7;->endFlag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static SampleResult(Lcom/wen/fluorescence/database/TestResult;Landroid/content/Context;)Ljava/lang/String;
    .locals 24
    .param p0, "result"    # Lcom/wen/fluorescence/database/TestResult;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "DevicedID"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "mac":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v2

    const-string v3, "OrganizationFragment"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "organization":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/util/PublicFuction;->getMacDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_0
    new-instance v3, Lca/uhn/hl7v2/model/v24/message/ORU_R01;

    invoke-direct {v3}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;-><init>()V

    .line 121
    .local v3, "oru":Lca/uhn/hl7v2/model/v24/message/ORU_R01;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getMSH()Lca/uhn/hl7v2/model/v24/segment/MSH;

    move-result-object v4

    .line 122
    .local v4, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getFieldSeparator()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getEncodingCharacters()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "^~\\&"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    sget-object v6, Lcom/wen/fluorescence/lis/HL7;->App_Name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v5

    sget-object v6, Lcom/wen/fluorescence/lis/HL7;->Dev_Name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    invoke-virtual {v5, v1}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getSendingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v5

    invoke-virtual {v5, v2}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingApplication()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, "LIS"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getNamespaceID()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v5

    const-string v6, "LIS"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getReceivingFacility()Lca/uhn/hl7v2/model/v24/datatype/HD;

    move-result-object v5

    invoke-virtual {v5}, Lca/uhn/hl7v2/model/v24/datatype/HD;->getUniversalIDType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v5

    const-string v6, "--"

    .line 132
    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 133
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 134
    .local v5, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getDateTimeOfMessage()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 135
    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "ORU"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getTriggerEvent()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "R01"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageType()Lca/uhn/hl7v2/model/v24/datatype/MSG;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/MSG;->getMessageStructure()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "ORU_R01"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getMessageControlID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getProcessingID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "P"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/VID;

    move-result-object v6

    invoke-virtual {v6}, Lca/uhn/hl7v2/model/v24/datatype/VID;->getVersionID()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "2.4"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getApplicationAcknowledgmentType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCountryCode()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v6

    const-string v7, "CHN"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/segment/MSH;->getCharacterSet()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v6

    const-string v7, "UTF8"

    invoke-virtual {v6, v7}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 147
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getPATIENT()Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT;->getPID()Lca/uhn/hl7v2/model/v24/segment/PID;

    move-result-object v7

    .line 148
    .local v7, "pidSegment":Lca/uhn/hl7v2/model/v24/segment/PID;
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->getSetIDPID()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v7, v6}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v7, v6}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getCheckDigit()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getDoctorNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v7, v6}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientIdentifierList(I)Lca/uhn/hl7v2/model/v24/datatype/CX;

    move-result-object v8

    .line 155
    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/CX;->getCodeIdentifyingTheCheckDigitSchemeEmployed()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v8

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getBedNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientName()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 160
    .local v8, "mycalendar":Ljava/util/Calendar;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 161
    .local v9, "nowYeay":I
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v10

    sub-int v10, v9, v10

    .line 162
    .local v10, "birthYear":I
    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x5

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v8, v10, v11, v12}, Ljava/util/Calendar;->set(III)V

    .line 163
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->getDateTimeOfBirth()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v11

    invoke-virtual {v11}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v11

    .line 164
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    const-string v13, "yyyyMMddHHmmss"

    invoke-static {v12, v13}, Lcom/wen/fluorescence/util/DateUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 163
    invoke-virtual {v11, v12}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v11

    .line 167
    .local v11, "sex":I
    packed-switch v11, :pswitch_data_0

    .line 178
    const-string v12, "O"

    goto :goto_0

    .line 175
    :pswitch_0
    const-string v12, "F"

    .line 176
    .local v12, "sSex":Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v12    # "sSex":Ljava/lang/String;
    :pswitch_1
    const-string v12, "M"

    .line 173
    .restart local v12    # "sSex":Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v12    # "sSex":Ljava/lang/String;
    :pswitch_2
    const-string v12, "O"

    .line 170
    .restart local v12    # "sSex":Ljava/lang/String;
    nop

    .line 178
    :goto_0
    nop

    .line 181
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->getAdministrativeSex()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v13

    invoke-virtual {v13, v12}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->getBloodType()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPatientAddress()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPhoneNumberHome()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->getPhoneNumberBusiness()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->getSSNNumberPatient()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->getEthnicGroup()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/PID;->getBirthPlace()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3, v6}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    move-result-object v13

    invoke-virtual {v13, v6}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getORDER_OBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    move-result-object v13

    .line 191
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getOBR()Lca/uhn/hl7v2/model/v24/segment/OBR;

    move-result-object v13

    .line 192
    .local v13, "obrSegment":Lca/uhn/hl7v2/model/v24/segment/OBR;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSetIDOBR()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSampleBarCode()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getLogNo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSampleID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getObservationDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v14

    invoke-virtual {v14}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v14

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/wen/fluorescence/lis/HL7;->HL7dateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getObservationEndDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v14

    invoke-virtual {v14}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v14

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/wen/fluorescence/lis/HL7;->HL7dateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getRelevantClinicalInfo()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getNote()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSpecimenReceivedDateTime()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v14

    invoke-virtual {v14}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v14

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingTime()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/wen/fluorescence/lis/HL7;->HL7dateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSampleType()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSubmittingPhysician()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v14

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDoctor()Ljava/lang/String;

    move-result-object v15

    .line 203
    invoke-virtual {v14, v15}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getSubmittingDepartment()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v14

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDivision()Ljava/lang/String;

    move-result-object v15

    .line 205
    invoke-virtual {v14, v15}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getAttendingPhysician()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v14

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getInspectingDoctor()Ljava/lang/String;

    move-result-object v15

    .line 207
    invoke-virtual {v14, v15}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/segment/OBR;->getTreatDepartment()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 213
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/wen/fluorescence/database/DBManager;->queryTestResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 214
    .local v14, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    move v15, v6

    .line 214
    .local v15, "obxIndex":I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-ge v15, v6, :cond_2

    .line 215
    move-object/from16 v17, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getPATIENT_RESULT(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;

    move-result-object v1

    .line 215
    .end local v1    # "mac":Ljava/lang/String;
    .local v17, "mac":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_PATIENT_RESULT;->getORDER_OBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;

    move-result-object v1

    .line 216
    invoke-virtual {v1, v15}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_ORDER_OBSERVATION;->getOBSERVATION(I)Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/group/ORU_R01_OBSERVATION;->getOBX()Lca/uhn/hl7v2/model/v24/segment/OBX;

    move-result-object v1

    .line 217
    .local v1, "obxSegment":Lca/uhn/hl7v2/model/v24/segment/OBX;
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v6

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v2

    move-object/from16 v2, v16

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    .line 217
    .end local v2    # "organization":Ljava/lang/String;
    .local v18, "organization":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "max":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v6

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v4

    move-object/from16 v4, v16

    check-cast v4, Lcom/wen/fluorescence/database/TestResult;

    .line 218
    .end local v4    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .local v19, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/wen/fluorescence/database/DBManager;->queryRangeMin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "min":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v6

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v20, v5

    move-object/from16 v5, v16

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    .line 219
    .end local v5    # "df":Ljava/text/SimpleDateFormat;
    .local v20, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/wen/fluorescence/database/DBManager;->queryOriResultBySerial(Ljava/lang/String;)Lcom/wen/fluorescence/database/OriResult;

    move-result-object v5

    .line 221
    .local v5, "oriResult":Lcom/wen/fluorescence/database/OriResult;
    packed-switch v15, :pswitch_data_1

    .line 232
    invoke-virtual {v5}, Lcom/wen/fluorescence/database/OriResult;->getTC1()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 229
    :pswitch_3
    invoke-virtual {v5}, Lcom/wen/fluorescence/database/OriResult;->getTC3()Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "strTC":Ljava/lang/String;
    goto :goto_2

    .line 226
    .end local v6    # "strTC":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v5}, Lcom/wen/fluorescence/database/OriResult;->getTC2()Ljava/lang/String;

    move-result-object v6

    .line 227
    .restart local v6    # "strTC":Ljava/lang/String;
    goto :goto_2

    .line 223
    .end local v6    # "strTC":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v5}, Lcom/wen/fluorescence/database/OriResult;->getTC1()Ljava/lang/String;

    move-result-object v6

    .line 224
    .restart local v6    # "strTC":Ljava/lang/String;
    nop

    .line 232
    :goto_2
    nop

    .line 235
    move-object/from16 v21, v5

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getSetIDOBX()Lca/uhn/hl7v2/model/v24/datatype/SI;

    move-result-object v5

    .line 235
    .end local v5    # "oriResult":Lcom/wen/fluorescence/database/OriResult;
    .local v21, "oriResult":Lcom/wen/fluorescence/database/OriResult;
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v22, v6

    move-object/from16 v6, v16

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    .line 235
    .end local v6    # "strTC":Ljava/lang/String;
    .local v22, "strTC":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/SI;->setValue(Ljava/lang/String;)V

    .line 236
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v5

    if-nez v5, :cond_1

    .line 238
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getValueType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v5

    const-string v6, "NM"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getObservationResult()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 242
    :cond_1
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getValueType()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v5

    const-string v6, "ST"

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getObservationResult()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 245
    :goto_3
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getProjectID()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getProjectName()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getUnits()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v6}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getReferencesRange()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v4

    const-string v4, "-"

    .line 248
    .end local v4    # "min":Ljava/lang/String;
    .local v23, "min":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getAbnormalFlags()Lca/uhn/hl7v2/model/v24/datatype/IS;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/IS;->setValue(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getObservationResultStatus()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getOriginalResult()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getDateTimeOfTheObservation()Lca/uhn/hl7v2/model/v24/datatype/TS;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/model/v24/datatype/TS;->getTimeOfAnEvent()Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;

    move-result-object v4

    .line 253
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v5}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wen/fluorescence/lis/HL7;->HL7dateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/TSComponentOne;->setValue(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/OBX;->getResponsibleObserver()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 214
    .end local v1    # "obxSegment":Lca/uhn/hl7v2/model/v24/segment/OBX;
    .end local v2    # "max":Ljava/lang/String;
    .end local v21    # "oriResult":Lcom/wen/fluorescence/database/OriResult;
    .end local v22    # "strTC":Ljava/lang/String;
    .end local v23    # "min":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 256
    .end local v15    # "obxIndex":I
    .end local v17    # "mac":Ljava/lang/String;
    .end local v18    # "organization":Ljava/lang/String;
    .end local v19    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v20    # "df":Ljava/text/SimpleDateFormat;
    .local v1, "mac":Ljava/lang/String;
    .local v2, "organization":Ljava/lang/String;
    .local v4, "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .local v5, "df":Ljava/text/SimpleDateFormat;
    :cond_2
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 256
    .end local v1    # "mac":Ljava/lang/String;
    .end local v2    # "organization":Ljava/lang/String;
    .end local v4    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .end local v5    # "df":Ljava/text/SimpleDateFormat;
    .restart local v17    # "mac":Ljava/lang/String;
    .restart local v18    # "organization":Ljava/lang/String;
    .restart local v19    # "mshSegment":Lca/uhn/hl7v2/model/v24/segment/MSH;
    .restart local v20    # "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Lca/uhn/hl7v2/model/v24/message/ORU_R01;->getDSC()Lca/uhn/hl7v2/model/v24/segment/DSC;

    move-result-object v1

    .line 257
    .local v1, "dscSegment":Lca/uhn/hl7v2/model/v24/segment/DSC;
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationPointer()Lca/uhn/hl7v2/model/v24/datatype/ST;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Lca/uhn/hl7v2/model/v24/datatype/ST;->setValue(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/v24/segment/DSC;->getContinuationStyle()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v2

    const-string v4, "F"

    invoke-virtual {v2, v4}, Lca/uhn/hl7v2/model/v24/datatype/ID;->setValue(Ljava/lang/String;)V

    .line 264
    new-instance v2, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v2}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 271
    .local v2, "hapiContext":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v2}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v4

    .line 272
    .local v4, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v4, v3}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "encodedMessage":Ljava/lang/String;
    :try_start_0
    invoke-interface {v2}, Lca/uhn/hl7v2/HapiContext;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_4

    .line 276
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 277
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 279
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/wen/fluorescence/lis/HL7;->beginFlag:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/wen/fluorescence/lis/HL7;->endFlag:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static handleMsg(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 22
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 570
    move-object/from16 v1, p1

    sget-object v2, Lcom/wen/fluorescence/lis/HL7;->tempBuffer:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wen/fluorescence/lis/HL7;->tempBuffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 571
    .end local p0    # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    goto :goto_0

    .line 573
    .end local v2    # "msg":Ljava/lang/String;
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_0
    move-object/from16 v3, p0

    move-object v2, v3

    .line 573
    .end local p0    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    :goto_0
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 574
    .local v3, "buf":[B
    array-length v4, v3

    .line 575
    .local v4, "n":I
    if-lez v4, :cond_14

    .line 576
    const/4 v5, 0x0

    .line 576
    .local v5, "indexStart":I
    move v6, v4

    .line 577
    .local v6, "indexEnd":I
    move v8, v5

    const/4 v5, 0x0

    .line 577
    .local v5, "i":I
    .local v8, "indexStart":I
    :goto_1
    const/16 v9, 0xd

    if-ge v5, v4, :cond_3

    .line 578
    aget-byte v10, v3, v5

    const/16 v11, 0xb

    if-ne v10, v11, :cond_1

    .line 579
    add-int/lit8 v8, v5, 0x1

    .line 581
    :cond_1
    aget-byte v10, v3, v5

    const/16 v11, 0x1c

    if-ne v10, v11, :cond_2

    add-int/lit8 v10, v5, 0x1

    aget-byte v10, v3, v10

    if-ne v10, v9, :cond_2

    .line 582
    add-int/lit8 v6, v5, -0x1

    .line 583
    goto :goto_2

    .line 577
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 586
    .end local v5    # "i":I
    :cond_3
    :goto_2
    new-instance v5, Ljava/lang/String;

    invoke-static {v3, v8, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v5, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 589
    .local v5, "result":Ljava/lang/String;
    new-instance v10, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v10}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 590
    .local v10, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v10}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v11

    .line 593
    .local v11, "parser":Lca/uhn/hl7v2/parser/Parser;
    :try_start_0
    invoke-virtual {v11, v5}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .local v12, "hapiMsg":Lca/uhn/hl7v2/model/Message;
    nop

    .line 598
    nop

    .line 601
    instance-of v13, v12, Lca/uhn/hl7v2/model/v24/message/ORU_R01;

    if-eqz v13, :cond_5

    .line 602
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "################\u6536\u5230\u7684\u4e3a\uff1aORU_R01"

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 603
    if-eqz v1, :cond_4

    .line 604
    const/16 v7, 0x101

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 693
    .end local v4    # "n":I
    .end local v8    # "indexStart":I
    .local v16, "n":I
    .local v17, "indexStart":I
    :cond_4
    :goto_3
    move/from16 v16, v4

    move/from16 v17, v8

    goto/16 :goto_a

    .line 606
    .end local v16    # "n":I
    .end local v17    # "indexStart":I
    .restart local v4    # "n":I
    .restart local v8    # "indexStart":I
    :cond_5
    instance-of v13, v12, Lca/uhn/hl7v2/model/v24/message/ACK;

    if-eqz v13, :cond_6

    .line 607
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "################\u6536\u5230\u7684\u4e3a\uff1aACK"

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 608
    if-eqz v1, :cond_4

    .line 609
    const/16 v7, 0x102

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 611
    :cond_6
    instance-of v13, v12, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;

    if-eqz v13, :cond_9

    .line 612
    move-object v7, v12

    check-cast v7, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/message/QCK_Q02;->getQAK()Lca/uhn/hl7v2/model/v24/segment/QAK;

    move-result-object v7

    .line 613
    .local v7, "qak":Lca/uhn/hl7v2/model/v24/segment/QAK;
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/QAK;->getQak2_QueryResponseStatus()Lca/uhn/hl7v2/model/v24/datatype/ID;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/ID;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 614
    .local v9, "returnResult":Ljava/lang/String;
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "################\u6536\u5230\u7684\u4e3a\uff1aQCK_Q02 "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 615
    if-eqz v1, :cond_8

    .line 616
    const-string v13, "OK"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 617
    const/16 v13, 0x103

    invoke-virtual {v1, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 619
    :cond_7
    const/16 v13, 0x106

    invoke-virtual {v1, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 622
    .end local v7    # "qak":Lca/uhn/hl7v2/model/v24/segment/QAK;
    .end local v9    # "returnResult":Ljava/lang/String;
    :cond_8
    :goto_4
    goto :goto_3

    :cond_9
    instance-of v13, v12, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;

    if-eqz v13, :cond_13

    .line 623
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "################\u6536\u5230\u7684\u4e3a\uff1aDSR_Q03"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 624
    move-object v13, v12

    check-cast v13, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;

    .line 625
    .local v13, "orfMsg":Lca/uhn/hl7v2/model/v24/message/DSR_Q03;
    invoke-virtual {v13}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSPReps()I

    move-result v14

    .line 626
    .local v14, "dspSize":I
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dspSize:"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    const/4 v7, 0x0

    .line 627
    .local v7, "i":I
    :goto_5
    if-ge v7, v14, :cond_a

    .line 628
    invoke-virtual {v13, v7}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    .line 629
    .local v9, "dsp":Lca/uhn/hl7v2/model/v24/segment/DSP;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move/from16 v16, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .line 629
    .end local v4    # "n":I
    .restart local v16    # "n":I
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v8

    const-string v8, "Number:"

    .line 629
    .end local v8    # "indexStart":I
    .restart local v17    # "indexStart":I
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Value:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/TX;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 629
    invoke-virtual {v15, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    .end local v9    # "dsp":Lca/uhn/hl7v2/model/v24/segment/DSP;
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    move/from16 v8, v17

    goto :goto_5

    .line 633
    .end local v7    # "i":I
    .end local v16    # "n":I
    .end local v17    # "indexStart":I
    .restart local v4    # "n":I
    .restart local v8    # "indexStart":I
    :cond_a
    move/from16 v16, v4

    move/from16 v17, v8

    .line 633
    .end local v4    # "n":I
    .end local v8    # "indexStart":I
    .restart local v16    # "n":I
    .restart local v17    # "indexStart":I
    new-instance v4, Lcom/wen/fluorescence/database/TestResult;

    invoke-direct {v4}, Lcom/wen/fluorescence/database/TestResult;-><init>()V

    .line 634
    .local v4, "testResult":Lcom/wen/fluorescence/database/TestResult;
    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/TX;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/wen/fluorescence/database/TestResult;->setDoctorNumber(Ljava/lang/String;)V

    .line 635
    const/4 v7, 0x1

    invoke-virtual {v13, v7}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/TX;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setBedNumber(Ljava/lang/String;)V

    .line 636
    const/4 v8, 0x2

    invoke-virtual {v13, v8}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/wen/fluorescence/database/TestResult;->setName(Ljava/lang/String;)V

    .line 648
    const/4 v9, 0x4

    invoke-virtual {v13, v9}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v9

    invoke-virtual {v9}, Lca/uhn/hl7v2/model/v24/datatype/TX;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 649
    .local v9, "qSex":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 650
    const-string v15, "M"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 651
    invoke-virtual {v4, v7}, Lcom/wen/fluorescence/database/TestResult;->setSex(I)V

    goto :goto_6

    .line 652
    :cond_b
    const-string v7, "F"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 653
    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setSex(I)V

    goto :goto_6

    .line 655
    :cond_c
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/wen/fluorescence/database/TestResult;->setSex(I)V

    goto :goto_7

    .line 658
    :cond_d
    :goto_6
    const/4 v7, 0x0

    :goto_7
    const/4 v8, 0x6

    invoke-virtual {v13, v8}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/TX;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setPatientNumber(Ljava/lang/String;)V

    .line 659
    const/16 v8, 0xc

    invoke-virtual {v13, v8}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/TX;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setReviewer(Ljava/lang/String;)V

    .line 660
    const/16 v8, 0xd

    invoke-virtual {v13, v8}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/TX;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setNote(Ljava/lang/String;)V

    .line 662
    const/16 v8, 0x16

    invoke-virtual {v13, v8}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v8

    invoke-virtual {v8}, Lca/uhn/hl7v2/model/v24/datatype/TX;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 663
    .local v8, "sendTime":Ljava/lang/String;
    move-object v15, v8

    .line 664
    .local v15, "newSendTime":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v19, v9

    const/16 v9, 0xe

    .line 664
    .end local v9    # "qSex":Ljava/lang/String;
    .local v19, "qSex":Ljava/lang/String;
    if-ne v7, v9, :cond_e

    .line 665
    const-string v7, "yyyyMMddHHmmss"

    .line 666
    invoke-static {v8, v7}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    .line 665
    invoke-static {v7, v9}, Lcom/wen/fluorescence/util/DateUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 668
    :cond_e
    invoke-virtual {v4, v15}, Lcom/wen/fluorescence/database/TestResult;->setSubmittingTime(Ljava/lang/String;)V

    .line 669
    const/16 v7, 0x19

    invoke-virtual {v13, v7}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/TX;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 670
    .local v7, "sampeType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 671
    const/16 v18, 0x0

    .line 671
    .local v18, "i":I
    :goto_8
    move/from16 v9, v18

    .line 671
    .end local v18    # "i":I
    .local v9, "i":I
    move-object/from16 v20, v8

    sget-object v8, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    .line 671
    .end local v8    # "sendTime":Ljava/lang/String;
    .local v20, "sendTime":Ljava/lang/String;
    array-length v8, v8

    if-ge v9, v8, :cond_10

    .line 672
    sget-object v8, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 673
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    const-string v7, ""

    .line 673
    .end local v7    # "sampeType":Ljava/lang/String;
    .local v21, "sampeType":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/wen/fluorescence/database/TestResult;->setSimpleType(Ljava/lang/String;)V

    .line 674
    goto :goto_9

    .line 671
    .end local v21    # "sampeType":Ljava/lang/String;
    .restart local v7    # "sampeType":Ljava/lang/String;
    :cond_f
    move-object/from16 v21, v7

    .line 671
    .end local v7    # "sampeType":Ljava/lang/String;
    .restart local v21    # "sampeType":Ljava/lang/String;
    add-int/lit8 v18, v9, 0x1

    .line 671
    .end local v9    # "i":I
    .restart local v18    # "i":I
    move-object/from16 v8, v20

    goto :goto_8

    .line 678
    .end local v18    # "i":I
    .end local v21    # "sampeType":Ljava/lang/String;
    .restart local v7    # "sampeType":Ljava/lang/String;
    :cond_10
    move-object/from16 v21, v7

    .line 678
    .end local v7    # "sampeType":Ljava/lang/String;
    .restart local v21    # "sampeType":Ljava/lang/String;
    goto :goto_9

    .line 678
    .end local v20    # "sendTime":Ljava/lang/String;
    .end local v21    # "sampeType":Ljava/lang/String;
    .restart local v7    # "sampeType":Ljava/lang/String;
    .restart local v8    # "sendTime":Ljava/lang/String;
    :cond_11
    move-object/from16 v21, v7

    move-object/from16 v20, v8

    .line 678
    .end local v7    # "sampeType":Ljava/lang/String;
    .end local v8    # "sendTime":Ljava/lang/String;
    .restart local v20    # "sendTime":Ljava/lang/String;
    .restart local v21    # "sampeType":Ljava/lang/String;
    :goto_9
    const/16 v7, 0x1a

    invoke-virtual {v13, v7}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/TX;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/wen/fluorescence/database/TestResult;->setSubmittingDoctor(Ljava/lang/String;)V

    .line 679
    const/16 v7, 0x1b

    invoke-virtual {v13, v7}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/TX;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/wen/fluorescence/database/TestResult;->setSubmittingDivision(Ljava/lang/String;)V

    .line 680
    const/16 v7, 0x20

    invoke-virtual {v13, v7}, Lca/uhn/hl7v2/model/v24/message/DSR_Q03;->getDSP(I)Lca/uhn/hl7v2/model/v24/segment/DSP;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/segment/DSP;->getDataLine()Lca/uhn/hl7v2/model/v24/datatype/TX;

    move-result-object v7

    invoke-virtual {v7}, Lca/uhn/hl7v2/model/v24/datatype/TX;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/wen/fluorescence/database/TestResult;->setInspectingDoctor(Ljava/lang/String;)V

    .line 682
    if-eqz v1, :cond_12

    .line 683
    const/16 v7, 0x104

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 684
    .local v7, "message":Landroid/os/Message;
    iput-object v4, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 685
    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 687
    .end local v7    # "message":Landroid/os/Message;
    :cond_12
    const-string v7, ""

    sput-object v7, Lcom/wen/fluorescence/lis/HL7;->tempBuffer:Ljava/lang/String;

    .line 688
    .end local v4    # "testResult":Lcom/wen/fluorescence/database/TestResult;
    .end local v13    # "orfMsg":Lca/uhn/hl7v2/model/v24/message/DSR_Q03;
    .end local v14    # "dspSize":I
    .end local v15    # "newSendTime":Ljava/lang/String;
    .end local v19    # "qSex":Ljava/lang/String;
    .end local v20    # "sendTime":Ljava/lang/String;
    .end local v21    # "sampeType":Ljava/lang/String;
    goto :goto_a

    .line 689
    .end local v16    # "n":I
    .end local v17    # "indexStart":I
    .local v4, "n":I
    .local v8, "indexStart":I
    :cond_13
    move/from16 v16, v4

    move/from16 v17, v8

    .line 689
    .end local v4    # "n":I
    .end local v8    # "indexStart":I
    .restart local v16    # "n":I
    .restart local v17    # "indexStart":I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "################\u6536\u5230\u7684\u4e3a\uff1a\u5176\u4ed6"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-interface {v12}, Lca/uhn/hl7v2/model/Message;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 689
    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 693
    :goto_a
    add-int/lit8 v4, v6, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0xa

    if-ge v4, v7, :cond_15

    .line 694
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v7, v6, 0x2

    array-length v8, v3

    invoke-static {v3, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v4, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v4, v1}, Lcom/wen/fluorescence/lis/HL7;->handleMsg(Ljava/lang/String;Landroid/os/Handler;)V

    .line 694
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "indexEnd":I
    .end local v10    # "context":Lca/uhn/hl7v2/HapiContext;
    .end local v11    # "parser":Lca/uhn/hl7v2/parser/Parser;
    .end local v12    # "hapiMsg":Lca/uhn/hl7v2/model/Message;
    .end local v17    # "indexStart":I
    goto :goto_b

    .line 594
    .end local v16    # "n":I
    .restart local v4    # "n":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v6    # "indexEnd":I
    .restart local v8    # "indexStart":I
    .restart local v10    # "context":Lca/uhn/hl7v2/HapiContext;
    .restart local v11    # "parser":Lca/uhn/hl7v2/parser/Parser;
    :catch_0
    move-exception v0

    move/from16 v16, v4

    move/from16 v17, v8

    .line 594
    .end local v4    # "n":I
    .end local v8    # "indexStart":I
    .restart local v16    # "n":I
    .restart local v17    # "indexStart":I
    move-object v4, v0

    .line 595
    .local v4, "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception\uff1aresult:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 596
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 597
    sput-object v5, Lcom/wen/fluorescence/lis/HL7;->tempBuffer:Ljava/lang/String;

    .line 598
    return-void

    .line 698
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "indexEnd":I
    .end local v10    # "context":Lca/uhn/hl7v2/HapiContext;
    .end local v11    # "parser":Lca/uhn/hl7v2/parser/Parser;
    .end local v16    # "n":I
    .end local v17    # "indexStart":I
    .local v4, "n":I
    :cond_14
    move/from16 v16, v4

    .line 698
    .end local v4    # "n":I
    .restart local v16    # "n":I
    :cond_15
    :goto_b
    return-void
.end method
