.class public Lcom/wen/fluorescence/database/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field private static dbm:Lcom/wen/fluorescence/database/DBManager;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private helper:Lcom/wen/fluorescence/database/DBHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/database/DBManager;->helper:Lcom/wen/fluorescence/database/DBHelper;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/wen/fluorescence/database/DBHelper;

    invoke-direct {v0, p1}, Lcom/wen/fluorescence/database/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wen/fluorescence/database/DBManager;->helper:Lcom/wen/fluorescence/database/DBHelper;

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/wen/fluorescence/database/DBManager;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    sget-object v0, Lcom/wen/fluorescence/database/DBManager;->dbm:Lcom/wen/fluorescence/database/DBManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/wen/fluorescence/database/DBManager;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/database/DBManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wen/fluorescence/database/DBManager;->dbm:Lcom/wen/fluorescence/database/DBManager;

    .line 46
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/database/DBManager;->dbm:Lcom/wen/fluorescence/database/DBManager;

    return-object v0
.end method

.method private openDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/wen/fluorescence/database/DBManager;->helper:Lcom/wen/fluorescence/database/DBHelper;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    iget-object v0, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private parseTestResultFromCursor(Landroid/database/Cursor;)Lcom/wen/fluorescence/database/TestResult;
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;

    .line 563
    new-instance v0, Lcom/wen/fluorescence/database/TestResult;

    invoke-direct {v0}, Lcom/wen/fluorescence/database/TestResult;-><init>()V

    .line 564
    .local v0, "tr":Lcom/wen/fluorescence/database/TestResult;
    const-string v1, "id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setID(I)V

    .line 565
    const-string v1, "serialNumber"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSerialNumber(Ljava/lang/String;)V

    .line 566
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setName(Ljava/lang/String;)V

    .line 567
    const-string v1, "sampleNumber"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSampleNumber(Ljava/lang/String;)V

    .line 568
    const-string v1, "logNO"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setLogNo(Ljava/lang/String;)V

    .line 569
    const-string v1, "bedNumber"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setBedNumber(Ljava/lang/String;)V

    .line 570
    const-string v1, "patientNumber"

    .line 571
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 570
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setPatientNumber(Ljava/lang/String;)V

    .line 572
    const-string v1, "doctorNumber"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setDoctorNumber(Ljava/lang/String;)V

    .line 573
    const-string v1, "itemTitle"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setItemTitle(Ljava/lang/String;)V

    .line 574
    const-string v1, "simpleType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSimpleType(Ljava/lang/String;)V

    .line 575
    const-string v1, "submittingDivision"

    .line 576
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 575
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSubmittingDivision(Ljava/lang/String;)V

    .line 577
    const-string v1, "submittingDoctor"

    .line 578
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 577
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSubmittingDoctor(Ljava/lang/String;)V

    .line 579
    const-string v1, "submittingTime"

    .line 580
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 579
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSubmittingTime(Ljava/lang/String;)V

    .line 581
    const-string v1, "inspectingDoctor"

    .line 582
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 581
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setInspectingDoctor(Ljava/lang/String;)V

    .line 583
    const-string v1, "inspectingTime"

    .line 584
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 583
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setInspectingTime(Ljava/lang/String;)V

    .line 585
    const-string v1, "reviewer"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setReviewer(Ljava/lang/String;)V

    .line 586
    const-string v1, "note"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setNote(Ljava/lang/String;)V

    .line 587
    const-string v1, "sex"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setSex(I)V

    .line 588
    const-string v1, "age"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setAge(I)V

    .line 589
    const-string v1, "testtime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setTestTime(Ljava/lang/String;)V

    .line 590
    const-string v1, "result"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setResult(Ljava/lang/String;)V

    .line 591
    const-string v1, "item"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setItem(Ljava/lang/String;)V

    .line 592
    const-string v1, "unit"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setUnit(Ljava/lang/String;)V

    .line 593
    const-string v1, "testTemp"

    .line 594
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 593
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/database/TestResult;->setTestTemp(D)V

    .line 595
    const-string v1, "testMode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setTestMode(I)V

    .line 596
    const-string v1, "qualitativeFlag"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeFlag(I)V

    .line 597
    const-string v1, "qualitativeVerdict"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setQualitativeVerdict(Ljava/lang/String;)V

    .line 598
    const-string v1, "itemcount"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setItemcount(Ljava/lang/String;)V

    .line 601
    const-string v1, "level"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setLevel(I)V

    .line 603
    :try_start_0
    const-string v1, "holder1"

    .line 604
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 603
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/database/TestResult;->setHolder1(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    goto :goto_0

    .line 605
    :catch_0
    move-exception v1

    .line 608
    :goto_0
    const-string v1, "holder2"

    .line 609
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 608
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setHolder2(Ljava/lang/String;)V

    .line 610
    const-string v1, "holder3"

    .line 611
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 610
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setHolder3(Ljava/lang/String;)V

    .line 612
    const-string v1, "holder4"

    .line 613
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 612
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setHolder4(Ljava/lang/String;)V

    .line 614
    const-string v1, "holder5"

    .line 615
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 614
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setHolder5(Ljava/lang/String;)V

    .line 616
    const-string v1, "user"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setUser(Ljava/lang/String;)V

    .line 617
    const-string v1, "appId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setAppId(Ljava/lang/String;)V

    .line 618
    const-string v1, "uploadStatus"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setUploadStatus(I)V

    .line 619
    const-string v1, "reItem"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setReItem(Ljava/lang/String;)V

    .line 620
    const-string v1, "reResult"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setReResult(Ljava/lang/String;)V

    .line 621
    const-string v1, "holder6"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/database/TestResult;->setHolder6(Ljava/lang/String;)V

    .line 622
    return-object v0
.end method


# virtual methods
.method public accountTestLimit(Ljava/lang/String;Ljava/lang/String;III)Ljava/util/List;
    .locals 21
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;
    .param p3, "accountCondition"    # I
    .param p4, "limit"    # I
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1578
    move/from16 v5, p5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const-string v7, ""

    .line 1580
    .local v7, "sql":Ljava/lang/String;
    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v3, :cond_6

    .line 1582
    const/4 v14, 0x0

    .line 1584
    .local v14, "c":Landroid/database/Cursor;
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v15

    invoke-virtual {v15}, Lcom/wen/fluorescence/util/Global;->getUser()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v1, v2, v15}, Lcom/wen/fluorescence/database/DBManager;->queryTestItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1585
    .local v15, "myItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v5, :cond_0

    .line 1586
    return-object v6

    .line 1588
    :cond_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    if-lt v8, v4, :cond_1

    .line 1589
    move v8, v5

    .line 1589
    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1590
    invoke-interface {v15, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    .line 1589
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1593
    .end local v8    # "i":I
    :cond_1
    move v8, v5

    .line 1593
    .restart local v8    # "i":I
    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 1594
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v15, v5, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    .line 1593
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1598
    .end local v8    # "i":I
    :cond_2
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1600
    .local v9, "item":Ljava/lang/String;
    const-string v10, "SELECT COUNT(result) FROM TestResult WHERE item = \'%s\' AND testtime >= \'%s\' AND testtime <= \'%s\' AND user = \'%s\'"

    move-object/from16 v19, v7

    new-array v7, v11, [Ljava/lang/Object;

    .line 1600
    .end local v7    # "sql":Ljava/lang/String;
    .local v19, "sql":Ljava/lang/String;
    aput-object v9, v7, v12

    aput-object v1, v7, v13

    const/16 v18, 0x2

    aput-object v2, v7, v18

    .line 1602
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v11

    invoke-virtual {v11}, Lcom/wen/fluorescence/util/Global;->getUser()Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x3

    aput-object v11, v7, v17

    .line 1601
    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1603
    .end local v19    # "sql":Ljava/lang/String;
    .restart local v7    # "sql":Ljava/lang/String;
    const-string v10, "Log"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SQL:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v10, v0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1605
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1606
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    .line 1607
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1608
    .local v11, "count":I
    if-nez v11, :cond_3

    .line 1609
    goto :goto_3

    .line 1611
    :cond_3
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1612
    .local v13, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "count":I
    .end local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 1605
    const/4 v12, 0x0

    goto :goto_3

    .line 1615
    :cond_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1616
    .end local v9    # "item":Ljava/lang/String;
    nop

    .line 1598
    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_2

    .line 1617
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v15    # "myItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v19, v7

    .line 1617
    .end local v7    # "sql":Ljava/lang/String;
    .restart local v19    # "sql":Ljava/lang/String;
    goto/16 :goto_8

    .line 1617
    .end local v19    # "sql":Ljava/lang/String;
    .restart local v7    # "sql":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x1

    if-ne v3, v8, :cond_c

    .line 1619
    const/4 v8, 0x0

    .line 1620
    .local v8, "c":Landroid/database/Cursor;
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v9

    invoke-virtual {v9}, Lcom/wen/fluorescence/util/Global;->getUser()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v1, v2, v9}, Lcom/wen/fluorescence/database/DBManager;->queryTestSimpleType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 1621
    .local v9, "f":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-gt v10, v5, :cond_7

    .line 1622
    return-object v6

    .line 1624
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    if-lt v10, v4, :cond_8

    .line 1625
    move-object v10, v9

    move v9, v5

    .line 1625
    .local v9, "i":I
    .local v10, "f":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    if-ge v9, v4, :cond_9

    .line 1626
    invoke-interface {v10, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 1625
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1629
    .end local v10    # "f":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "f":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    move-object v10, v9

    move v9, v5

    .line 1629
    .local v9, "i":I
    .restart local v10    # "f":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_9

    .line 1630
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v10, v5, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 1629
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1634
    .end local v9    # "i":I
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1635
    .local v11, "sample":Ljava/lang/String;
    const-string v12, "SELECT COUNT(result) FROM TestResult WHERE simpleType = \'%s\' AND testtime >= \'%s\' AND testtime <= \'%s\' AND user = \'%s\'"

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    const/16 v18, 0x2

    aput-object v2, v14, v18

    .line 1637
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v13

    invoke-virtual {v13}, Lcom/wen/fluorescence/util/Global;->getUser()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x3

    aput-object v13, v14, v17

    .line 1636
    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1638
    iget-object v12, v0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v13, 0x0

    invoke-virtual {v12, v7, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1639
    :goto_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1640
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v14

    .line 1641
    .local v14, "name":Ljava/lang/String;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1642
    .local v12, "count":I
    if-nez v12, :cond_a

    .line 1643
    goto :goto_7

    .line 1645
    :cond_a
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1646
    .restart local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v16, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aget-object v15, v16, v15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1648
    .end local v12    # "count":I
    .end local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "name":Ljava/lang/String;
    nop

    .line 1639
    move-object/from16 v0, p0

    const/4 v13, 0x0

    const/4 v15, 0x1

    goto :goto_7

    .line 1649
    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1650
    .end local v11    # "sample":Ljava/lang/String;
    nop

    .line 1634
    move-object/from16 v0, p0

    goto :goto_6

    .line 1652
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v10    # "f":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    :goto_8
    return-object v6
.end method

.method public accountWorkLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wen/fluorescence/database/WorkLoad;
    .locals 6
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;
    .param p3, "sendDoctor"    # Ljava/lang/String;
    .param p4, "sendDivision"    # Ljava/lang/String;
    .param p5, "checkDoctor"    # Ljava/lang/String;

    .line 1781
    const-string v0, "SELECT COUNT(result) FROM TestResult WHERE testtime >= \'%s\' AND testtime <= \'%s\' AND user = \'%s\'"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    .line 1784
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/Global;->getUser()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 1782
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1785
    .local v0, "sql":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AND submittingDoctor = \'%s\'"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1788
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AND submittingDivision = \'%s\'"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p4, v5, v2

    .line 1790
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1792
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AND inspectingDoctor = \'%s\'"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p5, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1795
    :cond_2
    const-string v1, "ta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sql:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1797
    .local v1, "c":Landroid/database/Cursor;
    new-instance v3, Lcom/wen/fluorescence/database/WorkLoad;

    invoke-direct {v3}, Lcom/wen/fluorescence/database/WorkLoad;-><init>()V

    .line 1798
    .local v3, "wl":Lcom/wen/fluorescence/database/WorkLoad;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1799
    invoke-virtual {v3, p3}, Lcom/wen/fluorescence/database/WorkLoad;->setSubmittingdoctor(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {v3, p4}, Lcom/wen/fluorescence/database/WorkLoad;->setDivision(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {v3, p5}, Lcom/wen/fluorescence/database/WorkLoad;->setInspectingDoctor(Ljava/lang/String;)V

    .line 1802
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 1803
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1804
    .local v4, "count":I
    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/WorkLoad;->setSample(I)V

    .line 1806
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "count":I
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1807
    return-object v3
.end method

.method public addEquation(Lcom/wen/fluorescence/bean/Equation;)V
    .locals 5
    .param p1, "equation"    # Lcom/wen/fluorescence/bean/Equation;

    .line 1975
    const-string v0, "insert into Equation(ItemIndex,flag,m_barCode,customerCode,childCustomerCode,E1_1,E1_2,E1_3,E1_4,E1_5,E1_6,E2_1,E2_2,E2_3,E2_4,E2_5,E2_6) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 1977
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/wen/fluorescence/bean/Equation;->ItemIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/Equation;->flag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wen/fluorescence/bean/Equation;->m_barCode:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/Equation;->customerCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/Equation;->childCustomerCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/wen/fluorescence/bean/Equation;->E1_1:D

    .line 1978
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/wen/fluorescence/bean/Equation;->E1_2:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/wen/fluorescence/bean/Equation;->E1_3:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/wen/fluorescence/bean/Equation;->E1_4:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/wen/fluorescence/bean/Equation;->E1_5:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/wen/fluorescence/bean/Equation;->E1_6:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/wen/fluorescence/bean/Equation;->E2_1:D

    .line 1979
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/wen/fluorescence/bean/Equation;->E2_2:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/wen/fluorescence/bean/Equation;->E2_3:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/wen/fluorescence/bean/Equation;->E2_4:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/wen/fluorescence/bean/Equation;->E2_5:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/wen/fluorescence/bean/Equation;->E2_6:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0x10

    aput-object v3, v2, v4

    .line 1977
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1980
    return-void
.end method

.method public addIDChipInfoExN(Lcom/wen/fluorescence/bean/IDChipInfoExN;)V
    .locals 5
    .param p1, "chipInfoExN"    # Lcom/wen/fluorescence/bean/IDChipInfoExN;

    .line 1958
    const-string v0, "insert into IDChipInfoExN(ItemIndex,m_projectName,FileFlag,FileVersion,AlgorithmType,m_barCode,m_calcMethod,m_t,m_c,m_projectCount,m_unit,m_decimalDigits,sampleCoefficientArrays,m_projectStart,m_printData,m_testBound,thresholdValue,thresholdValueResult,conclusionCounts,intervalDensity,resultOfDensity,cc,tc,l_count,m_unlog,x_isOtherAlglog,y_isOtherAlglog,m_dimension,m_divisionIndex,m_dimen) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 1964
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0x1e

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->ItemIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    invoke-static {v3}, Lcom/wen/fluorescence/util/JsonUtil;->arrayToJson([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-byte v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->FileFlag:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-byte v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->FileVersion:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->AlgorithmType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_barCode:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_calcMethod:I

    .line 1965
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_unit:Ljava/lang/String;

    const/16 v4, 0xa

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_decimalDigits:I

    .line 1966
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    invoke-static {v3}, Lcom/wen/fluorescence/util/JsonUtil;->SampleCoefficientToJson([Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    invoke-static {v3}, Lcom/wen/fluorescence/util/JsonUtil;->arrayToJson([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    .line 1967
    invoke-static {v3}, Lcom/wen/fluorescence/util/JsonUtil;->arrayToJson([[D)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValue:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0x10

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValueResult:[Ljava/lang/String;

    invoke-static {v3}, Lcom/wen/fluorescence/util/JsonUtil;->arrayToJson([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x11

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->conclusionCounts:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x12

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->intervalDensity:[D

    .line 1968
    invoke-static {v3}, Lcom/wen/fluorescence/util/JsonUtil;->arrayToJson([D)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x13

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->resultOfDensity:[Ljava/lang/String;

    invoke-static {v3}, Lcom/wen/fluorescence/util/JsonUtil;->arrayToJson([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->cc:[D

    invoke-static {v3}, Lcom/wen/fluorescence/util/JsonUtil;->arrayToJson([D)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x15

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->tc:[D

    .line 1969
    invoke-static {v3}, Lcom/wen/fluorescence/util/JsonUtil;->arrayToJson([D)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x16

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->l_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x17

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_unlog:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x18

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->x_isOtherAlglog:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x19

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->y_isOtherAlglog:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1a

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimension:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1b

    aput-object v3, v2, v4

    iget v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_divisionIndex:I

    .line 1970
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1c

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimen:[I

    invoke-static {v3}, Lcom/wen/fluorescence/util/JsonUtil;->arrayToJson([I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1d

    aput-object v3, v2, v4

    .line 1964
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1972
    return-void
.end method

.method public addIDChipInfoN(Lcom/wen/fluorescence/bean/IDChipInfoN;)V
    .locals 7
    .param p1, "chipInfo"    # Lcom/wen/fluorescence/bean/IDChipInfoN;

    .line 1934
    const-string v0, "insert into IDChipInfoN(FileFlag,FileVersion,m_barCode,new_barCode,new_logNo,m_ItemCount,m_countdowntime,s_countdowntime,m_title,isVisibleResult,isVisibleConclusion,lastYear,lastMonth,lastDay,T1_start,T2_start,C_start,T1_end,T2_end,C_end,X1_start,X2_start,X3_start,X4_start,X1_end,X2_end,X3_end,X4_end,m_T1Pos,m_T2Pos,m_CPos,m_X1Pos,m_X2Pos,m_X3Pos,m_X4Pos,m_NumberT1,m_NumberT2,m_NumberC,m_NumberX1,m_NumberX2,m_NumberX3,m_NumberX4,isRushTop,isAddSample,RushTopName,AddSampleName,addSample,rushTop,qualitativeFlag,cutBackgroundFlag,cardsCounts,toCalcApex) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 1942
    .local v0, "sql":Ljava/lang/String;
    iget-byte v1, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->FileFlag:B

    and-int/lit16 v1, v1, 0xff

    .line 1943
    .local v1, "FileFlag":I
    iget-byte v2, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->FileVersion:B

    and-int/lit16 v2, v2, 0xff

    .line 1945
    .local v2, "FileVersion":I
    iget-object v3, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v4, 0x34

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_barCode:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_logNo:Ljava/lang/String;

    const/4 v6, 0x4

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    .line 1946
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_countdowntime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->s_countdowntime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_title:Ljava/lang/String;

    const/16 v6, 0x8

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->isVisibleResult:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->isVisibleConclusion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xa

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastYear:I

    .line 1947
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xb

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastMonth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xc

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xd

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->T1_start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xe

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->T2_start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xf

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->C_start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x10

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->T1_end:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x11

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->T2_end:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x12

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->C_end:I

    .line 1948
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x13

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X1_start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x14

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X2_start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x15

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X3_start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x16

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X4_start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x17

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X1_end:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x18

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X2_end:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x19

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X3_end:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1a

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->X4_end:I

    .line 1949
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1b

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_T1Pos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1c

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_T2Pos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1d

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_CPos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1e

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_X1Pos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1f

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_X2Pos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x20

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_X3Pos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x21

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_X4Pos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x22

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberT1:I

    .line 1950
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x23

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberT2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x24

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberC:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x25

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x26

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x27

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX3:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x28

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX4:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x29

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->isRushTop:I

    .line 1951
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2a

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->isAddSample:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2b

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->RushTopName:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2c

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->AddSampleName:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2d

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->addSample:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2e

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->rushTop:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2f

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->qualitativeFlag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x30

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->cutBackgroundFlag:I

    .line 1952
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x31

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->cardsCounts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x32

    aput-object v5, v4, v6

    iget v5, p1, Lcom/wen/fluorescence/bean/IDChipInfoN;->toCalcApex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x33

    aput-object v5, v4, v6

    .line 1945
    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1954
    return-void
.end method

.method public addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "min"    # Ljava/lang/String;
    .param p5, "max"    # Ljava/lang/String;
    .param p6, "unit"    # Ljava/lang/String;

    .line 292
    const-string v0, "SELECT * FROM ItemParas WHERE name = \'%s\' AND Type = \'%s\'"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p3, v2, v4

    .line 293
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v5, v2

    .line 297
    .local v5, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v5, v2

    .line 298
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 310
    if-eqz v5, :cond_0

    .line 311
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_0
    return-void

    .line 301
    :cond_1
    :try_start_1
    const-string v2, "INSERT INTO ItemParas (name,code,Type,mMin,mMax,unit) VALUES (\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\')"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object p2, v6, v4

    aput-object p3, v6, v1

    const/4 v1, 0x3

    aput-object p4, v6, v1

    const/4 v1, 0x4

    aput-object p5, v6, v1

    const/4 v1, 0x5

    aput-object p6, v6, v1

    .line 302
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "sql2":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    if-eqz v5, :cond_2

    .line 311
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_2
    return-void

    .line 310
    .end local v1    # "sql2":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_3

    .line 311
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_3
    return-void

    .line 310
    :goto_0
    if-eqz v5, :cond_4

    .line 311
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "min"    # Ljava/lang/String;
    .param p5, "max"    # Ljava/lang/String;
    .param p6, "unit"    # Ljava/lang/String;
    .param p7, "k"    # Ljava/lang/String;
    .param p8, "b"    # Ljava/lang/String;

    .line 318
    const-string v0, "SELECT * FROM ItemParas WHERE name = \'%s\' AND Type = \'%s\'"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p3, v2, v4

    .line 319
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v5, v2

    .line 323
    .local v5, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v5, v2

    .line 324
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 336
    if-eqz v5, :cond_0

    .line 337
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_0
    return-void

    .line 327
    :cond_1
    :try_start_1
    const-string v2, "INSERT INTO ItemParas (name,code,Type,mMin,mMax,unit,k, b) VALUES (\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\')"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object p2, v6, v4

    aput-object p3, v6, v1

    const/4 v1, 0x3

    aput-object p4, v6, v1

    const/4 v1, 0x4

    aput-object p5, v6, v1

    const/4 v1, 0x5

    aput-object p6, v6, v1

    const/4 v1, 0x6

    aput-object p7, v6, v1

    const/4 v1, 0x7

    aput-object p8, v6, v1

    .line 328
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "sql2":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    if-eqz v5, :cond_2

    .line 337
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_2
    return-void

    .line 336
    .end local v1    # "sql2":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_3

    .line 337
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_3
    return-void

    .line 336
    :goto_0
    if-eqz v5, :cond_4

    .line 337
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public addItemParasEXT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "ManMin"    # Ljava/lang/String;
    .param p5, "ManMax"    # Ljava/lang/String;
    .param p6, "WLPMin"    # Ljava/lang/String;
    .param p7, "WLPMax"    # Ljava/lang/String;
    .param p8, "WPLMin"    # Ljava/lang/String;
    .param p9, "WPLMax"    # Ljava/lang/String;
    .param p10, "WHTMin"    # Ljava/lang/String;
    .param p11, "WHTMax"    # Ljava/lang/String;
    .param p12, "WJJMin"    # Ljava/lang/String;
    .param p13, "WJJMax"    # Ljava/lang/String;
    .param p14, "WEXT1Min"    # Ljava/lang/String;
    .param p15, "WEXT1Max"    # Ljava/lang/String;
    .param p16, "WEXT2Min"    # Ljava/lang/String;
    .param p17, "WEXT2Max"    # Ljava/lang/String;

    .line 279
    const-string v0, "insert into ItemParasEXT(name,code,Type,ManMin,ManMax,WLPMin,WLPMax,WPLMin,WPLMax,WHTMin,WHTMax,WJJMin,WJJMax,WEXT1Min, WEXT1Max,WEXT2Min, WEXT2Max) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);"

    .line 282
    .local v0, "sql":Ljava/lang/String;
    move-object v1, p0

    iget-object v2, v1, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v3, 0x11

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    const/4 v4, 0x7

    aput-object p8, v3, v4

    const/16 v4, 0x8

    aput-object p9, v3, v4

    const/16 v4, 0x9

    aput-object p10, v3, v4

    const/16 v4, 0xa

    aput-object p11, v3, v4

    const/16 v4, 0xb

    aput-object p12, v3, v4

    const/16 v4, 0xc

    aput-object p13, v3, v4

    const/16 v4, 0xd

    aput-object p14, v3, v4

    const/16 v4, 0xe

    aput-object p15, v3, v4

    const/16 v4, 0xf

    aput-object p16, v3, v4

    const/16 v4, 0x10

    aput-object p17, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method public addOriResult(Lcom/wen/fluorescence/database/OriResult;)V
    .locals 4
    .param p1, "oriResult"    # Lcom/wen/fluorescence/database/OriResult;

    .line 710
    const-string v0, "INSERT INTO OriResult(T1, T2, T3, C, TC1, TC2, TC3, value1, value2, value3,barCode,time,number,item,serialNumber,calTemp,startTemp,endTemp,ID_Type,testMode) VALUES(\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\')"

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Object;

    .line 714
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getT1()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getT2()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 715
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getT3()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getC()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 716
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getTC1()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getTC2()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 717
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getTC3()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getValue1()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 718
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getValue2()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getValue3()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 719
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getBarCode()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getTime()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 720
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getItem()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 721
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 722
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getCalTemp()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 723
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getStartTemp()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 724
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getEndTemp()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 725
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getID_Type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/OriResult;->getTestMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 711
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public addRawData(Lcom/wen/fluorescence/database/RawData;)V
    .locals 4
    .param p1, "rawData"    # Lcom/wen/fluorescence/database/RawData;

    .line 1036
    const-string v0, "INSERT INTO RawData(serialNumber,data,time) VALUES(\'%s\',\'%s\',\'%s\')"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 1038
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/RawData;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/RawData;->getData()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1039
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/RawData;->getTime()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1037
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, "sql":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    goto :goto_0

    .line 1042
    :catch_0
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1046
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public addTestResult(Lcom/wen/fluorescence/database/TestResult;)V
    .locals 5
    .param p1, "result"    # Lcom/wen/fluorescence/database/TestResult;

    .line 653
    const-string v0, "serialNumber,name,sampleNumber,logNO,bedNumber,patientNumber,doctorNumber,itemTitle,simpleType,submittingDivision,submittingDoctor,submittingTime,inspectingDoctor,inspectingTime,reviewer,note,sex,age,testtime,result,item,unit,testTemp,testMode,qualitativeFlag,qualitativeVerdict,itemcount,level,holder1,holder2,holder3,holder4,holder5,user,appId,uploadStatus, reItem, reResult, holder6"

    .line 657
    .local v0, "strContent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO TestResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "sql":Ljava/lang/String;
    const/16 v2, 0x27

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getLogNo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getBedNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 659
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getDoctorNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getItemTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDivision()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingDoctor()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSubmittingTime()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    .line 660
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getInspectingDoctor()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getInspectingTime()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getReviewer()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getNote()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x10

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getAge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x11

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12

    aput-object v3, v2, v4

    .line 661
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x13

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x15

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getTestTemp()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0x16

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getTestMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x17

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x18

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x19

    aput-object v3, v2, v4

    .line 662
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getItemcount()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1b

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getHolder1()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0x1c

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getHolder2()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1d

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getHolder3()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1e

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getHolder4()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getHolder5()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getUser()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x21

    aput-object v3, v2, v4

    .line 663
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getAppId()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getUploadStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x23

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x25

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getHolder6()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x26

    aput-object v3, v2, v4

    .line 664
    .local v2, "values":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    return-void
.end method

.method public addUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "Pwd"    # Ljava/lang/String;
    .param p3, "Mode"    # I

    .line 2284
    const-string v0, "select * from User where userName=\'%s\'"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2285
    .local v0, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v4, v2

    .line 2287
    .local v4, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v4, v2

    .line 2288
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 2289
    nop

    .line 2297
    if-eqz v4, :cond_0

    .line 2298
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2289
    :cond_0
    return v3

    .line 2291
    :cond_1
    :try_start_1
    const-string v2, "insert into User(userName,password,mode) values(\'%s\',\'%s\',\'%s\')"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v1

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2292
    .local v2, "sql2":Ljava/lang/String;
    iget-object v3, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2297
    .end local v2    # "sql2":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 2298
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2297
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2294
    :catch_0
    move-exception v2

    .line 2295
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2297
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_2

    goto :goto_0

    .line 2301
    :cond_2
    :goto_1
    return v1

    .line 2297
    :goto_2
    if-eqz v4, :cond_3

    .line 2298
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public closeDB()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/wen/fluorescence/database/DBManager;->helper:Lcom/wen/fluorescence/database/DBHelper;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/wen/fluorescence/database/DBManager;->helper:Lcom/wen/fluorescence/database/DBHelper;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/DBHelper;->close()V

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/database/DBManager;->helper:Lcom/wen/fluorescence/database/DBHelper;

    .line 58
    sput-object v0, Lcom/wen/fluorescence/database/DBManager;->dbm:Lcom/wen/fluorescence/database/DBManager;

    .line 59
    return-void
.end method

.method public deleteAllNormalUser()V
    .locals 2

    .line 2323
    const-string v0, "delete from User where mode = 2"

    .line 2324
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2325
    return-void
.end method

.method public deleteEquation(Ljava/lang/String;)V
    .locals 4
    .param p1, "barCode"    # Ljava/lang/String;

    .line 1996
    const-string v0, "delete from Equation where m_barCode = ? "

    .line 1997
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1998
    return-void
.end method

.method public deleteIDChipInfoExN(Ljava/lang/String;)V
    .locals 4
    .param p1, "barCode"    # Ljava/lang/String;

    .line 1990
    const-string v0, "delete from IDChipInfoExN where m_barCode = ? "

    .line 1991
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1992
    return-void
.end method

.method public deleteIDChipInfoN(Ljava/lang/String;)V
    .locals 4
    .param p1, "barCode"    # Ljava/lang/String;

    .line 1984
    const-string v0, "delete from IDChipInfoN where new_barCode = ? "

    .line 1985
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1986
    return-void
.end method

.method public deleteMinTestResult(I)V
    .locals 11
    .param p1, "count"    # I

    .line 1822
    const-string v0, "select serialNumber from TestResult limit ? offset 0"

    .line 1823
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1824
    .local v1, "c":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1825
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1826
    .local v5, "start":J
    if-eqz v1, :cond_0

    .line 1827
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1828
    const-string v3, "serialNumber"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1831
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1832
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1834
    :cond_1
    nop

    .line 1834
    .local v4, "i":I
    :goto_1
    move v3, v4

    .line 1834
    .end local v4    # "i":I
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1835
    const-string v4, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delete:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/wen/fluorescence/database/DBManager;->deleteTestResultBySerialNumber(Ljava/lang/String;)V

    .line 1834
    add-int/lit8 v4, v3, 0x1

    .line 1834
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 1840
    .end local v4    # "i":I
    :cond_2
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeleteSuccess:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v9, v7, v5

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    return-void
.end method

.method public deleteOriResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "serialNumber"    # Ljava/lang/String;

    .line 1360
    const-string v0, "DELETE FROM OriResult WHERE serialNumber = \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1361
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1364
    return-void
.end method

.method public deleteRawData(Ljava/lang/String;)V
    .locals 3
    .param p1, "serialNumber"    # Ljava/lang/String;

    .line 1367
    const-string v0, "DELETE FROM RawData WHERE serialNumber = \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1369
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1370
    return-void
.end method

.method public deleteSelectedUser(Ljava/lang/String;)V
    .locals 3
    .param p1, "userName"    # Ljava/lang/String;

    .line 2328
    const-string v0, "DELETE FROM User WHERE userName = \'%s\'and mode > 1"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2329
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2330
    return-void
.end method

.method public deleteTestResultBySerialNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "serialNumber"    # Ljava/lang/String;

    .line 1351
    const-string v0, "DELETE FROM TestResult WHERE serialNumber = \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1354
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/database/DBManager;->deleteOriResult(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/database/DBManager;->deleteRawData(Ljava/lang/String;)V

    .line 1357
    return-void
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getItemCount(Ljava/lang/String;)I
    .locals 5
    .param p1, "serialNumber"    # Ljava/lang/String;

    .line 674
    const-string v0, "select count(id) from  TestResult where serialNumber = ?"

    .line 675
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 676
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 677
    .local v2, "count":I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 678
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 680
    :cond_0
    return v2
.end method

.method public getMaxSampleNumber()I
    .locals 11

    .line 1430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1431
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/wen/fluorescence/util/DateUtils;

    invoke-direct {v1}, Lcom/wen/fluorescence/util/DateUtils;-><init>()V

    .line 1432
    .local v1, "du":Lcom/wen/fluorescence/util/DateUtils;
    const-string v2, "yyyy-MM-dd"

    invoke-static {v2}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1433
    .local v2, "today":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1434
    const/4 v3, 0x0

    move-object v4, v3

    .line 1436
    .local v4, "tomorrow":Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_0
    const-string v6, "yyyy-MM-dd"

    .line 1437
    invoke-static {v2, v6}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 1436
    invoke-static {v6, v5}, Lcom/wen/fluorescence/util/DateUtils;->addDateSelf(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v6

    const-string v7, "yyyy-MM-dd"

    invoke-static {v6, v7}, Lcom/wen/fluorescence/util/DateUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 1446
    goto :goto_0

    .line 1439
    :catch_0
    move-exception v6

    .line 1440
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1442
    const-string v7, "yyyy-MM-dd"

    invoke-static {v7}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1443
    const-string v7, "yyyy-MM-dd"

    .line 1444
    invoke-static {v2, v7}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 1443
    invoke-static {v7, v5}, Lcom/wen/fluorescence/util/DateUtils;->addDateSelf(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v7

    const-string v8, "yyyy-MM-dd"

    invoke-static {v7, v8}, Lcom/wen/fluorescence/util/DateUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1447
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 00:00:00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1451
    const-string v6, "SELECT sampleNumber FROM TestResult WHERE testtime < \'%s\' AND testtime > \'%s\'"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    aput-object v2, v7, v5

    .line 1452
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1454
    .local v5, "sql":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1455
    .local v6, "c":Landroid/database/Cursor;
    move v7, v8

    .line 1457
    .local v7, "max":I
    :try_start_1
    iget-object v9, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v6, v3

    .line 1458
    const-string v3, ""

    .line 1459
    .local v3, "number":Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1461
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    .line 1462
    .local v9, "name":Ljava/lang/String;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v10

    .line 1464
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1465
    .local v10, "num":I
    if-gt v7, v10, :cond_0

    .line 1466
    move v7, v10

    .line 1471
    .end local v10    # "num":I
    :cond_0
    nop

    .line 1472
    .end local v9    # "name":Ljava/lang/String;
    goto :goto_1

    .line 1469
    .restart local v9    # "name":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1470
    .local v10, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1475
    .end local v3    # "number":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v6, :cond_3

    .line 1476
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1475
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_2

    .line 1476
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    .line 1473
    :catch_2
    move-exception v3

    .line 1475
    if-eqz v6, :cond_3

    goto :goto_2

    .line 1479
    :cond_3
    :goto_3
    return v7
.end method

.method public getMaxSerialNumber()I
    .locals 11

    .line 1379
    new-instance v0, Lcom/wen/fluorescence/util/DateUtils;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/DateUtils;-><init>()V

    .line 1380
    .local v0, "du":Lcom/wen/fluorescence/util/DateUtils;
    const-string v1, "yyyy-MM-dd"

    invoke-static {v1}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1381
    .local v1, "today":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1382
    const/4 v2, 0x0

    move-object v3, v2

    .line 1384
    .local v3, "tomorrow":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    const-string v5, "yyyy-MM-dd"

    .line 1385
    invoke-static {v1, v5}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 1384
    invoke-static {v5, v4}, Lcom/wen/fluorescence/util/DateUtils;->addDateSelf(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v5

    const-string v6, "yyyy-MM-dd"

    invoke-static {v5, v6}, Lcom/wen/fluorescence/util/DateUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 1394
    goto :goto_0

    .line 1387
    :catch_0
    move-exception v5

    .line 1388
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1390
    const-string v6, "yyyy-MM-dd"

    invoke-static {v6}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1391
    const-string v6, "yyyy-MM-dd"

    .line 1392
    invoke-static {v1, v6}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 1391
    invoke-static {v6, v4}, Lcom/wen/fluorescence/util/DateUtils;->addDateSelf(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v6

    const-string v7, "yyyy-MM-dd"

    invoke-static {v6, v7}, Lcom/wen/fluorescence/util/DateUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1395
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " 00:00:00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1399
    const-string v5, "SELECT max(serialNumber) FROM TestResult WHERE testtime < \'%s\' AND testtime > \'%s\'"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v1, v6, v4

    .line 1400
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1402
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1403
    .local v5, "c":Landroid/database/Cursor;
    iget-object v6, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1404
    .end local v5    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    const-string v5, ""

    .line 1405
    .local v5, "number":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1407
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    .line 1408
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1409
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1410
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1411
    return v7

    .line 1413
    :cond_0
    const-string v8, "yyyyMMdd"

    invoke-static {v8}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1414
    .local v8, "now":I
    const/16 v9, 0x8

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1415
    .local v10, "get":I
    if-ge v10, v8, :cond_1

    .line 1416
    return v7

    .line 1418
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    return v7

    .line 1420
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "now":I
    .end local v10    # "get":I
    :cond_2
    return v7
.end method

.method public getNoUploadForTestResult(Ljava/lang/String;)I
    .locals 5
    .param p1, "user"    # Ljava/lang/String;

    .line 1854
    const-string v0, "select count(id) from  TestResult where uploadStatus = 0"

    .line 1855
    .local v0, "sql":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and user = \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1858
    :cond_0
    const-string v1, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sql: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1860
    .local v1, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1861
    .local v3, "count":I
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1862
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1864
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1865
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1867
    :cond_2
    return v3
.end method

.method public getNoUploadTestResultData(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation

    .line 1871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1872
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    const-string v1, "select * from  TestResult where uploadStatus = 0"

    .line 1873
    .local v1, "sql":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and user = \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1876
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by testtime desc limit 5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1877
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sql: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const/4 v2, 0x0

    move-object v3, v2

    .line 1880
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 1881
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1882
    invoke-direct {p0, v3}, Lcom/wen/fluorescence/database/DBManager;->parseTestResultFromCursor(Landroid/database/Cursor;)Lcom/wen/fluorescence/database/TestResult;

    move-result-object v2

    .line 1883
    .local v2, "result":Lcom/wen/fluorescence/database/TestResult;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1884
    .end local v2    # "result":Lcom/wen/fluorescence/database/TestResult;
    goto :goto_0

    .line 1889
    :cond_1
    if-eqz v3, :cond_2

    .line 1890
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1889
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1885
    :catch_0
    move-exception v2

    .line 1886
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1889
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_2

    goto :goto_1

    .line 1893
    :cond_2
    :goto_2
    return-object v0

    .line 1889
    :goto_3
    if-eqz v3, :cond_3

    .line 1890
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public getOriResultCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .line 882
    const-string v0, "select count(id) from OriResult WHERE time > ? AND time < ?"

    .line 883
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 884
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 885
    .local v2, "result":I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 886
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 888
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 889
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 891
    :cond_1
    return v2
.end method

.method public getTestResultCount()I
    .locals 4

    .line 1812
    const-string v0, "select count(id) from TestResult"

    .line 1813
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1814
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1815
    .local v2, "lsReturn":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1816
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1818
    :cond_0
    return v2
.end method

.method public getTestResultCountByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;)I
    .locals 7
    .param p1, "trc"    # Lcom/wen/fluorescence/database/TestResultCondition;
    .param p2, "user"    # Ljava/lang/String;

    .line 1107
    const-string v0, "SELECT count(id) FROM TestResult WHERE"

    .line 1108
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getSampleNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sampleNumber LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getSampleNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\' and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1111
    :cond_0
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " name LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\' and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1116
    :cond_1
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getPatientNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " patientNumber = \'%s\' and "

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getPatientNo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1120
    :cond_2
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " inspectingDoctor = \'%s\' and "

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getOperator()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1124
    :cond_3
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getStartTime()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " testtime >= \'%s\' and "

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getStartTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1128
    :cond_4
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getEndTime()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " testtime <= \'%s\' and "

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getEndTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1132
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " user = \'%s\' and "

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    :cond_6
    const-string v1, "and"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WHERE"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ORDER BY testtime DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1138
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ORDER BY testtime DESC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1140
    :goto_0
    const-string v1, "asd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listData:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const/4 v1, 0x0

    .line 1142
    .local v1, "c":Landroid/database/Cursor;
    move v2, v3

    .line 1144
    .local v2, "count":I
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    .line 1145
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1146
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1152
    :cond_8
    if-eqz v1, :cond_9

    .line 1153
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1152
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 1148
    :catch_0
    move-exception v3

    .line 1149
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1152
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_9

    goto :goto_1

    .line 1156
    :cond_9
    :goto_2
    return v2

    .line 1152
    :goto_3
    if-eqz v1, :cond_a

    .line 1153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3
.end method

.method public getTestResultCountForQCHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;
    .param p3, "logNO"    # Ljava/lang/String;

    .line 1255
    const-string v0, "select count(id) from  TestResult where testtime < ? and testtime > ? and logNO = ? and simpleType = ?"

    .line 1256
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 v4, 0x2

    aput-object p3, v2, v4

    const-string v4, "QC"

    const/4 v5, 0x3

    aput-object v4, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1257
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1258
    .local v2, "count":I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1259
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1261
    :cond_0
    return v2
.end method

.method public getTestResultCountHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;
    .param p3, "simpleType"    # Ljava/lang/String;

    .line 871
    const-string v0, "select count(id) from  TestResult where testtime < ? and testtime > ? and simpleType = ?"

    .line 872
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 v4, 0x2

    aput-object p3, v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 873
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 874
    .local v2, "count":I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 875
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 877
    :cond_0
    return v2
.end method

.method public getTestResultCountHistoryUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;

    .line 838
    const-string v0, "select count(id) from  TestResult where testtime < ? and testtime > ?"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, "sql":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and user = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    :cond_0
    const/4 v2, 0x0

    .line 843
    .local v2, "count":I
    const/4 v3, 0x0

    .line 845
    .local v3, "c":Landroid/database/Cursor;
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p3, :cond_1

    .line 846
    :try_start_0
    iget-object v6, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object p1, v7, v1

    aput-object p2, v7, v5

    aput-object p3, v7, v4

    invoke-virtual {v6, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 858
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 854
    :catch_0
    move-exception v1

    goto :goto_2

    .line 848
    :cond_1
    iget-object v6, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    aput-object p2, v4, v5

    invoke-virtual {v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 851
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 852
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    .end local v2    # "count":I
    .local v1, "count":I
    move v2, v1

    .line 858
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_2
    if-eqz v3, :cond_3

    .line 859
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 854
    :goto_2
    nop

    .line 855
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 856
    const-string v4, "db->"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_3

    goto :goto_1

    .line 862
    :cond_3
    :goto_3
    return v2

    .line 858
    :goto_4
    if-eqz v3, :cond_4

    .line 859
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public initItemParas()V
    .locals 0

    .line 269
    return-void
.end method

.method public initYRItemParas()V
    .locals 14

    .line 75
    const-string v1, "CRP"

    const-string v2, "I4"

    const-string v3, "0"

    const-string v4, "0.0"

    const-string v5, "1.0"

    const-string v6, "mg/L"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v8, "PCT"

    const-string v9, "I2"

    const-string v10, "0"

    const-string v11, "0.0"

    const-string v12, "0.5"

    const-string v13, "ng/mL"

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "cTnI"

    const-string v2, "C2"

    const-string v3, "0"

    const-string v4, "0.0"

    const-string v5, "0.3"

    const-string v6, "ng/mL"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v8, "NT-proBNP"

    const-string v9, "C3"

    const-string v10, "0"

    const-string v11, "0.0"

    const-string v12, "300.0"

    const-string v13, "pg/mL"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "D-Dimer"

    const-string v2, "C6"

    const-string v3, "0"

    const-string v4, "0.0"

    const-string v5, "0.5"

    const-string v6, "mg/L"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v8, "Myo"

    const-string v9, "C1"

    const-string v10, "0"

    const-string v11, "0.0"

    const-string v12, "80.0"

    const-string v13, "ng/mL"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "CK-MB"

    const-string v2, "C7"

    const-string v3, "0"

    const-string v4, "0.0"

    const-string v5, "5.0"

    const-string v6, "mg/L"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v8, "\u03b2-HCG"

    const-string v9, "H1"

    const-string v10, "0"

    const-string v11, "0.0"

    const-string v12, "5.0"

    const-string v13, "mIU/mL"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "HbA1c"

    const-string v2, "G1"

    const-string v3, "0"

    const-string v4, "4.0"

    const-string v5, "6.0"

    const-string v6, "%"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v8, "TSH"

    const-string v9, "H2"

    const-string v10, "0"

    const-string v11, "0.3"

    const-string v12, "4.2"

    const-string v13, "mIU/L"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "T3"

    const-string v2, "H3"

    const-string v3, "0"

    const-string v4, "1.23"

    const-string v5, "3.07"

    const-string v6, "nmol/L"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v8, "T4"

    const-string v9, "H4"

    const-string v10, "0"

    const-string v11, "66"

    const-string v12, "181"

    const-string v13, "nmol/L"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "IL-6"

    const-string v2, "-"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "10"

    const-string v6, "pg/mL"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v8, "SAA"

    const-string v9, "-"

    const-string v10, "0"

    const-string v11, "0"

    const-string v12, "10"

    const-string v13, "mg/L"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "PCT/IL-6"

    const-string v2, "I1"

    const-string v3, "0"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "-"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v8, "CRP/SAA"

    const-string v9, "I3"

    const-string v10, "0"

    const-string v11, ""

    const-string v12, ""

    const-string v13, "-"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "cTnI/CK-MB/Myo"

    const-string v2, "C8"

    const-string v3, "0"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "-"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v8, "CRP"

    const-string v9, "I4"

    const-string v10, "1"

    const-string v11, "0.0"

    const-string v12, "1.0"

    const-string v13, "mg/L"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "PCT"

    const-string v2, "I2"

    const-string v3, "1"

    const-string v4, "0.0"

    const-string v5, "0.5"

    const-string v6, "ng/mL"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v8, "cTnI"

    const-string v9, "C2"

    const-string v10, "1"

    const-string v11, "0.0"

    const-string v12, "0.3"

    const-string v13, "ng/mL"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "NT-proBNP"

    const-string v2, "C3"

    const-string v3, "1"

    const-string v4, "0.0"

    const-string v5, "300.0"

    const-string v6, "pg/mL"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v8, "D-Dimer"

    const-string v9, "C6"

    const-string v10, "1"

    const-string v11, "0.0"

    const-string v12, "0.5"

    const-string v13, "mg/L"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "Myo"

    const-string v2, "C1"

    const-string v3, "1"

    const-string v4, "0.0"

    const-string v5, "80.0"

    const-string v6, "ng/mL"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v8, "CK-MB"

    const-string v9, "C7"

    const-string v10, "1"

    const-string v11, "0.0"

    const-string v12, "5.0"

    const-string v13, "mg/L"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "\u03b2-HCG"

    const-string v2, "H1"

    const-string v3, "1"

    const-string v4, "0.0"

    const-string v5, "5.0"

    const-string v6, "mIU/mL"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v8, "HbA1c"

    const-string v9, "G1"

    const-string v10, "1"

    const-string v11, "4.0"

    const-string v12, "6.0"

    const-string v13, "%"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "TSH"

    const-string v2, "H2"

    const-string v3, "1"

    const-string v4, "0.3"

    const-string v5, "4.2"

    const-string v6, "mIU/L"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v8, "T3"

    const-string v9, "H3"

    const-string v10, "1"

    const-string v11, "1.23"

    const-string v12, "3.07"

    const-string v13, "nmol/L"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "T4"

    const-string v2, "H4"

    const-string v3, "1"

    const-string v4, "66"

    const-string v5, "181"

    const-string v6, "nmol/L"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v8, "IL-6"

    const-string v9, "-"

    const-string v10, "1"

    const-string v11, "0"

    const-string v12, "10"

    const-string v13, "pg/mL"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "SAA"

    const-string v2, "-"

    const-string v3, "1"

    const-string v4, "0"

    const-string v5, "10"

    const-string v6, "mg/L"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v8, "PCT/IL-6"

    const-string v9, "I1"

    const-string v10, "1"

    const-string v11, ""

    const-string v12, ""

    const-string v13, "-"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "CRP/SAA"

    const-string v2, "I3"

    const-string v3, "1"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "-"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v8, "cTnI/CK-MB/Myo"

    const-string v9, "C8"

    const-string v10, "1"

    const-string v11, ""

    const-string v12, ""

    const-string v13, "-"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public loginCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .line 2357
    const-string v0, "select * from User where userName = ? and password =  ?"

    .line 2358
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2359
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    move v3, v2

    .line 2361
    .local v3, "flag":Z
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v2

    const/4 v2, 0x1

    aput-object p2, v5, v2

    invoke-virtual {v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 2362
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 2363
    const/4 v2, 0x1

    .line 2370
    .end local v3    # "flag":Z
    .local v2, "flag":Z
    :goto_0
    move v3, v2

    goto :goto_1

    .line 2365
    .end local v2    # "flag":Z
    .restart local v3    # "flag":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2370
    :goto_1
    if-eqz v1, :cond_1

    .line 2371
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 2370
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 2367
    :catch_0
    move-exception v2

    .line 2368
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2370
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    goto :goto_2

    .line 2374
    :cond_1
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 2370
    :goto_4
    if-eqz v1, :cond_2

    .line 2371
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public lotNumToBarcode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "logNo"    # Ljava/lang/String;

    .line 2001
    const-string v0, "select new_barCode from IDChipInfoN where new_logNo = ?  COLLATE NOCASE;"

    .line 2002
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2003
    .local v1, "c":Landroid/database/Cursor;
    const-string v2, ""

    .line 2005
    .local v2, "barCode":Ljava/lang/String;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2006
    const-string v3, "new_barCode"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 2011
    :cond_0
    if-eqz v1, :cond_1

    .line 2012
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2011
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 2008
    :catch_0
    move-exception v3

    .line 2009
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2011
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 2015
    :cond_1
    :goto_1
    return-object v2

    .line 2011
    :goto_2
    if-eqz v1, :cond_2

    .line 2012
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public modifyUserByName(Lcom/wen/fluorescence/bean/User;)V
    .locals 4
    .param p1, "user"    # Lcom/wen/fluorescence/bean/User;

    .line 2311
    :try_start_0
    const-string v0, "update User set password = \'%s\' where userName = \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2313
    invoke-virtual {p1}, Lcom/wen/fluorescence/bean/User;->getPasssword()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/wen/fluorescence/bean/User;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2312
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2314
    .local v0, "sql":Ljava/lang/String;
    const-string v1, "ad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyUserByName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2318
    .end local v0    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 2316
    :catch_0
    move-exception v0

    .line 2317
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 2319
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryAllIDChipInfoN()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/bean/IDChipInfoN;",
            ">;"
        }
    .end annotation

    .line 2085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2086
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/IDChipInfoN;>;"
    const-string v1, "select * from IDChipInfoN;"

    .line 2087
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 2089
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 2090
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2091
    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoN(Landroid/database/Cursor;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v2

    .line 2092
    .local v2, "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfoN;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2093
    .end local v2    # "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfoN;
    goto :goto_0

    .line 2097
    :cond_0
    if-eqz v3, :cond_1

    .line 2098
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2097
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 2094
    :catch_0
    move-exception v2

    .line 2095
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2097
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    goto :goto_1

    .line 2101
    :cond_1
    :goto_2
    return-object v0

    .line 2097
    :goto_3
    if-eqz v3, :cond_2

    .line 2098
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public queryAllIDChipInfoNDesc()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/bean/IDChipInfoN;",
            ">;"
        }
    .end annotation

    .line 2106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2107
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/IDChipInfoN;>;"
    const-string v1, "select * from IDChipInfoN order by id desc;"

    .line 2108
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 2110
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 2111
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2112
    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoN(Landroid/database/Cursor;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v2

    .line 2113
    .local v2, "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfoN;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2114
    .end local v2    # "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfoN;
    goto :goto_0

    .line 2118
    :cond_0
    if-eqz v3, :cond_1

    .line 2119
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2118
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 2115
    :catch_0
    move-exception v2

    .line 2116
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2118
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    goto :goto_1

    .line 2122
    :cond_1
    :goto_2
    return-object v0

    .line 2118
    :goto_3
    if-eqz v3, :cond_2

    .line 2119
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public queryAllUser()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/bean/User;",
            ">;"
        }
    .end annotation

    .line 2256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2257
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/User;>;"
    const-string v1, "select * from User"

    .line 2258
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 2260
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 2261
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2262
    new-instance v2, Lcom/wen/fluorescence/bean/User;

    invoke-direct {v2}, Lcom/wen/fluorescence/bean/User;-><init>()V

    .line 2263
    .local v2, "user":Lcom/wen/fluorescence/bean/User;
    const-string v4, "id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/bean/User;->setId(I)V

    .line 2264
    const-string v4, "userName"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/bean/User;->setName(Ljava/lang/String;)V

    .line 2265
    const-string v4, "password"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/bean/User;->setPasssword(Ljava/lang/String;)V

    .line 2266
    const-string v4, "mode"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/bean/User;->setMode(I)V

    .line 2267
    invoke-virtual {v2}, Lcom/wen/fluorescence/bean/User;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "admin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2270
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2272
    .end local v2    # "user":Lcom/wen/fluorescence/bean/User;
    goto :goto_0

    .line 2276
    :cond_0
    if-eqz v3, :cond_1

    .line 2277
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2276
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 2273
    :catch_0
    move-exception v2

    .line 2274
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2276
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    goto :goto_1

    .line 2280
    :cond_1
    :goto_2
    return-object v0

    .line 2276
    :goto_3
    if-eqz v3, :cond_2

    .line 2277
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public queryCRPorHSCRP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "serial"    # Ljava/lang/String;
    .param p2, "oril"    # Ljava/lang/String;

    .line 1331
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1332
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "SELECT item,result FROM TestResult WHERE serialNumber = \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1335
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1336
    .local v2, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1337
    const-string v3, "item"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1338
    const-string v3, "item"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1339
    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1340
    const-string v3, "result"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1343
    :cond_1
    if-eqz v2, :cond_2

    .line 1344
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1346
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public queryEquation(Landroid/database/Cursor;)Lcom/wen/fluorescence/bean/Equation;
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;

    .line 2229
    new-instance v0, Lcom/wen/fluorescence/bean/Equation;

    invoke-direct {v0}, Lcom/wen/fluorescence/bean/Equation;-><init>()V

    .line 2230
    .local v0, "equation":Lcom/wen/fluorescence/bean/Equation;
    const-string v1, "ItemIndex"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/Equation;->ItemIndex:I

    .line 2231
    const-string v1, "flag"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/Equation;->flag:I

    .line 2232
    const-string v1, "m_barCode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wen/fluorescence/bean/Equation;->m_barCode:Ljava/lang/String;

    .line 2233
    const-string v1, "customerCode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/Equation;->customerCode:I

    .line 2234
    const-string v1, "childCustomerCode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/Equation;->childCustomerCode:I

    .line 2235
    const-string v1, "E1_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/wen/fluorescence/bean/Equation;->E1_1:D

    .line 2236
    const-string v1, "E1_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/wen/fluorescence/bean/Equation;->E1_2:D

    .line 2237
    const-string v1, "E1_3"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/wen/fluorescence/bean/Equation;->E1_3:D

    .line 2238
    const-string v1, "E1_4"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/wen/fluorescence/bean/Equation;->E1_4:D

    .line 2239
    const-string v1, "E1_5"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/wen/fluorescence/bean/Equation;->E1_5:D

    .line 2240
    const-string v1, "E1_6"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/wen/fluorescence/bean/Equation;->E1_6:D

    .line 2241
    const-string v1, "E2_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/wen/fluorescence/bean/Equation;->E2_1:D

    .line 2242
    const-string v1, "E2_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/wen/fluorescence/bean/Equation;->E2_2:D

    .line 2243
    const-string v1, "E2_3"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/wen/fluorescence/bean/Equation;->E2_3:D

    .line 2244
    const-string v1, "E2_4"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/wen/fluorescence/bean/Equation;->E2_4:D

    .line 2245
    const-string v1, "E2_5"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/wen/fluorescence/bean/Equation;->E2_5:D

    .line 2246
    const-string v1, "E2_6"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/wen/fluorescence/bean/Equation;->E2_6:D

    .line 2247
    return-object v0
.end method

.method public queryEquationForBarCode(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "barCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/bean/Equation;",
            ">;"
        }
    .end annotation

    .line 2064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2065
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/Equation;>;"
    const-string v1, "select * from Equation where m_barCode = ?;"

    .line 2066
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2068
    .local v2, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2069
    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/database/DBManager;->queryEquation(Landroid/database/Cursor;)Lcom/wen/fluorescence/bean/Equation;

    move-result-object v3

    .line 2070
    .local v3, "equation":Lcom/wen/fluorescence/bean/Equation;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2071
    .end local v3    # "equation":Lcom/wen/fluorescence/bean/Equation;
    goto :goto_0

    .line 2075
    :cond_0
    if-eqz v2, :cond_1

    .line 2076
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2075
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 2072
    :catch_0
    move-exception v3

    .line 2073
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2075
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    goto :goto_1

    .line 2079
    :cond_1
    :goto_2
    return-object v0

    .line 2075
    :goto_3
    if-eqz v2, :cond_2

    .line 2076
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public queryGivenFieldDistinceInResult(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1485
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SELECT DISTINCT %s FROM TestResult"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1486
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1487
    .local v2, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1488
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1489
    .local v3, "s":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1490
    goto :goto_0

    .line 1492
    :cond_0
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_1

    .line 1494
    goto :goto_1

    .line 1496
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1497
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 1498
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1500
    :cond_3
    return-object v0
.end method

.method public queryIDChipInfoEXN(Landroid/database/Cursor;)Lcom/wen/fluorescence/bean/IDChipInfoExN;
    .locals 12
    .param p1, "c"    # Landroid/database/Cursor;

    .line 2183
    new-instance v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;

    invoke-direct {v0}, Lcom/wen/fluorescence/bean/IDChipInfoExN;-><init>()V

    .line 2184
    .local v0, "idChipInfoExN":Lcom/wen/fluorescence/bean/IDChipInfoExN;
    const-string v1, "ItemIndex"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-byte v1, v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->ItemIndex:I

    .line 2185
    const-string v1, "m_projectName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2186
    .local v1, "projectName":Ljava/lang/String;
    invoke-static {v1}, Lcom/wen/fluorescence/util/JsonUtil;->jsonToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    .line 2188
    const-string v2, "FileFlag"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->FileFlag:B

    .line 2189
    const-string v2, "FileVersion"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->FileVersion:B

    .line 2190
    const-string v2, "AlgorithmType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->AlgorithmType:I

    .line 2191
    const-string v2, "m_barCode"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_barCode:Ljava/lang/String;

    .line 2192
    const-string v2, "m_calcMethod"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_calcMethod:I

    .line 2193
    const-string v2, "m_t"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_t:I

    .line 2194
    const-string v2, "m_c"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_c:I

    .line 2195
    const-string v2, "m_projectCount"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectCount:I

    .line 2196
    const-string v2, "m_unit"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_unit:Ljava/lang/String;

    .line 2197
    const-string v2, "m_decimalDigits"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_decimalDigits:I

    .line 2198
    const-string v2, "sampleCoefficientArrays"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2199
    .local v2, "sampleCoefficientStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/wen/fluorescence/util/JsonUtil;->jsonToSampleCoefficient(Ljava/lang/String;)[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    move-result-object v3

    iput-object v3, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    .line 2200
    const-string v3, "m_projectStart"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectStart:I

    .line 2201
    const-string v3, "m_printData"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2202
    .local v3, "m_printData":Ljava/lang/String;
    invoke-static {v3}, Lcom/wen/fluorescence/util/JsonUtil;->jsonToStrTwoArray(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    .line 2203
    const-string v4, "m_testBound"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2204
    .local v4, "m_testBound":Ljava/lang/String;
    invoke-static {v4}, Lcom/wen/fluorescence/util/JsonUtil;->jsonToDoubleTwoArray(Ljava/lang/String;)[[D

    move-result-object v5

    iput-object v5, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    .line 2205
    const-string v5, "thresholdValue"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValue:D

    .line 2206
    const-string v5, "thresholdValueResult"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2207
    .local v5, "threshold":Ljava/lang/String;
    invoke-static {v5}, Lcom/wen/fluorescence/util/JsonUtil;->jsonToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValueResult:[Ljava/lang/String;

    .line 2208
    const-string v6, "conclusionCounts"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->conclusionCounts:I

    .line 2209
    const-string v6, "intervalDensity"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2210
    .local v6, "intervalDensity":Ljava/lang/String;
    invoke-static {v6}, Lcom/wen/fluorescence/util/JsonUtil;->jsonToDoubleArray(Ljava/lang/String;)[D

    move-result-object v7

    iput-object v7, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->intervalDensity:[D

    .line 2211
    const-string v7, "resultOfDensity"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2212
    .local v7, "resultOfDensity":Ljava/lang/String;
    invoke-static {v7}, Lcom/wen/fluorescence/util/JsonUtil;->jsonToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->resultOfDensity:[Ljava/lang/String;

    .line 2213
    const-string v8, "cc"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2214
    .local v8, "cc":Ljava/lang/String;
    invoke-static {v8}, Lcom/wen/fluorescence/util/JsonUtil;->jsonToDoubleArray(Ljava/lang/String;)[D

    move-result-object v9

    iput-object v9, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->cc:[D

    .line 2215
    const-string v9, "tc"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2216
    .local v9, "tc":Ljava/lang/String;
    invoke-static {v9}, Lcom/wen/fluorescence/util/JsonUtil;->jsonToDoubleArray(Ljava/lang/String;)[D

    move-result-object v10

    iput-object v10, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->tc:[D

    .line 2217
    const-string v10, "l_count"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->l_count:I

    .line 2218
    const-string v10, "m_unlog"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_unlog:I

    .line 2219
    const-string v10, "x_isOtherAlglog"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->x_isOtherAlglog:I

    .line 2220
    const-string v10, "y_isOtherAlglog"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->y_isOtherAlglog:I

    .line 2221
    const-string v10, "m_dimension"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimension:I

    .line 2222
    const-string v10, "m_divisionIndex"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_divisionIndex:I

    .line 2223
    const-string v10, "m_dimen"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2224
    .local v10, "m_dimen":Ljava/lang/String;
    invoke-static {v10}, Lcom/wen/fluorescence/util/JsonUtil;->jsonToIntArray(Ljava/lang/String;)[I

    move-result-object v11

    iput-object v11, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimen:[I

    .line 2225
    return-object v0
.end method

.method public queryIDChipInfoExNForBarCode(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "barCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/bean/IDChipInfoExN;",
            ">;"
        }
    .end annotation

    .line 2043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2044
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/IDChipInfoExN;>;"
    const-string v1, "select * from IDChipInfoExN where m_barCode = ?;"

    .line 2045
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2047
    .local v2, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2048
    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoEXN(Landroid/database/Cursor;)Lcom/wen/fluorescence/bean/IDChipInfoExN;

    move-result-object v3

    .line 2049
    .local v3, "idChipInfoExN":Lcom/wen/fluorescence/bean/IDChipInfoExN;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    .end local v3    # "idChipInfoExN":Lcom/wen/fluorescence/bean/IDChipInfoExN;
    goto :goto_0

    .line 2054
    :cond_0
    if-eqz v2, :cond_1

    .line 2055
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2054
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 2051
    :catch_0
    move-exception v3

    .line 2052
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2054
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    goto :goto_1

    .line 2058
    :cond_1
    :goto_2
    return-object v0

    .line 2054
    :goto_3
    if-eqz v2, :cond_2

    .line 2055
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public queryIDChipInfoN(Landroid/database/Cursor;)Lcom/wen/fluorescence/bean/IDChipInfoN;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .line 2126
    new-instance v0, Lcom/wen/fluorescence/bean/IDChipInfoN;

    invoke-direct {v0}, Lcom/wen/fluorescence/bean/IDChipInfoN;-><init>()V

    .line 2127
    .local v0, "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfoN;
    const-string v1, "FileFlag"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->FileFlag:B

    .line 2128
    const-string v1, "FileVersion"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->FileVersion:B

    .line 2129
    const-string v1, "m_barCode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_barCode:Ljava/lang/String;

    .line 2130
    const-string v1, "new_barCode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    .line 2131
    const-string v1, "new_logNo"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_logNo:Ljava/lang/String;

    .line 2132
    const-string v1, "m_ItemCount"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    .line 2133
    const-string v1, "m_countdowntime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_countdowntime:I

    .line 2134
    const-string v1, "s_countdowntime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->s_countdowntime:I

    .line 2135
    const-string v1, "m_title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_title:Ljava/lang/String;

    .line 2136
    const-string v1, "isVisibleResult"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->isVisibleResult:I

    .line 2137
    const-string v1, "isVisibleConclusion"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->isVisibleConclusion:I

    .line 2138
    const-string v1, "lastYear"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastYear:I

    .line 2139
    const-string v1, "lastMonth"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastMonth:I

    .line 2140
    const-string v1, "lastDay"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->lastDay:I

    .line 2141
    const-string v1, "T1_start"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->T1_start:I

    .line 2142
    const-string v1, "T2_start"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->T2_start:I

    .line 2143
    const-string v1, "C_start"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->C_start:I

    .line 2144
    const-string v1, "T1_end"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->T1_end:I

    .line 2145
    const-string v1, "T2_end"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->T2_end:I

    .line 2146
    const-string v1, "C_end"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->C_end:I

    .line 2147
    const-string v1, "X1_start"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->X1_start:I

    .line 2148
    const-string v1, "X2_start"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->X2_start:I

    .line 2149
    const-string v1, "X3_start"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->X3_start:I

    .line 2150
    const-string v1, "X4_start"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->X4_start:I

    .line 2151
    const-string v1, "X1_end"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->X1_end:I

    .line 2152
    const-string v1, "X2_end"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->X2_end:I

    .line 2153
    const-string v1, "X3_end"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->X3_end:I

    .line 2154
    const-string v1, "X4_end"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->X4_end:I

    .line 2155
    const-string v1, "m_T1Pos"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_T1Pos:I

    .line 2156
    const-string v1, "m_T2Pos"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_T2Pos:I

    .line 2157
    const-string v1, "m_CPos"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_CPos:I

    .line 2158
    const-string v1, "m_X1Pos"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_X1Pos:I

    .line 2159
    const-string v1, "m_X2Pos"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_X2Pos:I

    .line 2160
    const-string v1, "m_X3Pos"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_X3Pos:I

    .line 2161
    const-string v1, "m_X4Pos"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_X4Pos:I

    .line 2162
    const-string v1, "m_NumberT1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberT1:I

    .line 2163
    const-string v1, "m_NumberT2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberT2:I

    .line 2164
    const-string v1, "m_NumberC"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberC:I

    .line 2165
    const-string v1, "m_NumberX1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX1:I

    .line 2166
    const-string v1, "m_NumberX2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX2:I

    .line 2167
    const-string v1, "m_NumberX3"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX3:I

    .line 2168
    const-string v1, "m_NumberX4"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_NumberX4:I

    .line 2169
    const-string v1, "isRushTop"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->isRushTop:I

    .line 2170
    const-string v1, "isAddSample"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->isAddSample:I

    .line 2171
    const-string v1, "RushTopName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->RushTopName:I

    .line 2172
    const-string v1, "AddSampleName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->AddSampleName:I

    .line 2173
    const-string v1, "addSample"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->addSample:I

    .line 2174
    const-string v1, "rushTop"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->rushTop:I

    .line 2175
    const-string v1, "qualitativeFlag"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->qualitativeFlag:I

    .line 2176
    const-string v1, "cutBackgroundFlag"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->cutBackgroundFlag:I

    .line 2177
    const-string v1, "cardsCounts"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->cardsCounts:I

    .line 2178
    const-string v1, "toCalcApex"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/bean/IDChipInfoN;->toCalcApex:I

    .line 2179
    return-object v0
.end method

.method public queryIDChipInfoNForBarCode(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;
    .locals 6
    .param p1, "barCode"    # Ljava/lang/String;

    .line 2022
    const/4 v0, 0x0

    .line 2023
    .local v0, "idChipInfo":Lcom/wen/fluorescence/bean/IDChipInfoN;
    const-string v1, "select * from IDChipInfoN where new_barCode = ?;"

    .line 2024
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2027
    .local v2, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2028
    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoN(Landroid/database/Cursor;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 2033
    :cond_0
    if-eqz v2, :cond_1

    .line 2034
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2033
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 2030
    :catch_0
    move-exception v3

    .line 2031
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2033
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    goto :goto_0

    .line 2037
    :cond_1
    :goto_1
    return-object v0

    .line 2033
    :goto_2
    if-eqz v2, :cond_2

    .line 2034
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public queryItemPara(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/ItemPara;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/ItemPara;>;"
    const-string v1, "SELECT * FROM ItemParas WHERE Type = ?"

    .line 409
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    .line 411
    .local v2, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 412
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    new-instance v3, Lcom/wen/fluorescence/database/ItemPara;

    invoke-direct {v3}, Lcom/wen/fluorescence/database/ItemPara;-><init>()V

    .line 414
    .local v3, "ip":Lcom/wen/fluorescence/database/ItemPara;
    const-string v4, "name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setName(Ljava/lang/String;)V

    .line 415
    const-string v4, "code"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setCode(Ljava/lang/String;)V

    .line 416
    const-string v4, "Type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setType(Ljava/lang/String;)V

    .line 417
    const-string v4, "mMin"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setMin(Ljava/lang/String;)V

    .line 418
    const-string v4, "mMax"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setMax(Ljava/lang/String;)V

    .line 419
    const-string v4, "unit"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setUnit(Ljava/lang/String;)V

    .line 421
    const-string v4, "k"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setK(Ljava/lang/String;)V

    .line 422
    const-string v4, "b"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setB(Ljava/lang/String;)V

    .line 423
    const-string v4, "oriTemplate"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setOriTemplate(Ljava/lang/String;)V

    .line 424
    const-string v4, "oriPrintMode"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setOriPrintMode(I)V

    .line 425
    const-string v4, "tarUnit1"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setTarUnit1(Ljava/lang/String;)V

    .line 426
    const-string v4, "tarK1"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setTarK1(Ljava/lang/String;)V

    .line 427
    const-string v4, "tarB1"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setTarB1(Ljava/lang/String;)V

    .line 428
    const-string v4, "tarTemplate1"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setTarTemplate1(Ljava/lang/String;)V

    .line 429
    const-string v4, "tarPrintMode1"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setTarPrintMode1(I)V

    .line 430
    const-string v4, "tarUnit2"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setTarUnit2(Ljava/lang/String;)V

    .line 431
    const-string v4, "tarK2"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setTarK2(Ljava/lang/String;)V

    .line 432
    const-string v4, "tarB2"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setTarB2(Ljava/lang/String;)V

    .line 433
    const-string v4, "tarTemplate2"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setTarTemplate2(Ljava/lang/String;)V

    .line 434
    const-string v4, "tarPrintMode2"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setTarPrintMode2(I)V

    .line 435
    const-string v4, "holder1"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setHolder1(Ljava/lang/String;)V

    .line 436
    const-string v4, "holder2"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/ItemPara;->setHolder2(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v3}, Lcom/wen/fluorescence/database/ItemPara;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "hsCRP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 438
    invoke-interface {v0, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 440
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    .end local v3    # "ip":Lcom/wen/fluorescence/database/ItemPara;
    :goto_1
    goto/16 :goto_0

    .line 447
    :cond_1
    if-eqz v2, :cond_2

    .line 448
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 447
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 443
    :catch_0
    move-exception v3

    .line 444
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_2

    goto :goto_2

    .line 451
    :cond_2
    :goto_3
    return-object v0

    .line 447
    :goto_4
    if-eqz v2, :cond_3

    .line 448
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method public queryItemParaEXT(Ljava/lang/String;Ljava/lang/String;)Lcom/wen/fluorescence/database/ItemParaEXT;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 461
    const-string v0, "SELECT * FROM ItemParasEXT WHERE name = ? and Type = ?"

    .line 462
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 463
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 465
    .local v2, "ip":Lcom/wen/fluorescence/database/ItemParaEXT;
    :try_start_0
    iget-object v3, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 466
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    new-instance v3, Lcom/wen/fluorescence/database/ItemParaEXT;

    invoke-direct {v3}, Lcom/wen/fluorescence/database/ItemParaEXT;-><init>()V

    move-object v2, v3

    .line 468
    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setName(Ljava/lang/String;)V

    .line 469
    const-string v3, "code"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setCode(Ljava/lang/String;)V

    .line 470
    const-string v3, "Type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setType(Ljava/lang/String;)V

    .line 471
    const-string v3, "ManMin"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setManMin(Ljava/lang/String;)V

    .line 472
    const-string v3, "ManMax"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setManMax(Ljava/lang/String;)V

    .line 473
    const-string v3, "WLPMin"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setWLPMin(Ljava/lang/String;)V

    .line 474
    const-string v3, "WLPMax"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setWLPMax(Ljava/lang/String;)V

    .line 475
    const-string v3, "WPLMin"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setWPLMin(Ljava/lang/String;)V

    .line 476
    const-string v3, "WPLMax"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setWPLMax(Ljava/lang/String;)V

    .line 477
    const-string v3, "WHTMin"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setWHTMin(Ljava/lang/String;)V

    .line 478
    const-string v3, "WHTMax"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setWHTMax(Ljava/lang/String;)V

    .line 479
    const-string v3, "WJJMin"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setWJJMin(Ljava/lang/String;)V

    .line 480
    const-string v3, "WJJMax"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setWJJMax(Ljava/lang/String;)V

    .line 481
    const-string v3, "WEXT1Min"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setWEXT1Min(Ljava/lang/String;)V

    .line 482
    const-string v3, "WEXT1Max"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setWEXT1Max(Ljava/lang/String;)V

    .line 483
    const-string v3, "WEXT2Min"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setWEXT2Min(Ljava/lang/String;)V

    .line 484
    const-string v3, "WEXT2Max"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/ItemParaEXT;->setWEXT2Max(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 490
    :cond_0
    if-eqz v1, :cond_1

    .line 491
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 490
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 486
    :catch_0
    move-exception v3

    .line 487
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    goto :goto_1

    .line 494
    :cond_1
    :goto_2
    return-object v2

    .line 490
    :goto_3
    if-eqz v1, :cond_2

    .line 491
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public queryItemParaForName(Ljava/lang/String;)Lcom/wen/fluorescence/database/ItemPara;
    .locals 6
    .param p1, "item"    # Ljava/lang/String;

    .line 1721
    const/4 v0, 0x0

    .line 1722
    .local v0, "ip":Lcom/wen/fluorescence/database/ItemPara;
    const/4 v1, 0x0

    .line 1723
    .local v1, "softType":I
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/Global;->getLanguage()I

    move-result v2

    const v3, 0x1a00001

    if-ne v2, v3, :cond_0

    .line 1724
    const/4 v1, 0x0

    goto :goto_0

    .line 1726
    :cond_0
    const/4 v1, 0x1

    .line 1728
    :goto_0
    const-string v2, "SELECT * FROM ItemParas WHERE Type  =\'%s\' and name =\'%s\' COLLATE NOCASE"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1729
    .local v2, "sql":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v4, v3

    .line 1731
    .local v4, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v4, v3

    .line 1732
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1733
    new-instance v3, Lcom/wen/fluorescence/database/ItemPara;

    invoke-direct {v3}, Lcom/wen/fluorescence/database/ItemPara;-><init>()V

    move-object v0, v3

    .line 1734
    const-string v3, "name"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setName(Ljava/lang/String;)V

    .line 1735
    const-string v3, "code"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setCode(Ljava/lang/String;)V

    .line 1736
    const-string v3, "Type"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setType(Ljava/lang/String;)V

    .line 1737
    const-string v3, "mMin"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setMin(Ljava/lang/String;)V

    .line 1738
    const-string v3, "mMax"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setMax(Ljava/lang/String;)V

    .line 1739
    const-string v3, "unit"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setUnit(Ljava/lang/String;)V

    .line 1741
    const-string v3, "k"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setK(Ljava/lang/String;)V

    .line 1742
    const-string v3, "b"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setB(Ljava/lang/String;)V

    .line 1743
    const-string v3, "oriTemplate"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setOriTemplate(Ljava/lang/String;)V

    .line 1744
    const-string v3, "oriPrintMode"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setOriPrintMode(I)V

    .line 1745
    const-string v3, "tarUnit1"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setTarUnit1(Ljava/lang/String;)V

    .line 1746
    const-string v3, "tarK1"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setTarK1(Ljava/lang/String;)V

    .line 1747
    const-string v3, "tarB1"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setTarB1(Ljava/lang/String;)V

    .line 1748
    const-string v3, "tarTemplate1"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setTarTemplate1(Ljava/lang/String;)V

    .line 1749
    const-string v3, "tarPrintMode1"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setTarPrintMode1(I)V

    .line 1750
    const-string v3, "tarUnit2"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setTarUnit2(Ljava/lang/String;)V

    .line 1751
    const-string v3, "tarK2"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setTarK2(Ljava/lang/String;)V

    .line 1752
    const-string v3, "tarB2"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setTarB2(Ljava/lang/String;)V

    .line 1753
    const-string v3, "tarTemplate2"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setTarTemplate2(Ljava/lang/String;)V

    .line 1754
    const-string v3, "tarPrintMode2"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setTarPrintMode2(I)V

    .line 1755
    const-string v3, "holder1"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setHolder1(Ljava/lang/String;)V

    .line 1756
    const-string v3, "holder2"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/database/ItemPara;->setHolder2(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 1761
    :cond_1
    if-eqz v4, :cond_2

    .line 1762
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1761
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 1758
    :catch_0
    move-exception v3

    .line 1759
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1761
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_2

    goto :goto_2

    .line 1765
    :cond_2
    :goto_3
    return-object v0

    .line 1761
    :goto_4
    if-eqz v4, :cond_3

    .line 1762
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method public queryItemParasExits(Ljava/lang/String;)Z
    .locals 5
    .param p1, "item"    # Ljava/lang/String;

    .line 147
    const-string v0, "SELECT * FROM ItemParas WHERE name =\'%s\' COLLATE NOCASE"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 150
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 152
    return v1

    .line 154
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 155
    return v3
.end method

.method public queryOriResult()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/OriResult;",
            ">;"
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/OriResult;>;"
    const-string v1, "SELECT * FROM OriResult"

    .line 732
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 734
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 735
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    new-instance v2, Lcom/wen/fluorescence/database/OriResult;

    invoke-direct {v2}, Lcom/wen/fluorescence/database/OriResult;-><init>()V

    .line 737
    .local v2, "result":Lcom/wen/fluorescence/database/OriResult;
    const-string v4, "T1"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setT1(Ljava/lang/String;)V

    .line 738
    const-string v4, "T2"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setT2(Ljava/lang/String;)V

    .line 739
    const-string v4, "T3"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setT3(Ljava/lang/String;)V

    .line 740
    const-string v4, "C"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setC(Ljava/lang/String;)V

    .line 741
    const-string v4, "TC1"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setTC1(Ljava/lang/String;)V

    .line 742
    const-string v4, "TC2"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setTC2(Ljava/lang/String;)V

    .line 743
    const-string v4, "TC3"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setTC3(Ljava/lang/String;)V

    .line 744
    const-string v4, "value1"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setValue1(Ljava/lang/String;)V

    .line 745
    const-string v4, "value2"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setValue2(Ljava/lang/String;)V

    .line 746
    const-string v4, "value3"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setValue3(Ljava/lang/String;)V

    .line 747
    const-string v4, "barCode"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setBarCode(Ljava/lang/String;)V

    .line 748
    const-string v4, "time"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setTime(Ljava/lang/String;)V

    .line 749
    const-string v4, "item"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setItem(Ljava/lang/String;)V

    .line 750
    const-string v4, "number"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setNumber(Ljava/lang/String;)V

    .line 751
    const-string v4, "serialNumber"

    .line 752
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 751
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setSerialNumber(Ljava/lang/String;)V

    .line 753
    const-string v4, "calTemp"

    .line 754
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 753
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/wen/fluorescence/database/OriResult;->setCalTemp(D)V

    .line 755
    const-string v4, "startTemp"

    .line 756
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 755
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/wen/fluorescence/database/OriResult;->setStartTemp(D)V

    .line 757
    const-string v4, "endTemp"

    .line 758
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 757
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/wen/fluorescence/database/OriResult;->setEndTemp(D)V

    .line 759
    const-string v4, "ID_Type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setID_Type(I)V

    .line 760
    const-string v4, "testMode"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setTestMode(I)V

    .line 761
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    .end local v2    # "result":Lcom/wen/fluorescence/database/OriResult;
    goto/16 :goto_0

    .line 767
    :cond_0
    if-eqz v3, :cond_1

    .line 768
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 767
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 763
    :catch_0
    move-exception v2

    .line 764
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 767
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    goto :goto_1

    .line 772
    :cond_1
    :goto_2
    return-object v0

    .line 767
    :goto_3
    if-eqz v3, :cond_2

    .line 768
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public queryOriResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/OriResult;",
            ">;"
        }
    .end annotation

    .line 988
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/OriResult;>;"
    const-string v1, "SELECT * FROM OriResult WHERE time < \'%s\' AND time > \'%s\' ORDER BY id DESC"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 990
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 992
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 994
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 995
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    new-instance v2, Lcom/wen/fluorescence/database/OriResult;

    invoke-direct {v2}, Lcom/wen/fluorescence/database/OriResult;-><init>()V

    .line 997
    .local v2, "result":Lcom/wen/fluorescence/database/OriResult;
    const-string v4, "T1"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setT1(Ljava/lang/String;)V

    .line 998
    const-string v4, "T2"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setT2(Ljava/lang/String;)V

    .line 999
    const-string v4, "T3"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setT3(Ljava/lang/String;)V

    .line 1000
    const-string v4, "C"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setC(Ljava/lang/String;)V

    .line 1001
    const-string v4, "TC1"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setTC1(Ljava/lang/String;)V

    .line 1002
    const-string v4, "TC2"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setTC2(Ljava/lang/String;)V

    .line 1003
    const-string v4, "TC3"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setTC3(Ljava/lang/String;)V

    .line 1004
    const-string v4, "value1"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setValue1(Ljava/lang/String;)V

    .line 1005
    const-string v4, "value2"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setValue2(Ljava/lang/String;)V

    .line 1006
    const-string v4, "value3"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setValue3(Ljava/lang/String;)V

    .line 1007
    const-string v4, "barCode"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setBarCode(Ljava/lang/String;)V

    .line 1008
    const-string v4, "time"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setTime(Ljava/lang/String;)V

    .line 1009
    const-string v4, "item"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setItem(Ljava/lang/String;)V

    .line 1010
    const-string v4, "number"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setNumber(Ljava/lang/String;)V

    .line 1011
    const-string v4, "serialNumber"

    .line 1012
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1011
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setSerialNumber(Ljava/lang/String;)V

    .line 1013
    const-string v4, "calTemp"

    .line 1014
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1013
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/wen/fluorescence/database/OriResult;->setCalTemp(D)V

    .line 1015
    const-string v4, "startTemp"

    .line 1016
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1015
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/wen/fluorescence/database/OriResult;->setStartTemp(D)V

    .line 1017
    const-string v4, "endTemp"

    .line 1018
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1017
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/wen/fluorescence/database/OriResult;->setEndTemp(D)V

    .line 1019
    const-string v4, "ID_Type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setID_Type(I)V

    .line 1020
    const-string v4, "testMode"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/OriResult;->setTestMode(I)V

    .line 1021
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    .end local v2    # "result":Lcom/wen/fluorescence/database/OriResult;
    goto/16 :goto_0

    .line 1027
    :cond_0
    if-eqz v3, :cond_1

    .line 1028
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1027
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1023
    :catch_0
    move-exception v2

    .line 1024
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    goto :goto_1

    .line 1032
    :cond_1
    :goto_2
    return-object v0

    .line 1027
    :goto_3
    if-eqz v3, :cond_2

    .line 1028
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public queryOriResultByLimit(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;
    .param p3, "limit"    # I
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/OriResult;",
            ">;"
        }
    .end annotation

    .line 896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 897
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/OriResult;>;"
    const-string v1, "SELECT * from OriResult  WHERE time > ? AND time < ? LIMIT ? OFFSET ?;"

    .line 901
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 903
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 904
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 901
    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 905
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 906
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 907
    new-instance v3, Lcom/wen/fluorescence/database/OriResult;

    invoke-direct {v3}, Lcom/wen/fluorescence/database/OriResult;-><init>()V

    .line 908
    .local v3, "result":Lcom/wen/fluorescence/database/OriResult;
    const-string v4, "T1"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setT1(Ljava/lang/String;)V

    .line 909
    const-string v4, "T2"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setT2(Ljava/lang/String;)V

    .line 910
    const-string v4, "T3"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setT3(Ljava/lang/String;)V

    .line 911
    const-string v4, "C"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setC(Ljava/lang/String;)V

    .line 912
    const-string v4, "TC1"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setTC1(Ljava/lang/String;)V

    .line 913
    const-string v4, "TC2"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setTC2(Ljava/lang/String;)V

    .line 914
    const-string v4, "TC3"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setTC3(Ljava/lang/String;)V

    .line 915
    const-string v4, "value1"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setValue1(Ljava/lang/String;)V

    .line 916
    const-string v4, "value2"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setValue2(Ljava/lang/String;)V

    .line 917
    const-string v4, "value3"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setValue3(Ljava/lang/String;)V

    .line 918
    const-string v4, "barCode"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setBarCode(Ljava/lang/String;)V

    .line 919
    const-string v4, "time"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setTime(Ljava/lang/String;)V

    .line 920
    const-string v4, "item"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setItem(Ljava/lang/String;)V

    .line 921
    const-string v4, "number"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setNumber(Ljava/lang/String;)V

    .line 922
    const-string v4, "serialNumber"

    .line 923
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 922
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setSerialNumber(Ljava/lang/String;)V

    .line 924
    const-string v4, "calTemp"

    .line 925
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 924
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/wen/fluorescence/database/OriResult;->setCalTemp(D)V

    .line 926
    const-string v4, "startTemp"

    .line 927
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 926
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/wen/fluorescence/database/OriResult;->setStartTemp(D)V

    .line 928
    const-string v4, "endTemp"

    .line 929
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 928
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/wen/fluorescence/database/OriResult;->setEndTemp(D)V

    .line 930
    const-string v4, "ID_Type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setID_Type(I)V

    .line 931
    const-string v4, "testMode"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/database/OriResult;->setTestMode(I)V

    .line 932
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    .end local v3    # "result":Lcom/wen/fluorescence/database/OriResult;
    goto/16 :goto_0

    .line 935
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 936
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 938
    :cond_1
    return-object v0
.end method

.method public queryOriResultBySerial(Ljava/lang/String;)Lcom/wen/fluorescence/database/OriResult;
    .locals 6
    .param p1, "serialNumber"    # Ljava/lang/String;

    .line 943
    const-string v0, "SELECT * FROM OriResult WHERE serialNumber = \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 947
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    move-object v3, v2

    .line 949
    .local v3, "result":Lcom/wen/fluorescence/database/OriResult;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 950
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 951
    new-instance v2, Lcom/wen/fluorescence/database/OriResult;

    invoke-direct {v2}, Lcom/wen/fluorescence/database/OriResult;-><init>()V

    move-object v3, v2

    .line 952
    const-string v2, "T1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setT1(Ljava/lang/String;)V

    .line 953
    const-string v2, "T2"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setT2(Ljava/lang/String;)V

    .line 954
    const-string v2, "T3"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setT3(Ljava/lang/String;)V

    .line 955
    const-string v2, "C"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setC(Ljava/lang/String;)V

    .line 956
    const-string v2, "TC1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setTC1(Ljava/lang/String;)V

    .line 957
    const-string v2, "TC2"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setTC2(Ljava/lang/String;)V

    .line 958
    const-string v2, "TC3"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setTC3(Ljava/lang/String;)V

    .line 959
    const-string v2, "value1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setValue1(Ljava/lang/String;)V

    .line 960
    const-string v2, "value2"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setValue2(Ljava/lang/String;)V

    .line 961
    const-string v2, "value3"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setValue3(Ljava/lang/String;)V

    .line 962
    const-string v2, "barCode"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setBarCode(Ljava/lang/String;)V

    .line 963
    const-string v2, "time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setTime(Ljava/lang/String;)V

    .line 964
    const-string v2, "item"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setItem(Ljava/lang/String;)V

    .line 965
    const-string v2, "number"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setNumber(Ljava/lang/String;)V

    .line 966
    const-string v2, "serialNumber"

    .line 967
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 966
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setSerialNumber(Ljava/lang/String;)V

    .line 968
    const-string v2, "calTemp"

    .line 969
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 968
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/wen/fluorescence/database/OriResult;->setCalTemp(D)V

    .line 970
    const-string v2, "startTemp"

    .line 971
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 970
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/wen/fluorescence/database/OriResult;->setStartTemp(D)V

    .line 972
    const-string v2, "endTemp"

    .line 973
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 972
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/wen/fluorescence/database/OriResult;->setEndTemp(D)V

    .line 974
    const-string v2, "ID_Type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setID_Type(I)V

    .line 975
    const-string v2, "testMode"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/database/OriResult;->setTestMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 980
    :cond_0
    if-eqz v1, :cond_1

    .line 981
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 980
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 977
    :catch_0
    move-exception v2

    .line 978
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    goto :goto_1

    .line 984
    :cond_1
    :goto_2
    return-object v3

    .line 980
    :goto_3
    if-eqz v1, :cond_2

    .line 981
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public queryQCItemBatNo(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1921
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "select DISTINCT logNO from TestResult where simpleType = ? and item = ?;"

    .line 1922
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "QC"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1923
    .local v2, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1924
    const-string v3, "logNO"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1925
    .local v3, "strlogNO":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1926
    .end local v3    # "strlogNO":Ljava/lang/String;
    goto :goto_0

    .line 1927
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1928
    return-object v0
.end method

.method public queryQCItemResult()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1903
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "select DISTINCT item from TestResult where simpleType = ?;"

    .line 1904
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "QC"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1905
    .local v2, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1906
    const-string v3, "item"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1907
    .local v3, "strItem":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1908
    .end local v3    # "strItem":Ljava/lang/String;
    goto :goto_0

    .line 1909
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1910
    return-object v0
.end method

.method public queryQCTestResultByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "trc"    # Lcom/wen/fluorescence/database/TestResultCondition;
    .param p2, "simpleType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wen/fluorescence/database/TestResultCondition;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation

    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    const-string v1, "SELECT * FROM TestResult WHERE "

    .line 1273
    .local v1, "sql":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " simpleType = \'%s\' and"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " testtime >= \'%s\' and"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getStartTime()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " testtime <= \'%s\' ORDER BY testtime DESC  LIMIT \'%s\' OFFSET \'%s\'"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getEndTime()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getLimit()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1277
    const-string v2, "SQL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sql:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/4 v2, 0x0

    move-object v3, v2

    .line 1280
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 1281
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1282
    invoke-direct {p0, v3}, Lcom/wen/fluorescence/database/DBManager;->parseTestResultFromCursor(Landroid/database/Cursor;)Lcom/wen/fluorescence/database/TestResult;

    move-result-object v2

    .line 1283
    .local v2, "result":Lcom/wen/fluorescence/database/TestResult;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    .end local v2    # "result":Lcom/wen/fluorescence/database/TestResult;
    goto :goto_0

    .line 1289
    :cond_0
    if-eqz v3, :cond_1

    .line 1290
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1289
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1285
    :catch_0
    move-exception v2

    .line 1286
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1289
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    goto :goto_1

    .line 1293
    :cond_1
    :goto_2
    return-object v0

    .line 1289
    :goto_3
    if-eqz v3, :cond_2

    .line 1290
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public queryQCTestResultByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .param p1, "trc"    # Lcom/wen/fluorescence/database/TestResultCondition;
    .param p2, "simpleType"    # Ljava/lang/String;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wen/fluorescence/database/TestResultCondition;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation

    .line 1303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    const-string v1, "SELECT * FROM TestResult WHERE "

    .line 1305
    .local v1, "sql":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " simpleType = \'%s\' and"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " level = \'%s\' and"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " testtime >= \'%s\' and"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getStartTime()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " testtime <= \'%s\' ORDER BY testtime"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getEndTime()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1310
    const-string v2, "SQL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sql:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v2, 0x0

    move-object v3, v2

    .line 1313
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 1314
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1315
    invoke-direct {p0, v3}, Lcom/wen/fluorescence/database/DBManager;->parseTestResultFromCursor(Landroid/database/Cursor;)Lcom/wen/fluorescence/database/TestResult;

    move-result-object v2

    .line 1316
    .local v2, "result":Lcom/wen/fluorescence/database/TestResult;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    .end local v2    # "result":Lcom/wen/fluorescence/database/TestResult;
    goto :goto_0

    .line 1322
    :cond_0
    if-eqz v3, :cond_1

    .line 1323
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1322
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1318
    :catch_0
    move-exception v2

    .line 1319
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1322
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    goto :goto_1

    .line 1326
    :cond_1
    :goto_2
    return-object v0

    .line 1322
    :goto_3
    if-eqz v3, :cond_2

    .line 1323
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public queryRangeMax(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "item"    # Ljava/lang/String;

    .line 1699
    const/4 v0, 0x0

    .line 1700
    .local v0, "softType":I
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getLanguage()I

    move-result v1

    const v2, 0x1a00001

    if-ne v1, v2, :cond_0

    .line 1701
    const/4 v0, 0x0

    goto :goto_0

    .line 1703
    :cond_0
    const/4 v0, 0x1

    .line 1705
    :goto_0
    const-string v1, ""

    .line 1706
    .local v1, "sql":Ljava/lang/String;
    const-string v2, "SELECT mMax FROM ItemParas WHERE Type  =\'%s\' and name =\'%s\' COLLATE NOCASE"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1707
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1706
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1709
    const/4 v2, 0x0

    .line 1710
    .local v2, "c":Landroid/database/Cursor;
    iget-object v3, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1711
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1712
    const-string v3, "mMax"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1713
    .local v3, "max":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1714
    return-object v3

    .line 1716
    .end local v3    # "max":Ljava/lang/String;
    :cond_1
    const-string v3, "-"

    return-object v3
.end method

.method public queryRangeMin(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "item"    # Ljava/lang/String;

    .line 1656
    const/4 v0, 0x0

    .line 1657
    .local v0, "softType":I
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getLanguage()I

    move-result v1

    const v2, 0x1a00001

    if-ne v1, v2, :cond_0

    .line 1658
    const/4 v0, 0x0

    goto :goto_0

    .line 1660
    :cond_0
    const/4 v0, 0x1

    .line 1662
    :goto_0
    const-string v1, ""

    .line 1663
    .local v1, "sql":Ljava/lang/String;
    const-string v2, "SELECT mMin FROM ItemParas WHERE Type  =\'%s\' and name =\'%s\' COLLATE NOCASE"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1664
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1663
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1666
    const/4 v2, 0x0

    .line 1667
    .local v2, "c":Landroid/database/Cursor;
    iget-object v3, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1668
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1669
    const-string v3, "mMin"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1670
    .local v3, "min":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1671
    return-object v3

    .line 1673
    .end local v3    # "min":Ljava/lang/String;
    :cond_1
    const-string v3, "-"

    return-object v3
.end method

.method public queryRangeUnit(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "item"    # Ljava/lang/String;

    .line 1679
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getLanguage()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x1a00001

    if-ne v0, v2, :cond_0

    .line 1680
    const/4 v0, 0x0

    .line 1680
    .local v0, "softType":I
    goto :goto_0

    .line 1682
    .end local v0    # "softType":I
    :cond_0
    move v0, v1

    .line 1684
    .restart local v0    # "softType":I
    :goto_0
    const-string v2, ""

    .line 1685
    .local v2, "sql":Ljava/lang/String;
    const-string v3, "SELECT unit FROM ItemParas WHERE Type  =\'%s\' and name =\'%s\' COLLATE NOCASE"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1686
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p1, v4, v1

    .line 1685
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1688
    .end local v2    # "sql":Ljava/lang/String;
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1689
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1690
    const-string v3, "unit"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1691
    .local v3, "unit":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1692
    return-object v3

    .line 1694
    .end local v3    # "unit":Ljava/lang/String;
    :cond_1
    const-string v3, "-"

    return-object v3
.end method

.method public queryRawData(Ljava/lang/String;)Lcom/wen/fluorescence/database/RawData;
    .locals 5
    .param p1, "serialNumber"    # Ljava/lang/String;

    .line 1049
    new-instance v0, Lcom/wen/fluorescence/database/RawData;

    invoke-direct {v0}, Lcom/wen/fluorescence/database/RawData;-><init>()V

    .line 1050
    .local v0, "rawData":Lcom/wen/fluorescence/database/RawData;
    const-string v1, "SELECT * FROM RawData WHERE serialNumber = \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1051
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1053
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 1055
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 1056
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1057
    const-string v2, "data"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/database/RawData;->setData(Ljava/lang/String;)V

    .line 1058
    const-string v2, "serialNumber"

    .line 1059
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1058
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/database/RawData;->setSerialNumber(Ljava/lang/String;)V

    .line 1060
    const-string v2, "time"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/database/RawData;->setTime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1066
    :cond_0
    if-eqz v3, :cond_1

    .line 1067
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1066
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1062
    :catch_0
    move-exception v2

    .line 1063
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1066
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    goto :goto_1

    .line 1070
    :cond_1
    :goto_2
    return-object v0

    .line 1066
    :goto_3
    if-eqz v3, :cond_2

    .line 1067
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public queryRawData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "endTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/RawData;",
            ">;"
        }
    .end annotation

    .line 1074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/RawData;>;"
    const-string v1, "SELECT * FROM RawData WHERE time < \'%s\' AND time > \'%s\' ORDER BY id DESC"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 1076
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1078
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 1080
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 1081
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1082
    new-instance v2, Lcom/wen/fluorescence/database/RawData;

    invoke-direct {v2}, Lcom/wen/fluorescence/database/RawData;-><init>()V

    .line 1083
    .local v2, "rawData":Lcom/wen/fluorescence/database/RawData;
    const-string v4, "data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/RawData;->setData(Ljava/lang/String;)V

    .line 1084
    const-string v4, "serialNumber"

    .line 1085
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1084
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/RawData;->setSerialNumber(Ljava/lang/String;)V

    .line 1086
    const-string v4, "time"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/database/RawData;->setTime(Ljava/lang/String;)V

    .line 1087
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    .end local v2    # "rawData":Lcom/wen/fluorescence/database/RawData;
    goto :goto_0

    .line 1093
    :cond_0
    if-eqz v3, :cond_1

    .line 1094
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1093
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1089
    :catch_0
    move-exception v2

    .line 1090
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1093
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    goto :goto_1

    .line 1097
    :cond_1
    :goto_2
    return-object v0

    .line 1093
    :goto_3
    if-eqz v3, :cond_2

    .line 1094
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public queryTestItemTitle()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1533
    const-string v0, "select distinct itemTitle from TestResult"

    .line 1534
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1535
    .local v1, "c":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1536
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1537
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1538
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1539
    const-string v3, "itemTitle"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1540
    .local v3, "item":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1541
    .end local v3    # "item":Ljava/lang/String;
    goto :goto_0

    .line 1543
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1544
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1546
    :cond_1
    return-object v2
.end method

.method public queryTestItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1511
    const-string v0, "select distinct item from TestResult  where testtime < ? and testtime > ? and user = ?"

    .line 1512
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1513
    .local v1, "c":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 1515
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1516
    const-string v3, "item"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1517
    .local v3, "item":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1518
    goto :goto_0

    .line 1520
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1521
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    .end local v3    # "item":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1525
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1526
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1528
    :cond_3
    return-object v2
.end method

.method public queryTestResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    const-string v1, "SELECT * FROM TestResult WHERE testtime < \'%s\' AND testtime > \'%s\' ORDER BY id DESC"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 785
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 789
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 790
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    invoke-direct {p0, v3}, Lcom/wen/fluorescence/database/DBManager;->parseTestResultFromCursor(Landroid/database/Cursor;)Lcom/wen/fluorescence/database/TestResult;

    move-result-object v2

    .line 792
    .local v2, "tr":Lcom/wen/fluorescence/database/TestResult;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    .end local v2    # "tr":Lcom/wen/fluorescence/database/TestResult;
    goto :goto_0

    .line 797
    :cond_0
    if-eqz v3, :cond_1

    .line 798
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 797
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 794
    :catch_0
    move-exception v2

    .line 795
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 797
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    goto :goto_1

    .line 801
    :cond_1
    :goto_2
    return-object v0

    .line 797
    :goto_3
    if-eqz v3, :cond_2

    .line 798
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public queryTestResultByCondition(Lcom/wen/fluorescence/database/TestResultCondition;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "trc"    # Lcom/wen/fluorescence/database/TestResultCondition;
    .param p2, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wen/fluorescence/database/TestResultCondition;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    const-string v1, "SELECT * FROM TestResult WHERE"

    .line 1195
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getSampleNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sampleNumber LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getSampleNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1198
    :cond_0
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1203
    :cond_1
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getPatientNo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 1204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " patientNumber = \'%s\' and "

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getPatientNo()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1207
    :cond_2
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " inspectingDoctor = \'%s\' and "

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getOperator()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1211
    :cond_3
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getStartTime()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " testtime >= \'%s\' and "

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getStartTime()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1215
    :cond_4
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getEndTime()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " testtime <= \'%s\' and "

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getEndTime()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1219
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " user = \'%s\' and "

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p2, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1223
    :cond_6
    const-string v2, "and"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WHERE"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ORDER BY testtime DESC LIMIT ? OFFSET ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1227
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ORDER BY testtime DESC LIMIT ? OFFSET ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1229
    :goto_0
    const-string v2, "SQ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sql:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const/4 v2, 0x0

    .line 1232
    .local v2, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getLimit()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResultCondition;->getOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 1233
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1234
    invoke-direct {p0, v2}, Lcom/wen/fluorescence/database/DBManager;->parseTestResultFromCursor(Landroid/database/Cursor;)Lcom/wen/fluorescence/database/TestResult;

    move-result-object v3

    .line 1235
    .local v3, "result":Lcom/wen/fluorescence/database/TestResult;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    .end local v3    # "result":Lcom/wen/fluorescence/database/TestResult;
    goto :goto_1

    .line 1241
    :cond_8
    if-eqz v2, :cond_9

    .line 1242
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1241
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 1237
    :catch_0
    move-exception v3

    .line 1238
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1241
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_9

    goto :goto_2

    .line 1245
    :cond_9
    :goto_3
    return-object v0

    .line 1241
    :goto_4
    if-eqz v2, :cond_a

    .line 1242
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3
.end method

.method public queryTestResultByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation

    .line 1161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1162
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    const-string v1, "SELECT * FROM TestResult WHERE"

    .line 1163
    .local v1, "sql":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " testtime >= \'%s\' and "

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " testtime <= \'%s\'"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1165
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and user = \'%s\'"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1168
    :cond_0
    const/4 v2, 0x0

    move-object v3, v2

    .line 1170
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 1171
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1172
    invoke-direct {p0, v3}, Lcom/wen/fluorescence/database/DBManager;->parseTestResultFromCursor(Landroid/database/Cursor;)Lcom/wen/fluorescence/database/TestResult;

    move-result-object v2

    .line 1173
    .local v2, "testResult":Lcom/wen/fluorescence/database/TestResult;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    .end local v2    # "testResult":Lcom/wen/fluorescence/database/TestResult;
    goto :goto_0

    .line 1178
    :cond_1
    if-eqz v3, :cond_2

    .line 1179
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1178
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1175
    :catch_0
    move-exception v2

    .line 1176
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1178
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_2

    goto :goto_1

    .line 1182
    :cond_2
    :goto_2
    return-object v0

    .line 1178
    :goto_3
    if-eqz v3, :cond_3

    .line 1179
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public queryTestResultByID(I)Lcom/wen/fluorescence/database/TestResult;
    .locals 5
    .param p1, "id"    # I

    .line 813
    const-string v0, "SELECT * FROM TestResult WHERE id = \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 814
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 813
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 816
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    move-object v3, v2

    .line 818
    .local v3, "tr":Lcom/wen/fluorescence/database/TestResult;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 819
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    invoke-direct {p0, v1}, Lcom/wen/fluorescence/database/DBManager;->parseTestResultFromCursor(Landroid/database/Cursor;)Lcom/wen/fluorescence/database/TestResult;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    .end local v3    # "tr":Lcom/wen/fluorescence/database/TestResult;
    .local v2, "tr":Lcom/wen/fluorescence/database/TestResult;
    move-object v3, v2

    .line 825
    .end local v2    # "tr":Lcom/wen/fluorescence/database/TestResult;
    .restart local v3    # "tr":Lcom/wen/fluorescence/database/TestResult;
    :cond_0
    if-eqz v1, :cond_1

    .line 826
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 825
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 822
    :catch_0
    move-exception v2

    .line 823
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 829
    :cond_1
    :goto_1
    return-object v3

    .line 825
    :goto_2
    if-eqz v1, :cond_2

    .line 826
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public queryTestResultByItemAndSerialNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/wen/fluorescence/database/TestResult;
    .locals 5
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "serialNumber"    # Ljava/lang/String;

    .line 629
    const-string v0, "SELECT * FROM TestResult WHERE item = \'%s\' AND serialNumber = \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 631
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    move-object v3, v2

    .line 633
    .local v3, "tr":Lcom/wen/fluorescence/database/TestResult;
    :try_start_0
    iget-object v4, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 634
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    invoke-direct {p0, v1}, Lcom/wen/fluorescence/database/DBManager;->parseTestResultFromCursor(Landroid/database/Cursor;)Lcom/wen/fluorescence/database/TestResult;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    .end local v3    # "tr":Lcom/wen/fluorescence/database/TestResult;
    .local v2, "tr":Lcom/wen/fluorescence/database/TestResult;
    move-object v3, v2

    .line 640
    .end local v2    # "tr":Lcom/wen/fluorescence/database/TestResult;
    .restart local v3    # "tr":Lcom/wen/fluorescence/database/TestResult;
    :cond_0
    if-eqz v1, :cond_1

    .line 641
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 640
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 637
    :catch_0
    move-exception v2

    .line 638
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 644
    :cond_1
    :goto_1
    return-object v3

    .line 640
    :goto_2
    if-eqz v1, :cond_2

    .line 641
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public queryTestResults(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "serialNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    const-string v1, "SELECT * FROM TestResult WHERE serialNumber = ?"

    .line 691
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    .line 693
    .local v2, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 694
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 695
    invoke-direct {p0, v2}, Lcom/wen/fluorescence/database/DBManager;->parseTestResultFromCursor(Landroid/database/Cursor;)Lcom/wen/fluorescence/database/TestResult;

    move-result-object v3

    .line 696
    .local v3, "tr":Lcom/wen/fluorescence/database/TestResult;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    .end local v3    # "tr":Lcom/wen/fluorescence/database/TestResult;
    goto :goto_0

    .line 701
    :cond_0
    if-eqz v2, :cond_1

    .line 702
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 701
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 698
    :catch_0
    move-exception v3

    .line 699
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    goto :goto_1

    .line 705
    :cond_1
    :goto_2
    return-object v0

    .line 701
    :goto_3
    if-eqz v2, :cond_2

    .line 702
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public queryTestSimpleType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1550
    const-string v0, "select distinct simpleType from TestResult  where testtime < ? and testtime > ? and user = ?"

    .line 1551
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1552
    .local v1, "c":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1553
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1554
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1555
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1556
    const-string v3, "simpleType"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1557
    .local v3, "simpleType":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1558
    .end local v3    # "simpleType":Ljava/lang/String;
    goto :goto_0

    .line 1560
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1561
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1563
    :cond_1
    return-object v2
.end method

.method public queryUserModeByName(Ljava/lang/String;)I
    .locals 6
    .param p1, "userName"    # Ljava/lang/String;

    .line 2333
    const/4 v0, -0x1

    .line 2334
    .local v0, "Mode":I
    const-string v1, "select * from User where userName = ? "

    .line 2335
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2337
    .local v2, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 2338
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2339
    new-instance v3, Lcom/wen/fluorescence/bean/User;

    invoke-direct {v3}, Lcom/wen/fluorescence/bean/User;-><init>()V

    .line 2340
    .local v3, "user":Lcom/wen/fluorescence/bean/User;
    const-string v4, "mode"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/bean/User;->setMode(I)V

    .line 2341
    invoke-virtual {v3}, Lcom/wen/fluorescence/bean/User;->getMode()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 2347
    .end local v3    # "user":Lcom/wen/fluorescence/bean/User;
    :cond_0
    if-eqz v2, :cond_1

    .line 2348
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2347
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 2344
    :catch_0
    move-exception v3

    .line 2345
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2347
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    goto :goto_0

    .line 2351
    :cond_1
    :goto_1
    return v0

    .line 2347
    :goto_2
    if-eqz v2, :cond_2

    .line 2348
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public reSetItemParas()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 503
    :try_start_0
    const-string v0, "DELETE FROM ItemParas"

    .line 504
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/DBManager;->initYRItemParas()V

    .line 507
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .end local v0    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 512
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 513
    nop

    .line 514
    return-void

    .line 512
    :goto_1
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public setDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    iput-object p1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    return-void
.end method

.method public updateItemForPreSet()V
    .locals 17

    .line 518
    const-string v1, "SELECT * FROM ItemParas WHERE name = \'HbA1c\' and Type = \'0\'"

    .line 519
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 521
    .local v3, "c":Landroid/database/Cursor;
    move-object/from16 v15, p0

    :try_start_0
    iget-object v4, v15, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 522
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    const-string v2, "oriPrintMode"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 524
    .local v2, "oriPrint":I
    const-string v4, "F200"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oriPrintMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    .line 526
    const-string v5, "HbA1c"

    const-string v6, "G1"

    const/4 v7, 0x1

    const-string v8, "mg/dL"

    const-string v9, "28.7"

    const-string v10, "-46.7"

    const-string v11, "eAG"

    const-string v12, "mmol/mol"

    const-string v13, "10.929"

    const-string v14, "-23.49735"

    const-string v16, "IFCC"

    move-object v4, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v4 .. v15}, Lcom/wen/fluorescence/database/DBManager;->updateItemParasFirst(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 527
    const-string v5, "D-Dimer"

    const-string v6, "C6"

    const/4 v7, 0x1

    const-string v8, "ng/mL"

    const-string v9, "1000"

    const-string v10, "0"

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v15}, Lcom/wen/fluorescence/database/DBManager;->updateItemParasFirst(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 528
    const-string v5, "TSH"

    const-string v6, "H2"

    const/4 v7, 0x1

    const-string v8, "\u03bcIU/mL"

    const-string v9, "1"

    const-string v10, "0"

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v15}, Lcom/wen/fluorescence/database/DBManager;->updateItemParasFirst(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 529
    const-string v5, "T3"

    const-string v6, "H3"

    const/4 v7, 0x1

    const-string v8, "ng/mL"

    const-string v9, "0.651"

    const-string v10, "0"

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v15}, Lcom/wen/fluorescence/database/DBManager;->updateItemParasFirst(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 530
    const-string v5, "T4"

    const-string v6, "H4"

    const/4 v7, 0x1

    const-string v8, "\u03bcg/dL"

    const-string v9, "0.0777"

    const-string v10, "0"

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v15}, Lcom/wen/fluorescence/database/DBManager;->updateItemParasFirst(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 531
    const-string v5, "FT3"

    const-string v6, "H5"

    const/4 v7, 0x1

    const-string v8, "pg/mL"

    const-string v9, "0.651"

    const-string v10, "0"

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v15}, Lcom/wen/fluorescence/database/DBManager;->updateItemParasFirst(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 532
    const-string v5, "FT4"

    const-string v6, "H6"

    const/4 v7, 0x1

    const-string v8, "ng/dL"

    const-string v9, "0.0777"

    const-string v10, "0"

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v15}, Lcom/wen/fluorescence/database/DBManager;->updateItemParasFirst(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    .end local v2    # "oriPrint":I
    :cond_0
    nop

    .line 522
    move-object/from16 v15, p0

    goto/16 :goto_0

    .line 538
    :cond_1
    if-eqz v3, :cond_2

    .line 539
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 538
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_3

    .line 535
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 536
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_2

    goto :goto_1

    .line 542
    :cond_2
    :goto_2
    return-void

    .line 538
    :goto_3
    if-eqz v3, :cond_3

    .line 539
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public updateItemParas(Lcom/wen/fluorescence/database/ItemPara;)Z
    .locals 6
    .param p1, "itemPara"    # Lcom/wen/fluorescence/database/ItemPara;

    .line 368
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "update ItemParas set mMin=\'%s\', mMax= \'%s\',unit= \'%s\',k= \'%s\',b= \'%s\',tarUnit1= \'%s\',tarK1= \'%s\',tarB1= \'%s\',tarTemplate1= \'%s\',tarPrintMode1= \'%s\',tarUnit2= \'%s\',tarK2= \'%s\',tarB2= \'%s\',tarTemplate2= \'%s\',tarPrintMode2= \'%s\' where name=\'%s\' and code = \'%s\'and Type =\'%s\'"

    const/16 v2, 0x12

    new-array v2, v2, [Ljava/lang/Object;

    .line 371
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getMin()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getMax()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getUnit()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getK()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getB()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x5

    .line 372
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit1()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarK1()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x7

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarB1()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x8

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate1()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x9

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode1()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xa

    .line 373
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit2()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xb

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarK2()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xc

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarB2()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xd

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate2()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xe

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode2()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xf

    .line 374
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x10

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x11

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 369
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v1    # "sql":Ljava/lang/String;
    nop

    .line 380
    return v4

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 378
    return v0
.end method

.method public updateItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "unit"    # Ljava/lang/String;

    .line 354
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "update ItemParas set  mMin=\'%s\', mMax= \'%s\',unit= \'%s\' where name=\'%s\' and code = \'%s\'and Type =\'%s\'"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v0

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v4, 0x2

    aput-object p6, v2, v4

    const/4 v4, 0x3

    aput-object p1, v2, v4

    const/4 v4, 0x4

    aput-object p4, v2, v4

    const/4 v4, 0x5

    aput-object p5, v2, v4

    .line 355
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v1    # "sql":Ljava/lang/String;
    nop

    .line 363
    return v3

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 361
    return v0
.end method

.method public updateItemParas17()V
    .locals 15

    .line 116
    const-string v0, "hsCRP"

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/database/DBManager;->queryItemParasExits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    const-string v2, "CRP"

    const-string v3, "10"

    const-string v4, "0"

    const-string v5, "I4"

    const-string v6, "0"

    const-string v7, "mg/L"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/wen/fluorescence/database/DBManager;->updateItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    const-string v9, "hsCRP"

    const-string v10, "I4"

    const-string v11, "0"

    const-string v12, "0"

    const-string v13, "1"

    const-string v14, "mg/L"

    move-object v8, p0

    invoke-virtual/range {v8 .. v14}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "FT3"

    const-string v2, "H5"

    const-string v3, "0"

    const-string v4, "2.8"

    const-string v5, "7.1"

    const-string v6, "pmol/L"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v8, "FT4"

    const-string v9, "H6"

    const-string v10, "0"

    const-string v11, "12"

    const-string v12, "22"

    const-string v13, "pmol/L"

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "PSA"

    const-string v2, "T1"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "4"

    const-string v6, "ng/mL"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v8, "AMH"

    const-string v9, "H7"

    const-string v10, "0"

    const-string v11, "2"

    const-string v12, "7"

    const-string v13, "ng/mL"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "Vitamin D"

    const-string v2, "V4"

    const-string v3, "0"

    const-string v4, "30"

    const-string v5, "100"

    const-string v6, "ng/mL"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v8, "BNP"

    const-string v9, "C0"

    const-string v10, "0"

    const-string v11, "0"

    const-string v12, "100"

    const-string v13, "ng/mL"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "CEA"

    const-string v2, "T2"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "30"

    const-string v6, "ng/mL"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v8, "AFP"

    const-string v9, "T3"

    const-string v10, "0"

    const-string v11, "0"

    const-string v12, "5"

    const-string v13, "ng/mL"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "CRP"

    const-string v2, "10"

    const-string v3, "0"

    const-string v4, "I4"

    const-string v5, "1"

    const-string v6, "mg/L"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->updateItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    const-string v8, "hsCRP"

    const-string v9, "I4"

    const-string v10, "1"

    const-string v11, "0"

    const-string v12, "1"

    const-string v13, "mg/L"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "FT3"

    const-string v2, "H5"

    const-string v3, "1"

    const-string v4, "2.8"

    const-string v5, "7.1"

    const-string v6, "pmol/L"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v8, "FT4"

    const-string v9, "H6"

    const-string v10, "1"

    const-string v11, "12"

    const-string v12, "22"

    const-string v13, "pmol/L"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "PSA"

    const-string v2, "T1"

    const-string v3, "1"

    const-string v4, "0"

    const-string v5, "4"

    const-string v6, "ng/mL"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v8, "AMH"

    const-string v9, "H7"

    const-string v10, "1"

    const-string v11, "2"

    const-string v12, "7"

    const-string v13, "ng/mL"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "Vitamin D"

    const-string v2, "V4"

    const-string v3, "1"

    const-string v4, "30"

    const-string v5, "100"

    const-string v6, "ng/mL"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v8, "BNP"

    const-string v9, "C0"

    const-string v10, "1"

    const-string v11, "0"

    const-string v12, "100"

    const-string v13, "ng/mL"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "CEA"

    const-string v2, "T2"

    const-string v3, "1"

    const-string v4, "0"

    const-string v5, "30"

    const-string v6, "ng/mL"

    invoke-virtual/range {v0 .. v6}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v8, "AFP"

    const-string v9, "T3"

    const-string v10, "1"

    const-string v11, "0"

    const-string v12, "5"

    const-string v13, "ng/mL"

    invoke-virtual/range {v7 .. v13}, Lcom/wen/fluorescence/database/DBManager;->addItemParas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public updateItemParasEXT(Lcom/wen/fluorescence/database/ItemParaEXT;)V
    .locals 5
    .param p1, "ext"    # Lcom/wen/fluorescence/database/ItemParaEXT;

    .line 387
    const-string v0, "update ItemParasEXT set ManMin = ?,ManMax = ?,WLPMin= ?,WLPMax= ?,WPLMin= ?,WPLMax= ?,WHTMin= ?,WHTMax= ?,WJJMin= ?,WJJMax= ?,WEXT1Min= ?, WEXT1Max= ?,WEXT2Min= ?, WEXT2Max= ? where name=? and Type =?;"

    .line 391
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getManMin()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getManMax()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 394
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getWLPMin()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getWLPMax()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getWPLMin()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 395
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getWPLMax()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getWHTMin()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getWHTMax()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 396
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getWJJMin()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getWJJMax()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getWEXT1Min()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    .line 397
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getWEXT1Max()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getWEXT2Min()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v2, v4

    .line 398
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getWEXT2Max()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemParaEXT;->getType()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    .line 391
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    return-void
.end method

.method public updateItemParasFirst(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "oriPrintMode"    # I
    .param p4, "tarUnit1"    # Ljava/lang/String;
    .param p5, "tarK1"    # Ljava/lang/String;
    .param p6, "tarB1"    # Ljava/lang/String;
    .param p7, "tarTemplate1"    # Ljava/lang/String;
    .param p8, "tarUnit2"    # Ljava/lang/String;
    .param p9, "tarK2"    # Ljava/lang/String;
    .param p10, "tarB2"    # Ljava/lang/String;
    .param p11, "tarTemplate2"    # Ljava/lang/String;

    .line 548
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "update ItemParas set  oriPrintMode=\'%s\', tarUnit1= \'%s\',tarK1= \'%s\', tarB1= \'%s\',tarTemplate1= \'%s\', tarUnit2= \'%s\',tarK2= \'%s\', tarB2= \'%s\',tarTemplate2= \'%s\' where name=\'%s\' and code = \'%s\'"

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/Object;

    .line 551
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    aput-object p4, v3, v4

    const/4 v5, 0x2

    aput-object p5, v3, v5

    const/4 v5, 0x3

    aput-object p6, v3, v5

    const/4 v5, 0x4

    aput-object p7, v3, v5

    const/4 v5, 0x5

    aput-object p8, v3, v5

    const/4 v5, 0x6

    aput-object p9, v3, v5

    const/4 v5, 0x7

    aput-object p10, v3, v5

    const/16 v5, 0x8

    aput-object p11, v3, v5

    const/16 v5, 0x9

    aput-object p1, v3, v5

    const/16 v5, 0xa

    aput-object p2, v3, v5

    .line 549
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "sql":Ljava/lang/String;
    const-string v3, "F200"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sql = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 553
    move-object v1, p0

    :try_start_1
    iget-object v3, v1, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 557
    .end local v2    # "sql":Ljava/lang/String;
    nop

    .line 558
    return v4

    .line 554
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    :goto_0
    move-object v2, v0

    .line 555
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 556
    const/4 v3, 0x0

    return v3
.end method

.method public updateTestResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "serialNumber"    # Ljava/lang/String;

    .line 1844
    const-string v0, "update TestResult set uploadStatus = 1 where appId = \'%s\' and serialNumber = \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1845
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1846
    return-void
.end method

.method public updateTestResultBySerial(Ljava/lang/String;)V
    .locals 3
    .param p1, "serialNumber"    # Ljava/lang/String;

    .line 1849
    const-string v0, "update TestResult set uploadStatus = 1 where serialNumber = \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1850
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/database/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1851
    return-void
.end method
