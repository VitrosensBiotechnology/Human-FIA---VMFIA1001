.class public Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;
.super Landroid/support/v4/app/Fragment;
.source "SystemAdvancedFragment.java"


# instance fields
.field arrayData:[I

.field private btnCardIn:Landroid/widget/Button;

.field private btnCardOut:Landroid/widget/Button;

.field private btnCheckNet:Landroid/widget/Button;

.field private btnDBInput:Landroid/widget/Button;

.field private btnDBOutput:Landroid/widget/Button;

.field private btnDarkTest:Landroid/widget/Button;

.field private btnExit:Landroid/widget/Button;

.field private btnGetVersion:Landroid/widget/Button;

.field private btnLogOut:Landroid/widget/Button;

.field private btnOriginalOutput:Landroid/widget/Button;

.field private btnPCControl:Landroid/widget/TextView;

.field private btnPrinterTest:Landroid/widget/Button;

.field private btnRead:Landroid/widget/Button;

.field private btnReagentStatus:Landroid/widget/Button;

.field private btnReset:Landroid/widget/Button;

.field private btnScan:Landroid/widget/Button;

.field private btnWrite:Landroid/widget/Button;

.field checkedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private etAD:Landroid/widget/EditText;

.field private etBarcode:Landroid/widget/EditText;

.field private etHatchSwitch:Landroid/widget/EditText;

.field private etHatchTemp:Landroid/widget/EditText;

.field private etSampleing:Landroid/widget/EditText;

.field private etScanTime:Landroid/widget/EditText;

.field private ettotallength:Landroid/widget/EditText;

.field listener:Lcom/wen/fluorescence/util/MyOnClickListener;

.field private logNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private rgFanSwitch:Landroid/widget/RadioGroup;

.field private rgLightSwitch:Landroid/widget/RadioGroup;

.field private rgTestMode:Landroid/widget/RadioGroup;

.field private spLotNumber:Landroid/widget/Spinner;

.field private tvEnvTemp:Landroid/widget/TextView;

.field private tvFirmWareVersion:Landroid/widget/TextView;

.field private tvHardWareVersion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->logNumberList:Ljava/util/List;

    .line 204
    new-instance v0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    .line 288
    new-instance v0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$3;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->checkedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 550
    new-instance v0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$11;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$11;-><init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 70
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->spLotNumber:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 70
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->switchPCControl()V

    return-void
.end method

.method static synthetic access$1000(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 70
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->exportOriginalData()V

    return-void
.end method

.method static synthetic access$1100(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 70
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->checkNetConnect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Lcom/wen/fluorescence/bean/SystemConfig;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 70
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getSystemConfigByUI()Lcom/wen/fluorescence/bean/SystemConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 70
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->sureToWrite()V

    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 70
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->resetConfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 70
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->exitSystem()V

    return-void
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 70
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etBarcode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 70
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnDarkTest:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    .line 70
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->dataBaseOut()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->dataBaseIn()J

    move-result-wide v0

    return-wide v0
.end method

.method private checkNetConnect()Z
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private dataBaseIn()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.wen.fluorescence/databases/wenfia.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, "f2":Ljava/io/File;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/PublicFuction;->getUDiskFileList(Landroid/content/Context;)[Ljava/lang/String;

    .line 449
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "wenfia.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .local v1, "f1":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "\u6ca1\u6709U\u76d8\uff01"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 453
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 454
    .local v2, "time":J
    const/high16 v4, 0x200000

    .line 455
    .local v4, "length":I
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 456
    .local v5, "in":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 457
    .local v6, "out":Ljava/io/FileOutputStream;
    new-array v7, v4, [B

    .line 459
    .local v7, "buffer":[B
    :goto_0
    invoke-virtual {v5, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .line 460
    .local v8, "ins":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 461
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 462
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 463
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    .line 464
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 465
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const v10, 0x7f0c00c4

    invoke-virtual {p0, v10}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 466
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long v11, v9, v2

    return-wide v11

    .line 468
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 469
    .end local v8    # "ins":I
    goto :goto_0
.end method

.method private dataBaseOut()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.wen.fluorescence/databases/wenfia.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "f1":Ljava/io/File;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/PublicFuction;->getUDiskFileList(Landroid/content/Context;)[Ljava/lang/String;

    .line 421
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "wenfia.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v1, "f2":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 423
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 425
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 426
    .local v2, "time":J
    const/high16 v4, 0x200000

    .line 427
    .local v4, "length":I
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 428
    .local v5, "in":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 429
    .local v6, "out":Ljava/io/FileOutputStream;
    new-array v7, v4, [B

    .line 431
    .local v7, "buffer":[B
    :goto_0
    invoke-virtual {v5, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .line 432
    .local v8, "ins":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 433
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 434
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 435
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    .line 436
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 437
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const v10, 0x7f0c00a9

    invoke-virtual {p0, v10}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 438
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long v11, v9, v2

    return-wide v11

    .line 440
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 441
    .end local v8    # "ins":I
    goto :goto_0
.end method

.method private exitSystem()V
    .locals 3

    .line 402
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c018c

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$9;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$9;-><init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 414
    return-void
.end method

.method private exportOriginalData()V
    .locals 4

    .line 476
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c01cd

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 477
    const v2, 0x7f0c0017

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 476
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;->AlertDialogPunching(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 478
    return-void
.end method

.method private frashLots()V
    .locals 8

    .line 143
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "SP_TEST_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 144
    .local v0, "bTestMode":Z
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->rgTestMode:Landroid/widget/RadioGroup;

    const v2, 0x7f08016f

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->rgTestMode:Landroid/widget/RadioGroup;

    const v2, 0x7f08016e

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 150
    :goto_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/database/DBManager;->queryAllIDChipInfoN()Ljava/util/List;

    move-result-object v1

    .line 151
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/IDChipInfoN;>;"
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->logNumberList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 152
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 153
    move v3, v2

    .line 153
    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 154
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->logNumberList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/bean/IDChipInfoN;

    iget-object v5, v5, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_logNo:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 157
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0a0058

    const v6, 0x7f0801a3

    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->logNumberList:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 158
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->spLotNumber:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 159
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->spLotNumber:Landroid/widget/Spinner;

    new-instance v5, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$1;

    invoke-direct {v5, p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v4

    const-string v5, "SP_DEFAULT_LOT"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "noBarcodeLot":Ljava/lang/String;
    nop

    .line 173
    .local v2, "i":I
    :goto_2
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->logNumberList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 174
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->logNumberList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->spLotNumber:Landroid/widget/Spinner;

    invoke-virtual {v5, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 173
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 178
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private getSystemConfigByUI()Lcom/wen/fluorescence/bean/SystemConfig;
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etAD:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etScanTime:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->ettotallength:Landroid/widget/EditText;

    .line 483
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etSampleing:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etHatchTemp:Landroid/widget/EditText;

    .line 484
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etHatchSwitch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    new-instance v0, Lcom/wen/fluorescence/bean/SystemConfig;

    invoke-direct {v0}, Lcom/wen/fluorescence/bean/SystemConfig;-><init>()V

    .line 489
    .local v0, "config":Lcom/wen/fluorescence/bean/SystemConfig;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etAD:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/SystemConfig;->setMaxAD(I)V

    .line 490
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etScanTime:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/SystemConfig;->setScanTime(I)V

    .line 491
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->ettotallength:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/SystemConfig;->setRunTotal(I)V

    .line 492
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etSampleing:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/SystemConfig;->setStartPosition(I)V

    .line 493
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etHatchTemp:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/SystemConfig;->setTemp(I)V

    .line 494
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etHatchSwitch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/SystemConfig;->setTempSwitch(I)V

    .line 495
    return-object v0

    .line 485
    .end local v0    # "config":Lcom/wen/fluorescence/bean/SystemConfig;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0067

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 106
    const v0, 0x7f0800ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etAD:Landroid/widget/EditText;

    .line 107
    const v0, 0x7f0800f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->ettotallength:Landroid/widget/EditText;

    .line 108
    const v0, 0x7f0800e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etScanTime:Landroid/widget/EditText;

    .line 109
    const v0, 0x7f0800e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etSampleing:Landroid/widget/EditText;

    .line 110
    const v0, 0x7f0800cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etHatchTemp:Landroid/widget/EditText;

    .line 111
    const v0, 0x7f0800cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etHatchSwitch:Landroid/widget/EditText;

    .line 112
    const v0, 0x7f08003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnCheckNet:Landroid/widget/Button;

    .line 113
    const v0, 0x7f08005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnLogOut:Landroid/widget/Button;

    .line 114
    const v0, 0x7f0801fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->tvEnvTemp:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f08006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnRead:Landroid/widget/Button;

    .line 117
    const v0, 0x7f080093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnWrite:Landroid/widget/Button;

    .line 118
    const v0, 0x7f080071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnReset:Landroid/widget/Button;

    .line 119
    const v0, 0x7f0800c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etBarcode:Landroid/widget/EditText;

    .line 120
    const v0, 0x7f080079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnScan:Landroid/widget/Button;

    .line 121
    const v0, 0x7f08006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnPrinterTest:Landroid/widget/Button;

    .line 122
    const v0, 0x7f08003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnCardIn:Landroid/widget/Button;

    .line 123
    const v0, 0x7f08003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnCardOut:Landroid/widget/Button;

    .line 124
    const v0, 0x7f080045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnDarkTest:Landroid/widget/Button;

    .line 125
    const v0, 0x7f080190

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->rgLightSwitch:Landroid/widget/RadioGroup;

    .line 126
    const v0, 0x7f08018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->rgFanSwitch:Landroid/widget/RadioGroup;

    .line 128
    const v0, 0x7f080044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnDBOutput:Landroid/widget/Button;

    .line 129
    const v0, 0x7f080043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnDBInput:Landroid/widget/Button;

    .line 130
    const v0, 0x7f080065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnOriginalOutput:Landroid/widget/Button;

    .line 131
    const v0, 0x7f0801fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->tvFirmWareVersion:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0801ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->tvHardWareVersion:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f080054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnGetVersion:Landroid/widget/Button;

    .line 134
    const v0, 0x7f080066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnPCControl:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f08004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnExit:Landroid/widget/Button;

    .line 136
    const v0, 0x7f080070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnReagentStatus:Landroid/widget/Button;

    .line 138
    const v0, 0x7f080198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->rgTestMode:Landroid/widget/RadioGroup;

    .line 139
    const v0, 0x7f0801c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->spLotNumber:Landroid/widget/Spinner;

    .line 140
    return-void
.end method

.method private resetConfig()V
    .locals 1

    .line 388
    new-instance v0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$8;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$8;-><init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->showPasswordDialog(Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 399
    return-void
.end method

.method private setViewIncident()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnRead:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnWrite:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnReset:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnScan:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnPrinterTest:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnCardIn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnCardOut:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnDarkTest:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnDBOutput:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnDBInput:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnOriginalOutput:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnGetVersion:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnPCControl:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnExit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnCheckNet:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnReagentStatus:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnLogOut:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->rgLightSwitch:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->checkedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->rgFanSwitch:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->checkedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 200
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->rgTestMode:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->checkedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 201
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->frashLots()V

    .line 202
    return-void
.end method

.method private showPasswordDialog(Lcom/wen/fluorescence/util/MyDialogInterface;)V
    .locals 7
    .param p1, "dialogInterface"    # Lcom/wen/fluorescence/util/MyDialogInterface;

    .line 331
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0045

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 334
    .local v1, "budiler":Landroid/app/AlertDialog;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 335
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 336
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 338
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 339
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 340
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x26c

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 341
    const/16 v3, 0x15e

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 342
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 343
    const v3, 0x7f080089

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 344
    .local v3, "btnSure":Landroid/widget/Button;
    const v4, 0x7f08003b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 345
    .local v4, "btnCancel":Landroid/widget/Button;
    nop

    .line 346
    const v5, 0x7f0800de

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 347
    .local v5, "etPassword":Landroid/widget/EditText;
    new-instance v6, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$5;

    invoke-direct {v6, p0, v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$5;-><init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    new-instance v6, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$6;

    invoke-direct {v6, p0, v5, p1, v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$6;-><init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;Landroid/widget/EditText;Lcom/wen/fluorescence/util/MyDialogInterface;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    return-void
.end method

.method private sureToWrite()V
    .locals 1

    .line 370
    new-instance v0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$7;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$7;-><init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->showPasswordDialog(Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 384
    return-void
.end method

.method private switchPCControl()V
    .locals 3

    .line 316
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0187

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$4;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 328
    return-void
.end method


# virtual methods
.method public frashSystemConfigData()V
    .locals 4

    .line 509
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getConfig()Lcom/wen/fluorescence/bean/SystemConfig;

    move-result-object v0

    .line 510
    .local v0, "config":Lcom/wen/fluorescence/bean/SystemConfig;
    if-eqz v0, :cond_0

    .line 511
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etAD:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wen/fluorescence/bean/SystemConfig;->getMaxAD()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etScanTime:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wen/fluorescence/bean/SystemConfig;->getScanTime()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->ettotallength:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wen/fluorescence/bean/SystemConfig;->getRunTotal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etSampleing:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wen/fluorescence/bean/SystemConfig;->getStartPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etHatchTemp:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wen/fluorescence/bean/SystemConfig;->getTemp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etHatchSwitch:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wen/fluorescence/bean/SystemConfig;->getTempSwitch()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 518
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 90
    const v0, 0x7f0a005a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->initView(Landroid/view/View;)V

    .line 92
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->setViewIncident()V

    .line 93
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 99
    if-nez p1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->frashLots()V

    .line 102
    :cond_0
    return-void
.end method

.method public receiveCurrentData([I)V
    .locals 4
    .param p1, "data"    # [I

    .line 541
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->arrayData:[I

    .line 542
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$10;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment$10;-><init>(Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 547
    return-void
.end method

.method public setBarCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "barCode"    # Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->etBarcode:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->btnCardOut:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 533
    return-void
.end method

.method public setEnvTemp(D)V
    .locals 3
    .param p1, "dEnvTemp"    # D

    .line 580
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->tvEnvTemp:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 581
    const-string v0, "as"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u663e\u793a\u73af\u5883\u6e29\u5ea6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->tvEnvTemp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\u2103"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    :cond_0
    return-void
.end method

.method public setOrResetSystemConfigSuccess()V
    .locals 0

    .line 502
    invoke-static {}, Lcom/wen/fluorescence/serialport/Protocol;->getSystemConfig()V

    .line 503
    return-void
.end method

.method public setVersion(Lcom/wen/fluorescence/bean/Version;)V
    .locals 2
    .param p1, "version"    # Lcom/wen/fluorescence/bean/Version;

    .line 521
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->tvFirmWareVersion:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/bean/Version;->getFirmVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->tvHardWareVersion:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wen/fluorescence/bean/Version;->getHardVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    return-void
.end method
