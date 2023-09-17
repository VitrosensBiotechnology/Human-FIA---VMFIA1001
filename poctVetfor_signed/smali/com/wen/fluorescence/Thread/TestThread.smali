.class public Lcom/wen/fluorescence/Thread/TestThread;
.super Ljava/lang/Object;
.source "TestThread.java"


# static fields
.field public static final MSG_BARCODE_INCONFORMITY:I = 0x15

.field public static final MSG_COUNT_TIME:I = 0x12

.field public static final MSG_READ_CODE_CARD_FAIL:I = 0x13

.field public static final MSG_READ_CODE_CARD_NO_MATCH:I = 0x21

.field public static final MSG_READ_CODE_CARD_SUCCESS:I = 0x14

.field public static final MSG_SAMPLETYPES_NO_SAME:I = 0x20

.field public static final MSG_SAMPLE_SET_UPGRADE:I = 0x22

.field public static final MSG_STANDAR_TEST:I = 0x19

.field public static final MSG_TEST_CANCEL:I = 0x17

.field public static final MSG_TEST_COMPLET:I = 0x18

.field public static final MSG_TEST_ERROR:I = 0x16

.field public static final MSG_TIME_OUT:I = 0x11

.field private static final TAG:Ljava/lang/String; = "TestThread"

.field private static testThread:Lcom/wen/fluorescence/Thread/TestThread;


# instance fields
.field private IDChipVersion:I

.field private Kvalues:[D

.field private TestMode:I

.field private iDataArray:[I

.field private idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

.field private idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private m_testResult:Lcom/wen/fluorescence/database/TestResult;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation
.end field

.field private resultStructLib:Lgiven/tronho/api/ResultStructLib;

.field private sampleType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultList:Ljava/util/List;

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    .line 77
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Thread/TestThread;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Thread/TestThread;

    .line 47
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private calculateNongdu(I)Z
    .locals 18
    .param p1, "index"    # I

    move-object/from16 v0, p0

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_dimension:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v2

    .line 1217
    .local v7, "mSubFlag":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_unlog:I

    if-lez v1, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v2

    .line 1218
    .local v8, "mLogFlag":Z
    :goto_1
    new-instance v4, Lcom/wen/fluorescence/arithmetic/FitCalcute;

    iget-object v1, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-direct {v4, v1}, Lcom/wen/fluorescence/arithmetic/FitCalcute;-><init>(Landroid/content/Context;)V

    .line 1220
    .local v4, "fit":Lcom/wen/fluorescence/arithmetic/FitCalcute;
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v1, v1, p1

    iget-object v5, v1, Lcom/wen/fluorescence/bean/IDChipInfoEx;->cc:[D

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v1, v1, p1

    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoEx;->tc:[D

    .line 1221
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v1, v1, p1

    iget v9, v1, Lcom/wen/fluorescence/bean/IDChipInfoEx;->l_count:I

    .line 1222
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v1, v1, p1

    iget v10, v1, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_divisionIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v1, v1, p1

    iget-object v11, v1, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_dimen:[I

    .line 1220
    invoke-virtual/range {v4 .. v11}, Lcom/wen/fluorescence/arithmetic/FitCalcute;->FitRise([D[DZZII[I)I

    .line 1223
    const-wide/16 v1, 0x0

    .line 1224
    .local v1, "tc":D
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 1232
    :pswitch_0
    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC3()D

    move-result-wide v1

    goto :goto_2

    .line 1229
    :pswitch_1
    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC2()D

    move-result-wide v1

    .line 1230
    goto :goto_2

    .line 1226
    :pswitch_2
    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC()D

    move-result-wide v1

    .line 1227
    nop

    .line 1235
    :goto_2
    iget-object v5, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v6, v6, p1

    iget-object v12, v6, Lcom/wen/fluorescence/bean/IDChipInfoEx;->cc:[D

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v6, v6, p1

    iget-object v13, v6, Lcom/wen/fluorescence/bean/IDChipInfoEx;->tc:[D

    .line 1236
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoEx;->l_count:I

    .line 1237
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v9, v9, p1

    iget v14, v9, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_divisionIndex:I

    .line 1235
    move-object v9, v4

    move-wide v10, v1

    move/from16 v17, v14

    move v14, v7

    move v15, v8

    move/from16 v16, v6

    invoke-virtual/range {v9 .. v17}, Lcom/wen/fluorescence/arithmetic/FitCalcute;->GetChromaRise(D[D[DZZII)D

    move-result-wide v9

    aput-wide v9, v5, p1

    .line 1238
    iget-object v5, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    iget-object v6, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v9, v6, p1

    .line 1239
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_SampleTypeFactor:[D

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getSampleType()I

    move-result v11

    aget-wide v11, v6, v11

    mul-double/2addr v9, v11

    aput-wide v9, v5, p1

    .line 1241
    iget-object v5, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v6

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v9, v9, p1

    iget v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_decimalDigits:I

    iget-object v10, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v11, v10, p1

    .line 1241
    invoke-virtual {v6, v9, v11, v12}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->reserveDecimals(ID)D

    move-result-wide v9

    aput-wide v9, v5, p1

    .line 1243
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateNongdu4PLC(I)V
    .locals 6
    .param p1, "index"    # I

    .line 1182
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1200
    :pswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC3()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoEx;->plcParamters:[D

    invoke-static {v1, v2, v3}, Lcom/wen/fluorescence/arithmetic/PLC4;->GetXVal(D[D)D

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 1201
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v2, v1, p1

    .line 1202
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_SampleTypeFactor:[D

    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getSampleType()I

    move-result v4

    aget-wide v4, v1, v4

    mul-double/2addr v2, v4

    aput-wide v2, v0, p1

    .line 1204
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v1

    .line 1205
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_decimalDigits:I

    iget-object v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v4, v3, p1

    .line 1204
    invoke-virtual {v1, v2, v4, v5}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->reserveDecimals(ID)D

    move-result-wide v1

    aput-wide v1, v0, p1

    goto/16 :goto_0

    .line 1192
    :pswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC2()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoEx;->plcParamters:[D

    invoke-static {v1, v2, v3}, Lcom/wen/fluorescence/arithmetic/PLC4;->GetXVal(D[D)D

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 1193
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v2, v1, p1

    .line 1194
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_SampleTypeFactor:[D

    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getSampleType()I

    move-result v4

    aget-wide v4, v1, v4

    mul-double/2addr v2, v4

    aput-wide v2, v0, p1

    .line 1196
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v1

    .line 1197
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_decimalDigits:I

    iget-object v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v4, v3, p1

    .line 1196
    invoke-virtual {v1, v2, v4, v5}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->reserveDecimals(ID)D

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 1198
    goto :goto_0

    .line 1184
    :pswitch_2
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoEx;->plcParamters:[D

    invoke-static {v1, v2, v3}, Lcom/wen/fluorescence/arithmetic/PLC4;->GetXVal(D[D)D

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 1185
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v2, v1, p1

    .line 1186
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_SampleTypeFactor:[D

    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getSampleType()I

    move-result v4

    aget-wide v4, v1, v4

    mul-double/2addr v2, v4

    aput-wide v2, v0, p1

    .line 1188
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v1

    .line 1189
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_decimalDigits:I

    iget-object v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v4, v3, p1

    .line 1188
    invoke-virtual {v1, v2, v4, v5}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->reserveDecimals(ID)D

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 1190
    nop

    .line 1208
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkSampleType()Z
    .locals 8

    .line 505
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 506
    .local v0, "localSampleArray":[I
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f020000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "allSampleNames":[Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .line 507
    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 508
    move v4, v2

    .line 508
    .local v4, "j":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 509
    sget-object v5, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    aget-object v5, v5, v3

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 510
    aput v4, v0, v3

    .line 511
    goto :goto_2

    .line 508
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 507
    .end local v4    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 516
    .end local v3    # "i":I
    :cond_2
    move v3, v2

    .line 516
    .restart local v3    # "i":I
    :goto_3
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 517
    const/4 v4, 0x0

    .line 518
    .local v4, "bSame":Z
    move v5, v2

    .line 518
    .local v5, "j":I
    :goto_4
    iget-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 519
    aget v6, v0, v3

    iget-object v7, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getSampleTypeFactor()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 520
    const/4 v4, 0x1

    .line 521
    goto :goto_5

    .line 518
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 524
    .end local v5    # "j":I
    :cond_4
    :goto_5
    if-nez v4, :cond_5

    .line 525
    return v2

    .line 516
    .end local v4    # "bSame":Z
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 528
    .end local v3    # "i":I
    :cond_6
    const/4 v2, 0x1

    return v2
.end method

.method private getIDChipSampleTypes()[Ljava/lang/String;
    .locals 6

    .line 487
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 488
    .local v0, "SampleTypes":[Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f020000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "allSampleNames":[Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .line 489
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 491
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getSampleTypeFactor()I

    move-result v4

    aget-object v4, v1, v4

    aput-object v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    goto :goto_1

    .line 492
    :catch_0
    move-exception v4

    .line 493
    .local v4, "e":Ljava/lang/Exception;
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v1, v5

    aput-object v5, v0, v3

    .line 489
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 496
    .end local v3    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    sget-object v0, Lcom/wen/fluorescence/Thread/TestThread;->testThread:Lcom/wen/fluorescence/Thread/TestThread;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/wen/fluorescence/Thread/TestThread;

    invoke-direct {v0}, Lcom/wen/fluorescence/Thread/TestThread;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/Thread/TestThread;->testThread:Lcom/wen/fluorescence/Thread/TestThread;

    .line 85
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/Thread/TestThread;->testThread:Lcom/wen/fluorescence/Thread/TestThread;

    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    .line 86
    sget-object v0, Lcom/wen/fluorescence/Thread/TestThread;->testThread:Lcom/wen/fluorescence/Thread/TestThread;

    return-object v0
.end method

.method private parseIDChipDataLib(Lcom/wen/fluorescence/bean/IDChipInfoN;)Lgiven/tronho/api/IDChipDataLib;
    .locals 12
    .param p1, "idChipInfo"    # Lcom/wen/fluorescence/bean/IDChipInfoN;

    .line 668
    new-instance v0, Lgiven/tronho/api/IDChipDataLib;

    invoke-direct {v0}, Lgiven/tronho/api/IDChipDataLib;-><init>()V

    .line 669
    .local v0, "idChipDataLib":Lgiven/tronho/api/IDChipDataLib;
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setItemCount(I)V

    .line 670
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->T1_start:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setT1Start(S)V

    .line 671
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->T1_end:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setT1End(S)V

    .line 672
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->T2_start:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setT2Start(S)V

    .line 673
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->T2_end:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setT2End(S)V

    .line 674
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->C_start:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setCStart(S)V

    .line 675
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->C_end:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setCEnd(S)V

    .line 676
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberT1:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setUiValueCountT1(I)V

    .line 677
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberT2:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setUiValueCountT2(I)V

    .line 678
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberC:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setUiValueCountC(I)V

    .line 679
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X1_start:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setX1Start(S)V

    .line 680
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X1_end:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setX1End(S)V

    .line 681
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X2_start:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setX2Start(S)V

    .line 682
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X2_end:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setX2End(S)V

    .line 683
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X3_start:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setX3Start(S)V

    .line 684
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X3_end:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setX3End(S)V

    .line 685
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X4_start:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setX4Start(S)V

    .line 686
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X4_end:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setX4End(S)V

    .line 687
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX1:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setUiValueCount1(I)V

    .line 688
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX2:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setUiValueCount2(I)V

    .line 689
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX3:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setUiValueCount3(I)V

    .line 690
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX4:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setUiValueCount4(I)V

    .line 691
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->cutBackgroundFlag:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setCutBackground(S)V

    .line 692
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->toCalcApex:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setUiPeakArithmetic(I)V

    .line 693
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->RushTopName:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setRushTopName(I)V

    .line 694
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->isRushTop:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setRushTopFlag(I)V

    .line 695
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->rushTop:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setRushTopValue(I)V

    .line 697
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->qualitativeFlag:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setQualitativeFlag(I)V

    .line 698
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->isVisibleResult:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setIsShowResult(I)V

    .line 699
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->isVisibleConclusion:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setIsShowConclusion(I)V

    .line 701
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->AddSampleName:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setAddSampleName(I)V

    .line 702
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->isAddSample:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setAddSampleFlag(I)V

    .line 703
    iget v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->addSample:I

    invoke-virtual {v0, v1}, Lgiven/tronho/api/IDChipDataLib;->setAddSampleValue(I)V

    .line 705
    const/4 v1, 0x0

    move v2, v1

    .line 705
    .local v2, "i":I
    :goto_0
    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v2, v3, :cond_3

    .line 706
    new-instance v3, Lgiven/tronho/api/IDChipItemLib;

    invoke-direct {v3}, Lgiven/tronho/api/IDChipItemLib;-><init>()V

    .line 707
    .local v3, "idChipItemLib":Lgiven/tronho/api/IDChipItemLib;
    iget-object v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->AlgorithmType:I

    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setAlgorithmType(I)V

    .line 708
    iget-object v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_calcMethod:I

    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setTestMode(I)V

    .line 709
    iget-object v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_t:I

    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setFZValue(I)V

    .line 710
    iget-object v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_c:I

    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setFMValue(I)V

    .line 711
    iget-object v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->l_count:I

    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setDataLen(I)V

    .line 712
    iget-object v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_unlog:I

    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setmLog(I)V

    .line 713
    iget-object v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimension:I

    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setmSub(I)V

    .line 714
    iget-object v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_divisionIndex:I

    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setPosition(I)V

    .line 715
    iget-object v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimen:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setPower1(I)V

    .line 716
    iget-object v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimen:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setPower2(I)V

    .line 717
    iget-object v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->x_isOtherAlglog:I

    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setxLog(I)V

    .line 718
    iget-object v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->y_isOtherAlglog:I

    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setyLog(I)V

    .line 719
    iget v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setiPloyCoefficientFlag(I)V

    .line 720
    iget-object v4, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->l_count:I

    new-array v4, v4, [F

    .line 721
    .local v4, "xArray":[F
    iget-object v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/wen/fluorescence/bean/IDChipInfoExN;->l_count:I

    new-array v5, v5, [F

    .line 722
    .local v5, "yArray":[F
    move v6, v1

    .line 722
    .local v6, "j":I
    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 723
    iget-object v7, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoExN;->cc:[D

    aget-wide v8, v7, v6

    double-to-float v7, v8

    aput v7, v4, v6

    .line 724
    iget-object v7, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoExN;->tc:[D

    aget-wide v8, v7, v6

    double-to-float v7, v8

    aput v7, v5, v6

    .line 722
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 726
    .end local v6    # "j":I
    :cond_0
    const/16 v6, 0x10

    new-array v7, v6, [F

    .line 727
    .local v7, "A0":[F
    new-array v6, v6, [F

    .line 728
    .local v6, "A1":[F
    move v8, v1

    .line 728
    .local v8, "j":I
    :goto_2
    const/4 v9, 0x6

    if-ge v8, v9, :cond_1

    .line 729
    iget-object v9, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v10, v9, v8

    double-to-float v9, v10

    aput v9, v7, v8

    .line 730
    iget-object v9, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v10, v9, v8

    double-to-float v9, v10

    aput v9, v6, v8

    .line 728
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 732
    .end local v8    # "j":I
    :cond_1
    invoke-virtual {v3, v4}, Lgiven/tronho/api/IDChipItemLib;->setXArray([F)V

    .line 733
    invoke-virtual {v3, v5}, Lgiven/tronho/api/IDChipItemLib;->setYArray([F)V

    .line 734
    invoke-virtual {v3, v7}, Lgiven/tronho/api/IDChipItemLib;->setA0([F)V

    .line 735
    invoke-virtual {v3, v6}, Lgiven/tronho/api/IDChipItemLib;->setA1([F)V

    .line 736
    move v8, v1

    .line 736
    .restart local v8    # "j":I
    :goto_3
    invoke-virtual {v3}, Lgiven/tronho/api/IDChipItemLib;->getsSampleTypeCoefficients()[Lgiven/tronho/api/SampleTypeCoefficientLib;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_2

    .line 737
    new-instance v9, Lgiven/tronho/api/SampleTypeCoefficientLib;

    invoke-direct {v9}, Lgiven/tronho/api/SampleTypeCoefficientLib;-><init>()V

    .line 738
    .local v9, "sampleTypeCoefficientLib":Lgiven/tronho/api/SampleTypeCoefficientLib;
    iget-object v10, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getSampleTypeFactor()I

    move-result v10

    invoke-virtual {v9, v10}, Lgiven/tronho/api/SampleTypeCoefficientLib;->setUiSampleNumber(I)V

    .line 739
    iget-object v10, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getSampleSubMark()I

    move-result v10

    invoke-virtual {v9, v10}, Lgiven/tronho/api/SampleTypeCoefficientLib;->setUiSampleSubFlag(I)V

    .line 740
    iget-object v10, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getSampleCoeff()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lgiven/tronho/api/SampleTypeCoefficientLib;->setfCoefficient(D)V

    .line 741
    iget-object v10, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getDensitySubLow()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lgiven/tronho/api/SampleTypeCoefficientLib;->setfDensityLow(D)V

    .line 742
    iget-object v10, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getDensitySubHight()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lgiven/tronho/api/SampleTypeCoefficientLib;->setfDensityHight(D)V

    .line 743
    iget-object v10, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getCoefficientSubLow()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lgiven/tronho/api/SampleTypeCoefficientLib;->setfCoefficientLow(D)V

    .line 744
    iget-object v10, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getCoefficientSubMiddle()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lgiven/tronho/api/SampleTypeCoefficientLib;->setfCoefficientMiddle(D)V

    .line 745
    iget-object v10, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getCoefficientSubHight()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lgiven/tronho/api/SampleTypeCoefficientLib;->setfCoefficientHight(D)V

    .line 746
    invoke-virtual {v3}, Lgiven/tronho/api/IDChipItemLib;->getsSampleTypeCoefficients()[Lgiven/tronho/api/SampleTypeCoefficientLib;

    move-result-object v10

    aput-object v9, v10, v8

    .line 736
    .end local v9    # "sampleTypeCoefficientLib":Lgiven/tronho/api/SampleTypeCoefficientLib;
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 748
    .end local v8    # "j":I
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 748
    .end local v3    # "idChipItemLib":Lgiven/tronho/api/IDChipItemLib;
    .end local v4    # "xArray":[F
    .end local v5    # "yArray":[F
    .end local v6    # "A1":[F
    .end local v7    # "A0":[F
    goto :goto_4

    .line 756
    .restart local v3    # "idChipItemLib":Lgiven/tronho/api/IDChipItemLib;
    .restart local v4    # "xArray":[F
    .restart local v5    # "yArray":[F
    .restart local v6    # "A1":[F
    .restart local v7    # "A0":[F
    :pswitch_0
    invoke-virtual {v0, v3}, Lgiven/tronho/api/IDChipDataLib;->setIdChipItems3(Lgiven/tronho/api/IDChipItemLib;)V

    .line 756
    .end local v3    # "idChipItemLib":Lgiven/tronho/api/IDChipItemLib;
    .end local v4    # "xArray":[F
    .end local v5    # "yArray":[F
    .end local v6    # "A1":[F
    .end local v7    # "A0":[F
    goto :goto_4

    .line 753
    .restart local v3    # "idChipItemLib":Lgiven/tronho/api/IDChipItemLib;
    .restart local v4    # "xArray":[F
    .restart local v5    # "yArray":[F
    .restart local v6    # "A1":[F
    .restart local v7    # "A0":[F
    :pswitch_1
    invoke-virtual {v0, v3}, Lgiven/tronho/api/IDChipDataLib;->setIdChipItems2(Lgiven/tronho/api/IDChipItemLib;)V

    .line 754
    goto :goto_4

    .line 750
    :pswitch_2
    invoke-virtual {v0, v3}, Lgiven/tronho/api/IDChipDataLib;->setIdChipItems(Lgiven/tronho/api/IDChipItemLib;)V

    .line 751
    nop

    .line 705
    .end local v3    # "idChipItemLib":Lgiven/tronho/api/IDChipItemLib;
    .end local v4    # "xArray":[F
    .end local v5    # "yArray":[F
    .end local v6    # "A1":[F
    .end local v7    # "A0":[F
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 760
    .end local v2    # "i":I
    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readFromLocalPath(Ljava/lang/String;)Z
    .locals 4
    .param p1, "barCode"    # Ljava/lang/String;

    .line 278
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/wen/fluorescence/util/IDCardUtil;->localPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/IDCardUtil;->getIDChipVersion(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    .line 279
    iget v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 280
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/util/IDCardUtil;->queryIDChipInfoN(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v0

    .line 281
    .local v0, "chipInfo":Lcom/wen/fluorescence/bean/IDChipInfoN;
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Thread/TestThread;->setIdChipInfoN(Lcom/wen/fluorescence/bean/IDChipInfoN;)V

    .line 283
    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoNForBarCode(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v2

    if-nez v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wen/fluorescence/database/DBManager;->addIDChipInfoN(Lcom/wen/fluorescence/bean/IDChipInfoN;)V

    .line 285
    iget-object v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 286
    nop

    .line 286
    .local v1, "i":I
    :goto_0
    iget v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v1, v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    iget-object v3, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/DBManager;->addIDChipInfoExN(Lcom/wen/fluorescence/bean/IDChipInfoExN;)V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "i":I
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/util/IDCardUtil;->deleteIDChip(Ljava/lang/String;)V

    .line 292
    .end local v0    # "chipInfo":Lcom/wen/fluorescence/bean/IDChipInfoN;
    nop

    .line 296
    const/4 v0, 0x1

    return v0

    .line 293
    :cond_1
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/util/IDCardUtil;->queryIDChipInfo(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Thread/TestThread;->setIdCardInfo(Lcom/wen/fluorescence/bean/IDChipInfo;)V

    .line 294
    return v1
.end method

.method private setUpTestResult(Lcom/wen/fluorescence/database/TestResult;Lgiven/tronho/api/ResultStructLib;)V
    .locals 20
    .param p1, "tr"    # Lcom/wen/fluorescence/database/TestResult;
    .param p2, "resultStructLib"    # Lgiven/tronho/api/ResultStructLib;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 931
    iget-object v2, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v2

    const-string v3, "login_user"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 932
    .local v2, "user":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/database/TestResult;->setUser(Ljava/lang/String;)V

    .line 934
    iget-object v3, v0, Lcom/wen/fluorescence/Thread/TestThread;->resultList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 936
    iget v3, v0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v3, v4, :cond_f

    .line 937
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v4

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfo;->m_ItemCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setItemcount(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_unit:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setUnit(Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_barCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setLogNo(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_projectName:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setItem(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v3

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->qualitativeFlag:I

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeFlag(I)V

    .line 943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v8, v4, v7

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setItemTitle(Ljava/lang/String;)V

    .line 945
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setTestTime(Ljava/lang/String;)V

    .line 946
    const/4 v3, 0x0

    .line 947
    .local v3, "qualitativeItem":Lcom/wen/fluorescence/util/QualitativeItem;
    iget-object v4, v0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfo;->qualitativeFlag:I

    if-ne v4, v6, :cond_0

    .line 949
    new-instance v4, Lcom/wen/fluorescence/util/QualitativeItem;

    invoke-direct {v4}, Lcom/wen/fluorescence/util/QualitativeItem;-><init>()V

    move-object v3, v4

    .line 952
    :cond_0
    iget-object v4, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v8, v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v4, v4, v7

    aget v4, v4, v7

    float-to-double v10, v4

    cmpg-double v4, v8, v10

    if-gez v4, :cond_1

    .line 953
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v8, v8, v7

    aget v8, v8, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    goto :goto_0

    .line 954
    :cond_1
    iget-object v4, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v8, v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v4, v4, v7

    aget v4, v4, v6

    float-to-double v10, v4

    cmpl-double v4, v8, v10

    if-lez v4, :cond_2

    .line 955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v8, v8, v7

    aget v8, v8, v6

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    goto :goto_0

    .line 957
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v9, v8, v7

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    .line 960
    :goto_0
    iget-object v4, v0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfo;->qualitativeFlag:I

    if-ne v4, v6, :cond_3

    .line 962
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v10, v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v4, v4, v7

    iget-wide v12, v4, Lcom/wen/fluorescence/bean/IDChipInfoEx;->thresholdValue:D

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Lcom/wen/fluorescence/util/QualitativeItem;->DealQualitativeResult(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v4

    .line 963
    .local v4, "sResult":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeVerdict(Ljava/lang/String;)V

    .line 964
    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->qualitativeFlag:I

    invoke-virtual {v1, v8}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeFlag(I)V

    .line 966
    .end local v4    # "sResult":Ljava/lang/String;
    :cond_3
    iget-object v4, v0, Lcom/wen/fluorescence/Thread/TestThread;->resultList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_projectCount:I

    if-lez v4, :cond_6

    .line 968
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/TestResult;->clone()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v4

    .line 969
    .local v4, "tr2":Lcom/wen/fluorescence/database/TestResult;
    const-string v8, "1"

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setItemcount(Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_projectName:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setItem(Ljava/lang/String;)V

    .line 971
    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v9, v8, v7

    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v8, v8, v6

    aget v8, v8, v7

    float-to-double v11, v8

    cmpl-double v8, v9, v11

    if-ltz v8, :cond_5

    .line 972
    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v9, v8, v7

    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v8, v8, v6

    aget v8, v8, v6

    float-to-double v11, v8

    cmpl-double v8, v9, v11

    if-lez v8, :cond_4

    .line 973
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v9, v9, v7

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v9, v9, v6

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    goto :goto_1

    .line 975
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v10, v9, v7

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    goto :goto_1

    .line 978
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v9, v9, v7

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v9, v9, v6

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    .line 980
    :goto_1
    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->resultList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    .end local v4    # "tr2":Lcom/wen/fluorescence/database/TestResult;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v4

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfo;->m_ItemCount:I

    if-le v4, v6, :cond_a

    .line 986
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/TestResult;->clone()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v4

    .line 987
    .local v4, "result2":Lcom/wen/fluorescence/database/TestResult;
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_unit:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setUnit(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_projectName:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setItem(Ljava/lang/String;)V

    .line 989
    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v9, v8, v6

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v8, v8, v7

    aget v8, v8, v7

    float-to-double v11, v8

    cmpg-double v8, v9, v11

    if-gtz v8, :cond_7

    .line 990
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v9, v9, v6

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v9, v9, v7

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 990
    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    goto :goto_2

    .line 992
    :cond_7
    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v9, v8, v6

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v8, v8, v7

    aget v8, v8, v6

    float-to-double v11, v8

    cmpl-double v8, v9, v11

    if-ltz v8, :cond_8

    .line 993
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v9, v9, v6

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v9, v9, v7

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 993
    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    goto :goto_2

    .line 996
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v10, v9, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    .line 998
    :goto_2
    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->qualitativeFlag:I

    if-ne v8, v6, :cond_9

    .line 1000
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v10, v8, v6

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v6

    iget-wide v12, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->thresholdValue:D

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Lcom/wen/fluorescence/util/QualitativeItem;->DealQualitativeResult(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v8

    .line 1001
    .local v8, "sResult":Ljava/lang/String;
    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeVerdict(Ljava/lang/String;)V

    .line 1002
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget v9, v9, Lcom/wen/fluorescence/bean/IDChipInfo;->qualitativeFlag:I

    invoke-virtual {v4, v9}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeFlag(I)V

    .line 1005
    .end local v8    # "sResult":Ljava/lang/String;
    :cond_9
    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->resultList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    .end local v4    # "result2":Lcom/wen/fluorescence/database/TestResult;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v4

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfo;->m_ItemCount:I

    if-le v4, v5, :cond_e

    .line 1009
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/TestResult;->clone()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v4

    .line 1010
    .local v4, "result3":Lcom/wen/fluorescence/database/TestResult;
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_unit:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setUnit(Ljava/lang/String;)V

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_projectName:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v4, v8}, Lcom/wen/fluorescence/database/TestResult;->setItem(Ljava/lang/String;)V

    .line 1012
    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v9, v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v8, v8, v7

    aget v8, v8, v7

    float-to-double v11, v8

    cmpg-double v8, v9, v11

    if-gtz v8, :cond_b

    .line 1013
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v9, v9, v7

    aget v7, v9, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1013
    invoke-virtual {v4, v7}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    goto :goto_3

    .line 1015
    :cond_b
    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v9, v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v8, v8, v7

    aget v8, v8, v6

    float-to-double v11, v8

    cmpl-double v8, v9, v11

    if-ltz v8, :cond_c

    .line 1016
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoEx;->m_testBound:[[F

    aget-object v7, v9, v7

    aget v7, v7, v6

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1016
    invoke-virtual {v4, v7}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    goto :goto_3

    .line 1019
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v9, v8, v5

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    .line 1021
    :goto_3
    iget-object v7, v0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget v7, v7, Lcom/wen/fluorescence/bean/IDChipInfo;->qualitativeFlag:I

    if-ne v7, v6, :cond_d

    .line 1023
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v10, v6, v5

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfo;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoEx;

    aget-object v5, v6, v5

    iget-wide v12, v5, Lcom/wen/fluorescence/bean/IDChipInfoEx;->thresholdValue:D

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Lcom/wen/fluorescence/util/QualitativeItem;->DealQualitativeResult(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v5

    .line 1024
    .local v5, "sResult":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeVerdict(Ljava/lang/String;)V

    .line 1025
    iget-object v6, v0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfo;->qualitativeFlag:I

    invoke-virtual {v4, v6}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeFlag(I)V

    .line 1028
    .end local v5    # "sResult":Ljava/lang/String;
    :cond_d
    iget-object v5, v0, Lcom/wen/fluorescence/Thread/TestThread;->resultList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    .end local v3    # "qualitativeItem":Lcom/wen/fluorescence/util/QualitativeItem;
    .end local v4    # "result3":Lcom/wen/fluorescence/database/TestResult;
    :cond_e
    goto/16 :goto_e

    .line 1031
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v8

    iget v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setItemcount(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v3

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setItemTitle(Ljava/lang/String;)V

    .line 1033
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setTestTime(Ljava/lang/String;)V

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v3

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_logNo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setLogNo(Ljava/lang/String;)V

    .line 1035
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v3

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->qualitativeFlag:I

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeFlag(I)V

    .line 1036
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v3

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->isVisibleResult:I

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setIsShowResult(I)V

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v3

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->isVisibleConclusion:I

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/database/TestResult;->setIsShowConclusion(I)V

    .line 1038
    new-array v3, v4, [D

    .line 1039
    .local v3, "densitys":[D
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v4

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ne v4, v6, :cond_10

    .line 1040
    invoke-virtual/range {p2 .. p2}, Lgiven/tronho/api/ResultStructLib;->getDensity()D

    move-result-wide v8

    aput-wide v8, v3, v7

    goto :goto_4

    .line 1042
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lgiven/tronho/api/ResultStructLib;->getDensity1()D

    move-result-wide v8

    aput-wide v8, v3, v7

    .line 1043
    invoke-virtual/range {p2 .. p2}, Lgiven/tronho/api/ResultStructLib;->getDensity2()D

    move-result-wide v8

    aput-wide v8, v3, v6

    .line 1044
    invoke-virtual/range {p2 .. p2}, Lgiven/tronho/api/ResultStructLib;->getDensity3()D

    move-result-wide v8

    aput-wide v8, v3, v5

    .line 1046
    :goto_4
    move v4, v7

    .line 1046
    .local v4, "i":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v8

    iget v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v4, v8, :cond_26

    .line 1047
    invoke-virtual/range {p1 .. p1}, Lcom/wen/fluorescence/database/TestResult;->clone()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v8

    .line 1048
    .local v8, "testResult":Lcom/wen/fluorescence/database/TestResult;
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v9

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_unit:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/TestResult;->setUnit(Ljava/lang/String;)V

    .line 1049
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v9

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/TestResult;->setItem(Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v9

    iget v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoN;->qualitativeFlag:I

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeFlag(I)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Lgiven/tronho/api/ResultStructLib;->getValid()I

    move-result v9

    if-nez v9, :cond_1a

    .line 1052
    const-string v9, ""

    .line 1053
    .local v9, "strResult":Ljava/lang/String;
    iget-object v14, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    aget-wide v10, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v15

    iget-object v15, v15, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v15, v15, v4

    iget-object v15, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-static {v14, v10, v11, v15}, Lcom/wen/fluorescence/util/PublicFuction;->getCalibrationResult(Landroid/content/Context;DLjava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v3, v4

    .line 1054
    iget-object v10, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    aget-wide v14, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v11

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v4

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-static {v10, v14, v15, v11}, Lcom/wen/fluorescence/util/PublicFuction;->getMoreChargeForItemAndResult(Landroid/content/Context;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1055
    .local v10, "moreItemAndResult":Ljava/lang/String;
    const-string v11, "F200"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u8f6c\u6362moreItemAndResult\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    aget-wide v14, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v11

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v4

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v11, v11, v7

    aget-wide v17, v11, v7

    cmpg-double v11, v14, v17

    if-gez v11, :cond_11

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v11

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v4

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    aget-object v11, v11, v7

    aget-object v9, v11, v7

    goto :goto_6

    .line 1059
    :cond_11
    aget-wide v14, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v11

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v4

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v11, v11, v7

    aget-wide v17, v11, v6

    cmpl-double v11, v14, v17

    if-lez v11, :cond_12

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v11

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v4

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    aget-object v11, v11, v7

    aget-object v9, v11, v6

    goto :goto_6

    .line 1062
    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v14, v3, v4

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1065
    :goto_6
    const-string v11, ""

    .line 1066
    .local v11, "strVerdict":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v14

    iget v14, v14, Lcom/wen/fluorescence/bean/IDChipInfoN;->qualitativeFlag:I

    if-ne v14, v6, :cond_14

    .line 1068
    aget-wide v14, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v13

    iget-object v13, v13, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v13, v13, v4

    iget-wide v12, v13, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValue:D

    cmpg-double v17, v14, v12

    if-gez v17, :cond_13

    .line 1069
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v12

    iget-object v12, v12, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v12, v12, v4

    iget-object v12, v12, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValueResult:[Ljava/lang/String;

    aget-object v11, v12, v7

    goto/16 :goto_8

    .line 1071
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v12

    iget-object v12, v12, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v12, v12, v4

    iget-object v12, v12, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValueResult:[Ljava/lang/String;

    aget-object v11, v12, v6

    goto/16 :goto_8

    .line 1073
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v12

    iget v12, v12, Lcom/wen/fluorescence/bean/IDChipInfoN;->qualitativeFlag:I

    if-ne v12, v5, :cond_18

    .line 1075
    aget-wide v12, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v14

    iget-object v14, v14, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v14, v14, v4

    iget-object v14, v14, Lcom/wen/fluorescence/bean/IDChipInfoExN;->intervalDensity:[D

    aget-wide v17, v14, v7

    cmpg-double v14, v12, v17

    if-gtz v14, :cond_15

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v12

    iget-object v12, v12, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v12, v12, v4

    iget-object v12, v12, Lcom/wen/fluorescence/bean/IDChipInfoExN;->resultOfDensity:[Ljava/lang/String;

    aget-object v11, v12, v7

    goto/16 :goto_8

    .line 1077
    :cond_15
    aget-wide v12, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v14

    iget-object v14, v14, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v14, v14, v4

    iget-object v14, v14, Lcom/wen/fluorescence/bean/IDChipInfoExN;->intervalDensity:[D

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v15

    iget-object v15, v15, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v15, v15, v4

    iget v15, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->conclusionCounts:I

    sub-int/2addr v15, v5

    aget-wide v17, v14, v15

    cmpl-double v14, v12, v17

    if-lez v14, :cond_16

    .line 1078
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v12

    iget-object v12, v12, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v12, v12, v4

    iget-object v12, v12, Lcom/wen/fluorescence/bean/IDChipInfoExN;->resultOfDensity:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v13

    iget-object v13, v13, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v13, v13, v4

    iget v13, v13, Lcom/wen/fluorescence/bean/IDChipInfoExN;->conclusionCounts:I

    sub-int/2addr v13, v6

    aget-object v11, v12, v13

    goto :goto_8

    .line 1080
    :cond_16
    move v12, v7

    .line 1080
    .local v12, "j":I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v13

    iget-object v13, v13, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v13, v13, v4

    iget v13, v13, Lcom/wen/fluorescence/bean/IDChipInfoExN;->conclusionCounts:I

    sub-int/2addr v13, v5

    if-ge v12, v13, :cond_18

    .line 1081
    aget-wide v13, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v15

    iget-object v15, v15, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v15, v15, v4

    iget-object v15, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->intervalDensity:[D

    aget-wide v17, v15, v12

    cmpl-double v15, v13, v17

    if-lez v15, :cond_17

    aget-wide v13, v3, v4

    .line 1082
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v15

    iget-object v15, v15, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v15, v15, v4

    iget-object v15, v15, Lcom/wen/fluorescence/bean/IDChipInfoExN;->intervalDensity:[D

    add-int/lit8 v17, v12, 0x1

    aget-wide v17, v15, v17

    cmpg-double v15, v13, v17

    if-gtz v15, :cond_17

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v13

    iget-object v13, v13, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v13, v13, v4

    iget-object v13, v13, Lcom/wen/fluorescence/bean/IDChipInfoExN;->resultOfDensity:[Ljava/lang/String;

    add-int/lit8 v14, v12, 0x1

    aget-object v11, v13, v14

    .line 1084
    goto :goto_8

    .line 1080
    :cond_17
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1089
    .end local v12    # "j":I
    :cond_18
    :goto_8
    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v8, v11}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeVerdict(Ljava/lang/String;)V

    .line 1092
    const-string v12, "@"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v6, :cond_19

    .line 1093
    const-string v12, "@"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1094
    .local v12, "temArray":[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v12, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1095
    .local v13, "item":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v12, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1096
    .local v14, "result":Ljava/lang/String;
    invoke-virtual {v8, v13}, Lcom/wen/fluorescence/database/TestResult;->setReItem(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {v8, v14}, Lcom/wen/fluorescence/database/TestResult;->setReResult(Ljava/lang/String;)V

    .line 1098
    .end local v12    # "temArray":[Ljava/lang/String;
    .end local v13    # "item":Ljava/lang/String;
    .end local v14    # "result":Ljava/lang/String;
    goto :goto_9

    .line 1099
    :cond_19
    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/wen/fluorescence/database/TestResult;->setReItem(Ljava/lang/String;)V

    .line 1100
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/wen/fluorescence/database/TestResult;->setReResult(Ljava/lang/String;)V

    .line 1102
    .end local v9    # "strResult":Ljava/lang/String;
    .end local v10    # "moreItemAndResult":Ljava/lang/String;
    .end local v11    # "strVerdict":Ljava/lang/String;
    :goto_9
    goto/16 :goto_a

    :cond_1a
    invoke-virtual/range {p2 .. p2}, Lgiven/tronho/api/ResultStructLib;->getValid()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1c

    .line 1103
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v9

    invoke-virtual {v9}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v9

    const/4 v10, 0x6

    if-le v9, v10, :cond_1b

    .line 1104
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00cb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    .line 1105
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeVerdict(Ljava/lang/String;)V

    goto :goto_a

    .line 1107
    :cond_1b
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c001c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    .line 1108
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeVerdict(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v9

    iget v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoN;->qualitativeFlag:I

    if-lez v9, :cond_1d

    .line 1110
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeVerdict(Ljava/lang/String;)V

    goto :goto_a

    .line 1113
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lgiven/tronho/api/ResultStructLib;->getValid()I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_1d

    .line 1114
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c001d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    .line 1115
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeVerdict(Ljava/lang/String;)V

    .line 1116
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v9

    iget v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoN;->qualitativeFlag:I

    if-lez v9, :cond_1d

    .line 1117
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeVerdict(Ljava/lang/String;)V

    .line 1120
    :cond_1d
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lgiven/tronho/api/ResultStructLib;->getValid()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/wen/fluorescence/database/TestResult;->setiValid(I)V

    .line 1121
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->resultList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v9

    iget-object v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v9, v9, v4

    iget v9, v9, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectCount:I

    if-lez v9, :cond_25

    .line 1124
    invoke-virtual {v8}, Lcom/wen/fluorescence/database/TestResult;->clone()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v9

    .line 1125
    .local v9, "tr2":Lcom/wen/fluorescence/database/TestResult;
    const-string v10, "1"

    invoke-virtual {v9, v10}, Lcom/wen/fluorescence/database/TestResult;->setItemcount(Ljava/lang/String;)V

    .line 1126
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v10

    iget-object v10, v10, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v10, v10, v4

    iget-object v10, v10, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/wen/fluorescence/database/TestResult;->setItem(Ljava/lang/String;)V

    .line 1127
    const-string v10, ""

    .line 1128
    .local v10, "ssResult":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lgiven/tronho/api/ResultStructLib;->getValid()I

    move-result v11

    if-nez v11, :cond_21

    .line 1131
    iget-object v11, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    aget-wide v12, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v14

    iget-object v14, v14, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v14, v14, v4

    iget-object v14, v14, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    aget-object v14, v14, v6

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v12, v13, v14}, Lcom/wen/fluorescence/util/PublicFuction;->getMoreChargeForItemAndResult(Landroid/content/Context;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1132
    .local v11, "moreItemAndResult":Ljava/lang/String;
    const-string v12, "F200"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u7b2c\u4e8c\u4e2a\u9879\u76ee\u8f6c\u6362moreItemAndResult\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    aget-wide v12, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v14

    iget-object v14, v14, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v14, v14, v4

    iget-object v14, v14, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v14, v14, v6

    aget-wide v15, v14, v7

    cmpl-double v14, v12, v15

    if-ltz v14, :cond_1f

    .line 1135
    aget-wide v12, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v14

    iget-object v14, v14, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v14, v14, v4

    iget-object v14, v14, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v14, v14, v6

    aget-wide v15, v14, v6

    cmpl-double v14, v12, v15

    if-lez v14, :cond_1e

    .line 1136
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v12

    iget-object v12, v12, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v12, v12, v4

    iget-object v12, v12, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    aget-object v12, v12, v6

    aget-object v10, v12, v6

    goto :goto_b

    .line 1138
    :cond_1e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v13, v3, v4

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    .line 1141
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v12

    iget-object v12, v12, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v12, v12, v4

    iget-object v12, v12, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    aget-object v12, v12, v6

    aget-object v10, v12, v7

    .line 1145
    :goto_b
    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v6, :cond_20

    .line 1146
    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1147
    .restart local v12    # "temArray":[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v12, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1148
    .restart local v13    # "item":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v12, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1149
    .restart local v14    # "result":Ljava/lang/String;
    invoke-virtual {v9, v13}, Lcom/wen/fluorescence/database/TestResult;->setReItem(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v9, v14}, Lcom/wen/fluorescence/database/TestResult;->setReResult(Ljava/lang/String;)V

    .line 1151
    .end local v12    # "temArray":[Ljava/lang/String;
    .end local v13    # "item":Ljava/lang/String;
    .end local v14    # "result":Ljava/lang/String;
    goto :goto_c

    .line 1152
    :cond_20
    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/wen/fluorescence/database/TestResult;->setReItem(Ljava/lang/String;)V

    .line 1153
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/wen/fluorescence/database/TestResult;->setReResult(Ljava/lang/String;)V

    .line 1155
    .end local v11    # "moreItemAndResult":Ljava/lang/String;
    :goto_c
    goto :goto_d

    :cond_21
    invoke-virtual/range {p2 .. p2}, Lgiven/tronho/api/ResultStructLib;->getValid()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_23

    .line 1156
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v11

    invoke-virtual {v11}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v11

    const/4 v12, 0x6

    if-le v11, v12, :cond_22

    .line 1157
    iget-object v11, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00cb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    .line 1159
    :cond_22
    iget-object v11, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c001c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    .line 1161
    :cond_23
    invoke-virtual/range {p2 .. p2}, Lgiven/tronho/api/ResultStructLib;->getValid()I

    move-result v11

    const/4 v12, -0x2

    if-ne v11, v12, :cond_24

    .line 1162
    iget-object v11, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c001d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1165
    :cond_24
    :goto_d
    invoke-virtual {v9, v10}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    .line 1166
    const-string v11, ""

    invoke-virtual {v9, v11}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeVerdict(Ljava/lang/String;)V

    .line 1167
    iget-object v11, v0, Lcom/wen/fluorescence/Thread/TestThread;->resultList:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    .end local v8    # "testResult":Lcom/wen/fluorescence/database/TestResult;
    .end local v9    # "tr2":Lcom/wen/fluorescence/database/TestResult;
    .end local v10    # "ssResult":Ljava/lang/String;
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 1171
    .end local v3    # "densitys":[D
    .end local v4    # "i":I
    :cond_26
    :goto_e
    return-void
.end method


# virtual methods
.method public continuteToCollection()V
    .locals 2

    .line 536
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getTestMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 538
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getLightData()V

    goto :goto_0

    .line 541
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/Thread/TotalTimer;->getInstance()Lcom/wen/fluorescence/Thread/TotalTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TotalTimer;->setTimerTotalCancel()V

    .line 542
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 544
    :goto_0
    return-void
.end method

.method public fetchOriginalData()Lcom/wen/fluorescence/database/OriResult;
    .locals 7

    .line 201
    new-instance v0, Lcom/wen/fluorescence/database/OriResult;

    invoke-direct {v0}, Lcom/wen/fluorescence/database/OriResult;-><init>()V

    .line 202
    .local v0, "or":Lcom/wen/fluorescence/database/OriResult;
    iget v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setID_Type(I)V

    .line 203
    iget v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getM_testResult()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setTime(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_barCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setNumber(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getM_testResult()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setSerialNumber(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setItem(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_barCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setBarCode(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, v2, v3}, Lcom/wen/fluorescence/database/OriResult;->setCalTemp(D)V

    .line 210
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getM_testResult()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/TestResult;->getTestMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setTestMode(I)V

    .line 211
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_ItemCount:I

    const/4 v2, 0x0

    if-ne v1, v4, :cond_0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getT1()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setT1(Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getT2()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setT2(Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getC()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setC(Ljava/lang/String;)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setTC1(Ljava/lang/String;)V

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v2, v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setValue1(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getX1()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setT1(Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getX2()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setT2(Ljava/lang/String;)V

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getX3()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setT3(Ljava/lang/String;)V

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getX4()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setC(Ljava/lang/String;)V

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setTC1(Ljava/lang/String;)V

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC2()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setTC2(Ljava/lang/String;)V

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC3()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setTC3(Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v2, v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setValue1(Ljava/lang/String;)V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v3, v2, v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setValue2(Ljava/lang/String;)V

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    const/4 v3, 0x2

    aget-wide v3, v2, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setValue3(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getM_testResult()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setTime(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_logNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setNumber(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getM_testResult()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setSerialNumber(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setItem(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setBarCode(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, v2, v3}, Lcom/wen/fluorescence/database/OriResult;->setCalTemp(D)V

    .line 237
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getM_testResult()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/TestResult;->getTestMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setTestMode(I)V

    .line 238
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ne v1, v4, :cond_2

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getT1()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setT1(Ljava/lang/String;)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getT2()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setT2(Ljava/lang/String;)V

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getC()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setC(Ljava/lang/String;)V

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getTC()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setTC1(Ljava/lang/String;)V

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getDensity()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setValue1(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getX1()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setT1(Ljava/lang/String;)V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getX2()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setT2(Ljava/lang/String;)V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getX3()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setT3(Ljava/lang/String;)V

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getX4()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setC(Ljava/lang/String;)V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getTC1()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setTC1(Ljava/lang/String;)V

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getTC2()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setTC2(Ljava/lang/String;)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getTC3()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setTC3(Ljava/lang/String;)V

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getDensity1()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setValue1(Ljava/lang/String;)V

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getDensity2()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setValue2(Ljava/lang/String;)V

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getDensity3()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/OriResult;->setValue3(Ljava/lang/String;)V

    .line 257
    :goto_0
    return-object v0
.end method

.method public fetchRawData()Lcom/wen/fluorescence/database/RawData;
    .locals 3

    .line 186
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getiDataArray()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, ""

    .line 187
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "sData":Ljava/lang/String;
    new-instance v1, Lcom/wen/fluorescence/database/RawData;

    invoke-direct {v1}, Lcom/wen/fluorescence/database/RawData;-><init>()V

    .line 189
    .local v1, "rawData":Lcom/wen/fluorescence/database/RawData;
    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/database/RawData;->setData(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getM_testResult()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/database/RawData;->setSerialNumber(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getM_testResult()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/database/RawData;->setTime(Ljava/lang/String;)V

    .line 192
    return-object v1
.end method

.method public getIDChipVersion()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    return v0
.end method

.method public getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    return-object v0
.end method

.method public getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    return-object v0
.end method

.method public getM_testResult()Lcom/wen/fluorescence/database/TestResult;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->m_testResult:Lcom/wen/fluorescence/database/TestResult;

    return-object v0
.end method

.method public getRandomDouble(D)D
    .locals 8
    .param p1, "max"    # D

    .line 1174
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 1176
    .local v1, "a":I
    int-to-double v2, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1177
    .local v2, "aa":I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 1178
    .local v3, "rand":Ljava/util/Random;
    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v4, p1

    int-to-double v6, v2

    mul-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    return-wide v4
.end method

.method public getResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultList:Ljava/util/List;

    return-object v0
.end method

.method public getSampleType()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->sampleType:I

    return v0
.end method

.method public getTestMode()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->TestMode:I

    return v0
.end method

.method public getiDataArray()[I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->iDataArray:[I

    return-object v0
.end method

.method public readIDChip(Z)Z
    .locals 16
    .param p1, "bSaveFlag"    # Z

    move-object/from16 v0, p0

    .line 769
    const/4 v1, 0x0

    .line 770
    .local v1, "bReadSatues":Z
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/util/IDCardUtil;->getIDChipVersion(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    .line 771
    iget v2, v0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_7

    packed-switch v2, :pswitch_data_0

    .line 843
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 791
    :pswitch_0
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/IDCardUtil;->scanIDChipInfoFromFFC14()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v2

    .line 792
    .local v2, "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    if-nez v2, :cond_0

    .line 793
    const/4 v1, 0x0

    .line 794
    goto/16 :goto_2

    .line 796
    :cond_0
    invoke-virtual {v2}, Lcom/wen/fluorescence/bean/IDChipInfoN;->println()V

    .line 797
    if-nez p1, :cond_1

    .line 798
    const/4 v1, 0x1

    .line 799
    goto/16 :goto_2

    .line 801
    :cond_1
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v9

    iget-object v10, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoNForBarCode(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 802
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v9

    iget-object v10, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/wen/fluorescence/database/DBManager;->deleteIDChipInfoN(Ljava/lang/String;)V

    .line 803
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v9

    iget-object v10, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/wen/fluorescence/database/DBManager;->deleteIDChipInfoExN(Ljava/lang/String;)V

    .line 804
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v9

    iget-object v10, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/wen/fluorescence/database/DBManager;->deleteEquation(Ljava/lang/String;)V

    .line 806
    :cond_2
    iget-object v9, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/wen/fluorescence/database/DBManager;->addIDChipInfoN(Lcom/wen/fluorescence/bean/IDChipInfoN;)V

    .line 807
    iget-object v9, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    if-eqz v9, :cond_3

    iget-object v9, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    array-length v9, v9

    if-lez v9, :cond_3

    .line 808
    move v9, v7

    .line 808
    .local v9, "i":I
    :goto_0
    iget v10, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v9, v10, :cond_3

    .line 809
    iget-object v10, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v10

    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v9

    invoke-virtual {v10, v11}, Lcom/wen/fluorescence/database/DBManager;->addIDChipInfoExN(Lcom/wen/fluorescence/bean/IDChipInfoExN;)V

    .line 808
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 812
    .end local v9    # "i":I
    :cond_3
    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/Thread/TestThread;->setIdChipInfoN(Lcom/wen/fluorescence/bean/IDChipInfoN;)V

    .line 813
    const-string v9, "CHF200"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "========\u8bfb\u82af\u7247 \u5ba2\u6237\u5b50\u4ee3\u7801======"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->childCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v9, "\u54c8\u54c8"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "========\u7cfb\u6570======"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget v9, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    if-ne v9, v8, :cond_4

    .line 816
    move v9, v7

    .line 816
    .restart local v9    # "i":I
    :goto_1
    iget v10, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v9, v10, :cond_4

    .line 817
    new-instance v10, Lcom/wen/fluorescence/bean/Equation;

    invoke-direct {v10}, Lcom/wen/fluorescence/bean/Equation;-><init>()V

    .line 818
    .local v10, "equation":Lcom/wen/fluorescence/bean/Equation;
    iput v9, v10, Lcom/wen/fluorescence/bean/Equation;->ItemIndex:I

    .line 819
    iput v8, v10, Lcom/wen/fluorescence/bean/Equation;->flag:I

    .line 820
    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    iput-object v11, v10, Lcom/wen/fluorescence/bean/Equation;->m_barCode:Ljava/lang/String;

    .line 821
    iget v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->customerCode:I

    iput v11, v10, Lcom/wen/fluorescence/bean/Equation;->customerCode:I

    .line 822
    iget v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->childCode:I

    iput v11, v10, Lcom/wen/fluorescence/bean/Equation;->childCustomerCode:I

    .line 823
    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v12, v11, v7

    iput-wide v12, v10, Lcom/wen/fluorescence/bean/Equation;->E1_1:D

    .line 824
    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v12, v11, v8

    iput-wide v12, v10, Lcom/wen/fluorescence/bean/Equation;->E1_2:D

    .line 825
    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v12, v11, v5

    iput-wide v12, v10, Lcom/wen/fluorescence/bean/Equation;->E1_3:D

    .line 826
    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v12, v11, v4

    iput-wide v12, v10, Lcom/wen/fluorescence/bean/Equation;->E1_4:D

    .line 827
    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v12, v11, v6

    iput-wide v12, v10, Lcom/wen/fluorescence/bean/Equation;->E1_5:D

    .line 828
    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v12, v11, v3

    iput-wide v12, v10, Lcom/wen/fluorescence/bean/Equation;->E1_6:D

    .line 830
    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v12, v11, v7

    iput-wide v12, v10, Lcom/wen/fluorescence/bean/Equation;->E2_1:D

    .line 831
    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v12, v11, v8

    iput-wide v12, v10, Lcom/wen/fluorescence/bean/Equation;->E2_2:D

    .line 832
    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v12, v11, v5

    iput-wide v12, v10, Lcom/wen/fluorescence/bean/Equation;->E2_3:D

    .line 833
    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v12, v11, v4

    iput-wide v12, v10, Lcom/wen/fluorescence/bean/Equation;->E2_4:D

    .line 834
    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v12, v11, v6

    iput-wide v12, v10, Lcom/wen/fluorescence/bean/Equation;->E2_5:D

    .line 835
    iget-object v11, v2, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v12, v11, v3

    iput-wide v12, v10, Lcom/wen/fluorescence/bean/Equation;->E2_6:D

    .line 837
    iget-object v11, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/wen/fluorescence/database/DBManager;->addEquation(Lcom/wen/fluorescence/bean/Equation;)V

    .line 816
    .end local v10    # "equation":Lcom/wen/fluorescence/bean/Equation;
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 840
    .end local v9    # "i":I
    :cond_4
    const/4 v1, 0x1

    .line 841
    goto :goto_2

    .line 776
    .end local v2    # "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    :pswitch_1
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/IDCardUtil;->scanIDChipInfoFromFFC13()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v2

    .line 777
    .local v2, "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfo;
    if-nez v2, :cond_5

    .line 778
    const/4 v1, 0x0

    .line 779
    goto :goto_2

    .line 781
    :cond_5
    invoke-virtual {v2}, Lcom/wen/fluorescence/bean/IDChipInfo;->println()V

    .line 782
    if-nez p1, :cond_6

    .line 783
    const/4 v1, 0x1

    .line 784
    goto :goto_2

    .line 786
    :cond_6
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v9

    iget-object v10, v2, Lcom/wen/fluorescence/bean/IDChipInfo;->m_barCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/wen/fluorescence/util/IDCardUtil;->saveIDChipInfo(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/Thread/TestThread;->setIdCardInfo(Lcom/wen/fluorescence/bean/IDChipInfo;)V

    .line 788
    const/4 v1, 0x1

    .line 789
    goto :goto_2

    .line 773
    .end local v2    # "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfo;
    :cond_7
    const/4 v1, 0x0

    .line 774
    nop

    .line 847
    :goto_2
    if-nez v1, :cond_11

    .line 848
    iget-object v2, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/wen/fluorescence/util/PublicFuction;->getUDiskFileList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 849
    .local v2, "names":[Ljava/lang/String;
    if-nez v2, :cond_8

    .line 850
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 852
    :cond_8
    const-string v9, ""

    .line 853
    .local v9, "fileName":Ljava/lang/String;
    array-length v10, v2

    move v11, v7

    :goto_3
    if-ge v11, v10, :cond_a

    aget-object v12, v2, v11

    .line 854
    .local v12, "s":Ljava/lang/String;
    const-string v13, ".bin"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 855
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 856
    const-string v10, "as"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "......fileName:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    goto :goto_4

    .line 853
    .end local v12    # "s":Ljava/lang/String;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 860
    :cond_a
    :goto_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 861
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 863
    :cond_b
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/wen/fluorescence/util/IDCardUtil;->getIDChipVersion(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    .line 864
    iget v10, v0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    if-eq v10, v6, :cond_c

    .line 917
    const/4 v1, 0x0

    .line 917
    .end local v2    # "names":[Ljava/lang/String;
    .end local v9    # "fileName":Ljava/lang/String;
    goto/16 :goto_7

    .line 866
    .restart local v2    # "names":[Ljava/lang/String;
    .restart local v9    # "fileName":Ljava/lang/String;
    :cond_c
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 867
    .local v10, "file":Ljava/io/File;
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/wen/fluorescence/util/IDCardUtil;->parseIDChipInfoFor14(Ljava/io/File;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v11

    .line 868
    .local v11, "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    if-nez v11, :cond_d

    .line 869
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 873
    :cond_d
    iget-object v12, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v12

    iget-object v13, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoNForBarCode(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 874
    iget-object v12, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v12

    iget-object v13, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/wen/fluorescence/database/DBManager;->deleteIDChipInfoN(Ljava/lang/String;)V

    .line 875
    iget-object v12, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v12

    iget-object v13, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/wen/fluorescence/database/DBManager;->deleteIDChipInfoExN(Ljava/lang/String;)V

    .line 876
    iget-object v12, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v12

    iget-object v13, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/wen/fluorescence/database/DBManager;->deleteEquation(Ljava/lang/String;)V

    .line 878
    :cond_e
    iget-object v12, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/wen/fluorescence/database/DBManager;->addIDChipInfoN(Lcom/wen/fluorescence/bean/IDChipInfoN;)V

    .line 879
    iget-object v12, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    if-eqz v12, :cond_f

    iget-object v12, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    array-length v12, v12

    if-lez v12, :cond_f

    .line 880
    move v12, v7

    .line 880
    .local v12, "i":I
    :goto_5
    iget v13, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v12, v13, :cond_f

    .line 881
    iget-object v13, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v13

    iget-object v14, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v14, v14, v12

    invoke-virtual {v13, v14}, Lcom/wen/fluorescence/database/DBManager;->addIDChipInfoExN(Lcom/wen/fluorescence/bean/IDChipInfoExN;)V

    .line 880
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 884
    .end local v12    # "i":I
    :cond_f
    invoke-virtual {v0, v11}, Lcom/wen/fluorescence/Thread/TestThread;->setIdChipInfoN(Lcom/wen/fluorescence/bean/IDChipInfoN;)V

    .line 886
    const-string v12, "\u54c8\u54c8"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "========\u7cfb\u6570======"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string v12, "CHF200"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "========\u5ba2\u6237\u5b50\u4ee3\u7801======"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->childCode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget v12, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    if-ne v12, v8, :cond_10

    .line 889
    move v12, v7

    .line 889
    .restart local v12    # "i":I
    :goto_6
    iget v13, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v12, v13, :cond_10

    .line 890
    new-instance v13, Lcom/wen/fluorescence/bean/Equation;

    invoke-direct {v13}, Lcom/wen/fluorescence/bean/Equation;-><init>()V

    .line 891
    .local v13, "equation":Lcom/wen/fluorescence/bean/Equation;
    iput v12, v13, Lcom/wen/fluorescence/bean/Equation;->ItemIndex:I

    .line 892
    iput v8, v13, Lcom/wen/fluorescence/bean/Equation;->flag:I

    .line 893
    iget-object v14, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    iput-object v14, v13, Lcom/wen/fluorescence/bean/Equation;->m_barCode:Ljava/lang/String;

    .line 894
    iget v14, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->customerCode:I

    iput v14, v13, Lcom/wen/fluorescence/bean/Equation;->customerCode:I

    .line 895
    iget v14, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->childCode:I

    iput v14, v13, Lcom/wen/fluorescence/bean/Equation;->childCustomerCode:I

    .line 896
    iget-object v14, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v14, v14, v12

    iget-object v14, v14, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v3, v14, v7

    iput-wide v3, v13, Lcom/wen/fluorescence/bean/Equation;->E1_1:D

    .line 897
    iget-object v3, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v3, v12

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v6, v3, v8

    iput-wide v6, v13, Lcom/wen/fluorescence/bean/Equation;->E1_2:D

    .line 898
    iget-object v3, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v3, v12

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v6, v3, v5

    iput-wide v6, v13, Lcom/wen/fluorescence/bean/Equation;->E1_3:D

    .line 899
    iget-object v3, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v3, v12

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    const/4 v4, 0x3

    aget-wide v6, v3, v4

    iput-wide v6, v13, Lcom/wen/fluorescence/bean/Equation;->E1_4:D

    .line 900
    iget-object v3, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v3, v12

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    const/4 v4, 0x4

    aget-wide v6, v3, v4

    iput-wide v6, v13, Lcom/wen/fluorescence/bean/Equation;->E1_5:D

    .line 901
    iget-object v3, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v3, v12

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    const/4 v4, 0x5

    aget-wide v6, v3, v4

    iput-wide v6, v13, Lcom/wen/fluorescence/bean/Equation;->E1_6:D

    .line 903
    iget-object v3, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v3, v12

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    const/4 v4, 0x0

    aget-wide v6, v3, v4

    iput-wide v6, v13, Lcom/wen/fluorescence/bean/Equation;->E2_1:D

    .line 904
    iget-object v3, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v3, v12

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v6, v3, v8

    iput-wide v6, v13, Lcom/wen/fluorescence/bean/Equation;->E2_2:D

    .line 905
    iget-object v3, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v3, v12

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v6, v3, v5

    iput-wide v6, v13, Lcom/wen/fluorescence/bean/Equation;->E2_3:D

    .line 906
    iget-object v3, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v3, v12

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    const/4 v6, 0x3

    aget-wide v4, v3, v6

    iput-wide v4, v13, Lcom/wen/fluorescence/bean/Equation;->E2_4:D

    .line 907
    iget-object v3, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v3, v12

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    const/4 v4, 0x4

    aget-wide v6, v3, v4

    iput-wide v6, v13, Lcom/wen/fluorescence/bean/Equation;->E2_5:D

    .line 908
    iget-object v3, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v3, v12

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    const/4 v5, 0x5

    aget-wide v6, v3, v5

    iput-wide v6, v13, Lcom/wen/fluorescence/bean/Equation;->E2_6:D

    .line 910
    iget-object v3, v0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/wen/fluorescence/database/DBManager;->addEquation(Lcom/wen/fluorescence/bean/Equation;)V

    .line 889
    .end local v13    # "equation":Lcom/wen/fluorescence/bean/Equation;
    add-int/lit8 v12, v12, 0x1

    move v6, v4

    move v3, v5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto/16 :goto_6

    .line 913
    .end local v12    # "i":I
    :cond_10
    const/4 v1, 0x1

    .line 915
    nop

    .line 923
    .end local v2    # "names":[Ljava/lang/String;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    :cond_11
    :goto_7
    return v1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reserveDecimals(ID)D
    .locals 3
    .param p1, "n"    # I
    .param p2, "number"    # D

    .line 653
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 654
    .local v0, "b":Ljava/math/BigDecimal;
    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 655
    .end local v0    # "b":Ljava/math/BigDecimal;
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 658
    .end local v0    # "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public setIdCardInfo(Lcom/wen/fluorescence/bean/IDChipInfo;)V
    .locals 0
    .param p1, "idCardInfo"    # Lcom/wen/fluorescence/bean/IDChipInfo;

    .line 123
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    .line 124
    return-void
.end method

.method public setIdChipInfoN(Lcom/wen/fluorescence/bean/IDChipInfoN;)V
    .locals 0
    .param p1, "idChipInfoN"    # Lcom/wen/fluorescence/bean/IDChipInfoN;

    .line 131
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    .line 132
    return-void
.end method

.method public setM_testResult(Lcom/wen/fluorescence/database/TestResult;)V
    .locals 0
    .param p1, "m_testResult"    # Lcom/wen/fluorescence/database/TestResult;

    .line 103
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/TestThread;->m_testResult:Lcom/wen/fluorescence/database/TestResult;

    .line 104
    return-void
.end method

.method public setSampleType(Ljava/lang/String;)V
    .locals 3
    .param p1, "strSampleType"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "allSampleNames":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getM_testResult()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getM_testResult()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/database/TestResult;->setSimpleType(Ljava/lang/String;)V

    .line 143
    :cond_0
    const/4 v1, 0x0

    .line 143
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 144
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iput v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->sampleType:I

    .line 146
    goto :goto_1

    .line 143
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public setTestMode(I)V
    .locals 0
    .param p1, "testMode"    # I

    .line 111
    iput p1, p0, Lcom/wen/fluorescence/Thread/TestThread;->TestMode:I

    .line 112
    return-void
.end method

.method public setiDataArray([I)V
    .locals 0
    .param p1, "iDataArray"    # [I

    .line 156
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/TestThread;->iDataArray:[I

    .line 157
    return-void
.end method

.method public setmHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mHandler"    # Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method public showCancleDialog()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/Thread/TestThread$1;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Thread/TestThread$1;-><init>(Lcom/wen/fluorescence/Thread/TestThread;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 177
    return-void
.end method

.method public startCalculate([I)V
    .locals 10
    .param p1, "iDataArray"    # [I

    .line 552
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 553
    return-void

    .line 555
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/Thread/TestThread;->setiDataArray([I)V

    .line 556
    iget v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    const/4 v1, 0x3

    const/16 v2, 0x18

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_5

    .line 558
    :try_start_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v0

    iget v0, v0, Lcom/wen/fluorescence/bean/IDChipInfo;->m_ItemCount:I

    if-ne v0, v5, :cond_1

    .line 559
    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getiDataArray()[I

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->calculateTC(Lcom/wen/fluorescence/bean/IDChipInfo;[I)D

    goto :goto_0

    .line 561
    :cond_1
    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getiDataArray()[I

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->calculateTCMulti(Lcom/wen/fluorescence/bean/IDChipInfo;[I)V

    .line 564
    :goto_0
    move v0, v4

    .line 564
    .local v0, "k":I
    :goto_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    iget v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->m_ItemCount:I

    if-ge v0, v1, :cond_3

    .line 565
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdCardInfo()Lcom/wen/fluorescence/bean/IDChipInfo;

    move-result-object v1

    iget v1, v1, Lcom/wen/fluorescence/bean/IDChipInfo;->AlgorithmType:I

    if-ne v1, v5, :cond_2

    .line 566
    const-string v1, "ab"

    const-string v6, "<<<<<<<<<<<<<<<<<<\u4f7f\u75284PLC\u62df\u5408\u7b97\u6cd5"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Thread/TestThread;->calculateNongdu4PLC(I)V

    goto :goto_2

    .line 570
    :cond_2
    const-string v1, "ab"

    const-string v6, "<<<<<<<<<<<<<<<<<<\u4f7f\u7528\u591a\u9879\u5f0f\u62df\u5408\u7b97\u6cd5"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Thread/TestThread;->calculateNongdu(I)Z

    .line 564
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    .end local v0    # "k":I
    :cond_3
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getM_testResult()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/Thread/TestThread;->setUpTestResult(Lcom/wen/fluorescence/database/TestResult;Lgiven/tronho/api/ResultStructLib;)V

    .line 576
    const-string v0, "ab"

    const-string v1, "1.3\u6d4b\u8bd5\u5b8c\u6bd5>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget v0, v0, Lcom/wen/fluorescence/bean/IDChipInfo;->m_ItemCount:I

    if-ne v0, v5, :cond_4

    .line 578
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====B:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getB()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 579
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====T1:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getT1()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 580
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====T2:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getT2()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 581
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====C:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getC()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 582
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====T/C:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 583
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====K:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v4, v3, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 585
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=====X1:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getX1()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 586
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=====X2:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getX2()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 587
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=====X3:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getX3()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 588
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=====X4:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getX4()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 589
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=====T/C:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 590
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====T/C2:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC2()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 591
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=====T/C3:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getInstance()Lcom/wen/fluorescence/arithmetic/TestAnalyzer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/arithmetic/TestAnalyzer;->getTC3()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 592
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=====K:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v7, v6, v4

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 593
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=====K2:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v5, v4, v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 594
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=====K3:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Thread/TestThread;->Kvalues:[D

    aget-wide v3, v4, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 596
    :goto_3
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 599
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 600
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    goto/16 :goto_7

    .line 602
    :cond_5
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Thread/TestThread;->parseIDChipDataLib(Lcom/wen/fluorescence/bean/IDChipInfoN;)Lgiven/tronho/api/IDChipDataLib;

    move-result-object v0

    .line 603
    .local v0, "idChipDataLib":Lgiven/tronho/api/IDChipDataLib;
    new-instance v1, Lgiven/tronho/api/InputDataLib;

    invoke-direct {v1}, Lgiven/tronho/api/InputDataLib;-><init>()V

    .line 604
    .local v1, "inputDataLib":Lgiven/tronho/api/InputDataLib;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getiDataArray()[I

    move-result-object v6

    invoke-virtual {v1, v6}, Lgiven/tronho/api/InputDataLib;->setData([I)V

    .line 605
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getiDataArray()[I

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v1, v6}, Lgiven/tronho/api/InputDataLib;->setLen(I)V

    .line 606
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getSampleType()I

    move-result v6

    invoke-virtual {v1, v6}, Lgiven/tronho/api/InputDataLib;->setSampleType(I)V

    .line 607
    new-instance v6, Lgiven/tronho/api/ResultStructLib;

    invoke-direct {v6}, Lgiven/tronho/api/ResultStructLib;-><init>()V

    iput-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    .line 608
    iget-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-static {v0, v1, v6}, Lgiven/tronho/api/TronhoLibApi;->startCalculate(Lgiven/tronho/api/IDChipDataLib;Lgiven/tronho/api/InputDataLib;Lgiven/tronho/api/ResultStructLib;)V

    .line 609
    const-string v6, "ab"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "1.4\u6d4b\u8bd5\u5b8c\u6bd5>>>>>>>>>>>>>>>>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v8

    iget v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIdChipInfoN()Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v6

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ne v6, v5, :cond_6

    .line 611
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====B:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getB()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 612
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====T1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getT1()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 613
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====T2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getT2()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 614
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====C:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getC()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 615
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====T/C:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getTC()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 616
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====K:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getDensity()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 619
    :cond_6
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====X1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getX1()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 620
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====X2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getX2()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 621
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====X3:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getX3()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 622
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====X4:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getX4()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 623
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====T/C:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getTC1()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 624
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "====T/C2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getTC2()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 625
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====T/C3:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getTC3()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 626
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====K:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getDensity1()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====K2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getDensity2()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 628
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====K3:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v8}, Lgiven/tronho/api/ResultStructLib;->getDensity3()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 631
    :goto_5
    iget-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ne v6, v5, :cond_7

    .line 632
    iget-object v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    iget-object v5, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v5, v5, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v5, v4

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_decimalDigits:I

    iget-object v5, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v5}, Lgiven/tronho/api/ResultStructLib;->getDensity()D

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/wen/fluorescence/Thread/TestThread;->reserveDecimals(ID)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lgiven/tronho/api/ResultStructLib;->setDensity(D)V

    goto :goto_6

    .line 635
    :cond_7
    iget-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    iget-object v7, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v7, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v4, v7, v4

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_decimalDigits:I

    iget-object v7, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v7}, Lgiven/tronho/api/ResultStructLib;->getDensity1()D

    move-result-wide v7

    invoke-virtual {p0, v4, v7, v8}, Lcom/wen/fluorescence/Thread/TestThread;->reserveDecimals(ID)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lgiven/tronho/api/ResultStructLib;->setDensity1(D)V

    .line 636
    iget-object v4, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-le v4, v5, :cond_8

    .line 637
    iget-object v4, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    iget-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v5, v6, v5

    iget v5, v5, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_decimalDigits:I

    iget-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v6}, Lgiven/tronho/api/ResultStructLib;->getDensity2()D

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/wen/fluorescence/Thread/TestThread;->reserveDecimals(ID)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lgiven/tronho/api/ResultStructLib;->setDensity2(D)V

    .line 639
    :cond_8
    iget-object v4, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v4, v4, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-le v4, v3, :cond_9

    .line 640
    iget-object v4, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    iget-object v5, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v5, v5, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v5, v3

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_decimalDigits:I

    iget-object v5, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v5}, Lgiven/tronho/api/ResultStructLib;->getDensity3()D

    move-result-wide v5

    invoke-virtual {p0, v3, v5, v6}, Lcom/wen/fluorescence/Thread/TestThread;->reserveDecimals(ID)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lgiven/tronho/api/ResultStructLib;->setDensity3(D)V

    .line 643
    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getM_testResult()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v3

    iget-object v4, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-direct {p0, v3, v4}, Lcom/wen/fluorescence/Thread/TestThread;->setUpTestResult(Lcom/wen/fluorescence/database/TestResult;Lgiven/tronho/api/ResultStructLib;)V

    .line 644
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 645
    .local v3, "msg":Landroid/os/Message;
    iput v2, v3, Landroid/os/Message;->what:I

    .line 646
    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->resultStructLib:Lgiven/tronho/api/ResultStructLib;

    invoke-virtual {v2}, Lgiven/tronho/api/ResultStructLib;->getValid()I

    move-result v2

    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 647
    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 649
    .end local v0    # "idChipDataLib":Lgiven/tronho/api/IDChipDataLib;
    .end local v1    # "inputDataLib":Lgiven/tronho/api/InputDataLib;
    .end local v3    # "msg":Landroid/os/Message;
    :goto_7
    return-void
.end method

.method public startTest(Lcom/wen/fluorescence/database/TestResult;Ljava/lang/String;)V
    .locals 12
    .param p1, "testResult"    # Lcom/wen/fluorescence/database/TestResult;
    .param p2, "barCode"    # Ljava/lang/String;

    .line 305
    const-string v0, "ab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u6d4b\u8bd5>>>>>>>>>>>>>>>>\u6761\u7801\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Thread/TestThread;->setIdCardInfo(Lcom/wen/fluorescence/bean/IDChipInfo;)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Thread/TestThread;->setIdChipInfoN(Lcom/wen/fluorescence/bean/IDChipInfoN;)V

    .line 308
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/Thread/TestThread;->setM_testResult(Lcom/wen/fluorescence/database/TestResult;)V

    .line 310
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoNForBarCode(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    .line 311
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_5

    .line 312
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/wen/fluorescence/util/IDCardUtil;->isIDChipExist(Ljava/lang/String;)Z

    move-result v0

    .line 313
    .local v0, "isExist":Z
    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0, p2}, Lcom/wen/fluorescence/Thread/TestThread;->readFromLocalPath(Ljava/lang/String;)Z

    goto :goto_2

    .line 317
    :cond_0
    invoke-virtual {p0, v4}, Lcom/wen/fluorescence/Thread/TestThread;->readIDChip(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 364
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 365
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getTestStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 369
    :cond_1
    return-void

    .line 372
    :cond_2
    const-string v6, ""

    .line 373
    .local v6, "idBarCode":Ljava/lang/String;
    iget v7, p0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    if-ne v7, v3, :cond_3

    .line 374
    iget-object v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    .line 374
    .end local v6    # "idBarCode":Ljava/lang/String;
    .local v3, "idBarCode":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 376
    .end local v3    # "idBarCode":Ljava/lang/String;
    .restart local v6    # "idBarCode":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->idCardInfo:Lcom/wen/fluorescence/bean/IDChipInfo;

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfo;->m_barCode:Ljava/lang/String;

    goto :goto_0

    .line 379
    .end local v6    # "idBarCode":Ljava/lang/String;
    .restart local v3    # "idBarCode":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 380
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 381
    return-void

    .line 385
    .end local v0    # "isExist":Z
    .end local v3    # "idBarCode":Ljava/lang/String;
    :cond_4
    :goto_2
    goto/16 :goto_4

    .line 386
    :cond_5
    iput v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->IDChipVersion:I

    .line 387
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoExNForBarCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 388
    .local v0, "idChipInfoExNList":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/IDChipInfoExN;>;"
    iget-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/wen/fluorescence/bean/IDChipInfoExN;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/wen/fluorescence/bean/IDChipInfoExN;

    iput-object v7, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    .line 390
    iget-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/wen/fluorescence/database/DBManager;->queryEquationForBarCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 391
    .local v6, "equations":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/Equation;>;"
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 392
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/bean/Equation;

    iget v7, v7, Lcom/wen/fluorescence/bean/Equation;->flag:I

    if-ne v7, v4, :cond_6

    .line 393
    iget-object v7, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iput v4, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    .line 394
    iget-object v7, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/bean/Equation;

    iget v8, v8, Lcom/wen/fluorescence/bean/Equation;->customerCode:I

    iput v8, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->customerCode:I

    .line 395
    iget-object v7, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/bean/Equation;

    iget v8, v8, Lcom/wen/fluorescence/bean/Equation;->childCustomerCode:I

    iput v8, v7, Lcom/wen/fluorescence/bean/IDChipInfoN;->childCode:I

    .line 396
    move v7, v5

    .line 396
    .local v7, "i":I
    :goto_3
    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v7, v8, :cond_6

    .line 397
    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/bean/Equation;

    iget-wide v9, v9, Lcom/wen/fluorescence/bean/Equation;->E1_1:D

    aput-wide v9, v8, v5

    .line 398
    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/bean/Equation;

    iget-wide v9, v9, Lcom/wen/fluorescence/bean/Equation;->E1_2:D

    aput-wide v9, v8, v4

    .line 399
    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/bean/Equation;

    iget-wide v9, v9, Lcom/wen/fluorescence/bean/Equation;->E1_3:D

    aput-wide v9, v8, v1

    .line 400
    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/bean/Equation;

    iget-wide v9, v9, Lcom/wen/fluorescence/bean/Equation;->E1_4:D

    aput-wide v9, v8, v2

    .line 401
    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/bean/Equation;

    iget-wide v9, v9, Lcom/wen/fluorescence/bean/Equation;->E1_5:D

    aput-wide v9, v8, v3

    .line 402
    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/bean/Equation;

    iget-wide v9, v9, Lcom/wen/fluorescence/bean/Equation;->E1_6:D

    const/4 v11, 0x5

    aput-wide v9, v8, v11

    .line 404
    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/bean/Equation;

    iget-wide v9, v9, Lcom/wen/fluorescence/bean/Equation;->E2_1:D

    aput-wide v9, v8, v5

    .line 405
    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/bean/Equation;

    iget-wide v9, v9, Lcom/wen/fluorescence/bean/Equation;->E2_2:D

    aput-wide v9, v8, v4

    .line 406
    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/bean/Equation;

    iget-wide v9, v9, Lcom/wen/fluorescence/bean/Equation;->E2_3:D

    aput-wide v9, v8, v1

    .line 407
    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/bean/Equation;

    iget-wide v9, v9, Lcom/wen/fluorescence/bean/Equation;->E2_4:D

    aput-wide v9, v8, v2

    .line 408
    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/bean/Equation;

    iget-wide v9, v9, Lcom/wen/fluorescence/bean/Equation;->E2_5:D

    aput-wide v9, v8, v3

    .line 409
    iget-object v8, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wen/fluorescence/bean/Equation;

    iget-wide v9, v9, Lcom/wen/fluorescence/bean/Equation;->E2_6:D

    aput-wide v9, v8, v11

    .line 396
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 413
    .end local v7    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/Thread/TestThread;->setIdChipInfoN(Lcom/wen/fluorescence/bean/IDChipInfoN;)V

    .line 417
    .end local v0    # "idChipInfoExNList":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/IDChipInfoExN;>;"
    .end local v6    # "equations":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/Equation;>;"
    :goto_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "=============== XXXXX ================"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u591a\u9879\u5f0f\u7cfb\u6570\u6807\u8bc6:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5ba2\u6237\u4ee3\u7801:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->customerCode:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 420
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5ba2\u6237\u5b50\u4ee3\u7801:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoN;->childCode:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    move v0, v5

    .line 421
    .local v0, "i":I
    :goto_5
    iget-object v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v0, v3, :cond_7

    .line 422
    iget-object v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v3, v3, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/wen/fluorescence/bean/IDChipInfoExN;->printlnEquation()V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 426
    .end local v0    # "i":I
    :cond_7
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v0

    const/16 v3, 0x21

    if-nez v0, :cond_b

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 427
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/wen/fluorescence/database/DBManager;->queryEquationForBarCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 428
    .local v0, "equations":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/Equation;>;"
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 429
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/bean/Equation;

    iget v6, v6, Lcom/wen/fluorescence/bean/Equation;->flag:I

    if-ne v6, v4, :cond_b

    .line 430
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wen/fluorescence/bean/Equation;

    iget v6, v6, Lcom/wen/fluorescence/bean/Equation;->customerCode:I

    if-eq v6, v4, :cond_b

    .line 431
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 432
    return-void

    .line 436
    :cond_8
    const-string v6, "\u54c8\u54c8"

    const-string v7, "====\u6ca1\u6709\u6807\u8bc6\uff0c\u5df2\u51fa\u53bb\u7684\u6279\u53f7==="

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v6, 0x0

    .line 439
    .local v6, "flag":Z
    sget-object v7, Lcom/wen/fluorescence/util/PublicFuction;->deChengBatchNum:[Ljava/lang/String;

    array-length v8, v7

    move v9, v6

    move v6, v5

    .line 439
    .end local v6    # "flag":Z
    .local v9, "flag":Z
    :goto_6
    if-ge v6, v8, :cond_a

    aget-object v10, v7, v6

    .line 440
    .local v10, "batchNum":Ljava/lang/String;
    iget-object v11, p0, Lcom/wen/fluorescence/Thread/TestThread;->idChipInfoN:Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v11, v11, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_logNo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 441
    const/4 v9, 0x1

    .line 439
    .end local v10    # "batchNum":Ljava/lang/String;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 445
    :cond_a
    if-nez v9, :cond_b

    .line 446
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 447
    return-void

    .line 452
    .end local v0    # "equations":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/Equation;>;"
    .end local v9    # "flag":Z
    :cond_b
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v0

    .line 453
    .local v0, "guestType":I
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v6

    if-nez v6, :cond_f

    if-lt v0, v2, :cond_c

    const/4 v2, 0x7

    if-le v0, v2, :cond_f

    .line 454
    :cond_c
    iget-object v2, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v2

    const-string v6, "SP_YR_PREVENT_GOODS"

    invoke-virtual {v2, v6, v5}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 455
    .local v2, "isGoodsOn":Z
    iget-object v6, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v6

    const-string v7, "SP_YR_PREVENT_GOODS_VALUE"

    const/16 v8, 0x23

    invoke-virtual {v6, v7, v8}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getIntData(Ljava/lang/String;I)I

    move-result v6

    .line 456
    .local v6, "defaultValue":I
    const-string v7, "CHF200"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isGoodsOn==="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ";  defaultValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-eqz v2, :cond_f

    .line 458
    iget-object v7, p0, Lcom/wen/fluorescence/Thread/TestThread;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/wen/fluorescence/database/DBManager;->queryEquationForBarCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 459
    .local v7, "equations":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/Equation;>;"
    const-string v8, "CHF200"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "equations\u6570\u91cf==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    if-eqz v7, :cond_e

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_e

    .line 461
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wen/fluorescence/bean/Equation;

    iget v8, v8, Lcom/wen/fluorescence/bean/Equation;->flag:I

    if-ne v8, v4, :cond_f

    .line 462
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/bean/Equation;

    iget v4, v4, Lcom/wen/fluorescence/bean/Equation;->customerCode:I

    if-ne v4, v1, :cond_d

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/bean/Equation;

    iget v1, v1, Lcom/wen/fluorescence/bean/Equation;->childCustomerCode:I

    if-eq v1, v6, :cond_f

    .line 463
    :cond_d
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 464
    return-void

    .line 468
    :cond_e
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 469
    return-void

    .line 474
    .end local v2    # "isGoodsOn":Z
    .end local v6    # "defaultValue":I
    .end local v7    # "equations":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/Equation;>;"
    :cond_f
    invoke-direct {p0}, Lcom/wen/fluorescence/Thread/TestThread;->checkSampleType()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 475
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/TestThread;->continuteToCollection()V

    goto :goto_7

    .line 477
    :cond_10
    invoke-direct {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getIDChipSampleTypes()[Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "SampleTypes":[Ljava/lang/String;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 479
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x20

    iput v3, v2, Landroid/os/Message;->what:I

    .line 480
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 481
    iget-object v3, p0, Lcom/wen/fluorescence/Thread/TestThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 483
    .end local v1    # "SampleTypes":[Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_7
    return-void
.end method

.method public startTestBybatNumber(Lcom/wen/fluorescence/database/TestResult;Ljava/lang/String;)V
    .locals 0
    .param p1, "testResult"    # Lcom/wen/fluorescence/database/TestResult;
    .param p2, "barCode"    # Ljava/lang/String;

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/wen/fluorescence/Thread/TestThread;->startTest(Lcom/wen/fluorescence/database/TestResult;Ljava/lang/String;)V

    .line 269
    return-void
.end method
