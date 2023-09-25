.class public Lcom/wen/fluorescence/util/PublicFuction;
.super Ljava/lang/Object;
.source "PublicFuction.java"


# static fields
.field public static DEVICE_FILE_NAME:Ljava/lang/String; = null

.field public static final GuestCode_VHECK:I = 0x1

.field public static final GuestCode_YR:I = 0x2

.field public static SN_FILE_NAME:Ljava/lang/String;

.field public static USB_PATH:Ljava/lang/String;

.field public static USB_PATHS:[Ljava/lang/String;

.field public static arraySample:[Ljava/lang/String;

.field public static deChengBatchNum:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    const-string v0, "/storage/usbdisk1"

    sput-object v0, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    .line 28
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/storage/usbdisk1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/storage/usbdisk2"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "/storage/usbdisk3"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "/storage/usbdisk4"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATHS:[Ljava/lang/String;

    .line 32
    const/16 v1, 0x24

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "52521001C"

    aput-object v2, v1, v3

    const-string v2, "508210601"

    aput-object v2, v1, v4

    const-string v2, "507210601"

    aput-object v2, v1, v5

    const-string v2, "527210601"

    aput-object v2, v1, v6

    const-string v2, "51920001C"

    aput-object v2, v1, v0

    const-string v0, "519210701"

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v0, "51821001C"

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const-string v0, "53020001C"

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const-string v0, "528210801"

    const/16 v2, 0x8

    aput-object v0, v1, v2

    const-string v0, "06221001C"

    const/16 v2, 0x9

    aput-object v0, v1, v2

    const-string v0, "06221002C"

    const/16 v2, 0xa

    aput-object v0, v1, v2

    const-string v0, "06221003C"

    const/16 v2, 0xb

    aput-object v0, v1, v2

    const-string v0, "06211003C"

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-string v0, "06211004C"

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-string v0, "06221004C"

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const-string v0, "062210802"

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const-string v0, "52820001C"

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const-string v0, "05421001C"

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const-string v0, "05421002C"

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const-string v0, "05421003C"

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const-string v0, "05421004C"

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const-string v0, "062210801"

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const-string v0, "05420007C"

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const-string v0, "05420008C"

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const-string v0, "05420009C"

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const-string v0, "05420010C"

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const-string v0, "05420011C"

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const-string v0, "05420012C"

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const-string v0, "05420013C"

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const-string v0, "05420014C"

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const-string v0, "05420015C"

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const-string v0, "05420016C"

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const-string v0, "05420017C"

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const-string v0, "05420018C"

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const-string v0, "05420019C"

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const-string v0, "05420020C"

    const/16 v2, 0x23

    aput-object v0, v1, v2

    sput-object v1, Lcom/wen/fluorescence/util/PublicFuction;->deChengBatchNum:[Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/chf200_device.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wen/fluorescence/util/PublicFuction;->DEVICE_FILE_NAME:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/CHF200_SN.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wen/fluorescence/util/PublicFuction;->SN_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ExportSQLite(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 17
    .param p0, "myContext"    # Landroid/content/Context;
    .param p1, "n"    # I
    .param p2, "ExportMode"    # I
    .param p3, "selectDate"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 871
    move-object/from16 v4, p3

    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/util/PublicFuction;->getUDiskFileList(Landroid/content/Context;)[Ljava/lang/String;

    .line 872
    const/4 v5, 0x0

    .line 873
    .local v5, "cursor":Landroid/database/Cursor;
    const-string v6, ""

    .line 874
    .local v6, "ls_select":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v7

    const-string v8, "login_user"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 875
    .local v7, "user":Ljava/lang/String;
    const-string v8, "factory"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "super"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "admin"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 876
    :cond_0
    const/4 v7, 0x0

    .line 879
    :cond_1
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v8}, Lcom/wen/fluorescence/util/DateUtils;->GetDateTime(I)Ljava/lang/String;

    move-result-object v9

    .line 880
    .local v9, "Date":Ljava/lang/String;
    if-nez v3, :cond_c

    .line 882
    const-string v13, " id,serialNumber,sampleNumber,simpleType,logNO,item,result,testtime,name,age,sex,bedNumber,patientNumber,doctorNumber,submittingDivision,submittingDoctor,submittingTime,reviewer,inspectingDoctor,inspectingTime,note "

    .line 886
    .local v13, "allResult":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/FIA_Data/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 887
    .local v14, "path":Ljava/lang/String;
    invoke-static {}, Lcom/wen/fluorescence/util/FileUtils;->getInstance()Lcom/wen/fluorescence/util/FileUtils;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/wen/fluorescence/util/FileUtils;->mkdir(Ljava/lang/String;)V

    .line 888
    const/4 v15, 0x3

    if-nez v2, :cond_5

    .line 889
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " 00:00:00"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 890
    .local v10, "BeginDate":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " 23:59:59"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 891
    .local v11, "EndDate":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 892
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " FROM TestResult WHERE testtime >=\'%s\'  and    testtime<=\'%s\' and user = \'%s\'"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v12, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v12, v15

    const/4 v15, 0x1

    aput-object v11, v12, v15

    const/4 v15, 0x2

    aput-object v7, v12, v15

    .line 893
    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    goto :goto_0

    .line 896
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " FROM TestResult WHERE testtime >=\'%s\'  and    testtime<=\'%s\' "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v12, v15

    const/4 v15, 0x1

    aput-object v11, v12, v15

    .line 897
    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 900
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/DBManager;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual {v8, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v5, v8

    .line 902
    const-string v8, "Data.csv"

    invoke-static {v1, v5, v8, v3}, Lcom/wen/fluorescence/util/PublicFuction;->ExportSQLiteToCSVForHistoryData(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;I)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_4

    .line 903
    nop

    .line 1021
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1022
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_3
    const/4 v5, 0x0

    .line 903
    const/4 v8, 0x0

    return v8

    .line 904
    .end local v10    # "BeginDate":Ljava/lang/String;
    .end local v11    # "EndDate":Ljava/lang/String;
    :cond_4
    goto/16 :goto_3

    :cond_5
    const/4 v8, 0x1

    if-ne v2, v8, :cond_8

    .line 905
    :try_start_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 906
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " FROM TestResult where user = \'%s\'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v11, v10

    .line 907
    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    goto :goto_1

    .line 909
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " FROM TestResult"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    .line 910
    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 913
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wen/fluorescence/database/DBManager;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v5, v8

    .line 914
    const-string v8, "Data.csv"

    invoke-static {v1, v5, v8, v3}, Lcom/wen/fluorescence/util/PublicFuction;->ExportSQLiteToCSVForHistoryData(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;I)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_b

    .line 915
    nop

    .line 1021
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1022
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_7
    const/4 v5, 0x0

    .line 915
    const/4 v8, 0x0

    return v8

    .line 916
    :cond_8
    const/4 v8, 0x2

    if-ne v2, v8, :cond_b

    .line 917
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " 00:00:00"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 918
    .local v8, "BeginDate":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " 23:59:59"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 919
    .local v10, "EndDate":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 920
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  FROM TestResult WHERE testtime >=\'%s\'  and    testtime<=\'%s\' and user = \'%s\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v12, v15

    const/4 v15, 0x1

    aput-object v10, v12, v15

    const/4 v15, 0x2

    aput-object v7, v12, v15

    .line 921
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    goto :goto_2

    .line 924
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  FROM TestResult WHERE testtime >=\'%s\'  and    testtime<=\'%s\' "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v12, v15

    const/4 v15, 0x1

    aput-object v10, v12, v15

    .line 925
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 928
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/wen/fluorescence/database/DBManager;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    move-object v5, v11

    .line 929
    const-string v11, "Data.csv"

    invoke-static {v1, v5, v11, v3}, Lcom/wen/fluorescence/util/PublicFuction;->ExportSQLiteToCSV(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;I)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v11, :cond_b

    .line 930
    nop

    .line 1021
    if-eqz v5, :cond_a

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_a

    .line 1022
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_a
    const/4 v5, 0x0

    .line 930
    const/4 v11, 0x0

    return v11

    .line 932
    .end local v8    # "BeginDate":Ljava/lang/String;
    .end local v10    # "EndDate":Ljava/lang/String;
    .end local v13    # "allResult":Ljava/lang/String;
    .end local v14    # "path":Ljava/lang/String;
    :cond_b
    :goto_3
    goto/16 :goto_7

    :cond_c
    const/4 v8, 0x1

    if-ne v3, v8, :cond_1c

    .line 933
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/FIA_RD_Data/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 934
    .local v8, "path":Ljava/lang/String;
    invoke-static {}, Lcom/wen/fluorescence/util/FileUtils;->getInstance()Lcom/wen/fluorescence/util/FileUtils;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/wen/fluorescence/util/FileUtils;->mkdir(Ljava/lang/String;)V

    .line 936
    if-nez v2, :cond_12

    .line 937
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " 00:00:00"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 938
    .local v10, "BeginDate":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " 23:59:59"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 939
    .restart local v11    # "EndDate":Ljava/lang/String;
    const-string v12, "SELECT *  FROM OriResult WHERE time >=\'%s\'  and    time<=\'%s\' "

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v14, v13

    const/4 v13, 0x1

    aput-object v11, v14, v13

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 942
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/DBManager;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v6, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v5, v12

    .line 943
    const-string v12, "OriginalData.csv"

    invoke-static {v1, v5, v12, v3}, Lcom/wen/fluorescence/util/PublicFuction;->ExportSQLiteToCSV(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;I)Z

    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v12, :cond_e

    .line 944
    nop

    .line 1021
    if-eqz v5, :cond_d

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_d

    .line 1022
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_d
    const/4 v5, 0x0

    .line 944
    const/4 v12, 0x0

    return v12

    .line 945
    :cond_e
    :try_start_4
    const-string v12, "select * from RawData where time >= ? and time <= ?"

    move-object v6, v12

    .line 946
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/DBManager;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-virtual {v12, v6, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v5, v12

    .line 948
    if-eqz v5, :cond_11

    .line 949
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 950
    const-string v12, "serialNumber"

    .line 951
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 950
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 952
    .local v12, "serialNumber":Ljava/lang/String;
    const-string v13, "data"

    .line 953
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 952
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 954
    .local v13, "data":Ljava/lang/String;
    invoke-static {v13, v12}, Lcom/wen/fluorescence/util/PublicFuction;->saveADValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v14, :cond_10

    .line 955
    nop

    .line 1021
    if-eqz v5, :cond_f

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_f

    .line 1022
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_f
    const/4 v5, 0x0

    .line 955
    const/4 v14, 0x0

    return v14

    .line 957
    .end local v12    # "serialNumber":Ljava/lang/String;
    .end local v13    # "data":Ljava/lang/String;
    :cond_10
    goto :goto_4

    .line 959
    .end local v10    # "BeginDate":Ljava/lang/String;
    .end local v11    # "EndDate":Ljava/lang/String;
    :cond_11
    goto/16 :goto_7

    :cond_12
    const/4 v10, 0x1

    if-ne v2, v10, :cond_17

    .line 960
    :try_start_5
    const-string v10, "SELECT *  FROM OriResult"

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 961
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/DBManager;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v5, v10

    .line 962
    const-string v10, "OriginalData.csv"

    invoke-static {v1, v5, v10, v3}, Lcom/wen/fluorescence/util/PublicFuction;->ExportSQLiteToCSV(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;I)Z

    move-result v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v10, :cond_14

    .line 963
    nop

    .line 1021
    if-eqz v5, :cond_13

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_13

    .line 1022
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_13
    const/4 v5, 0x0

    .line 963
    const/4 v10, 0x0

    return v10

    .line 964
    :cond_14
    :try_start_6
    const-string v10, "select * from RawData"

    move-object v6, v10

    .line 965
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/wen/fluorescence/database/DBManager;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v5, v10

    .line 966
    if-eqz v5, :cond_1c

    .line 967
    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 968
    const-string v10, "serialNumber"

    .line 969
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 968
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 970
    .local v10, "serialNumber":Ljava/lang/String;
    const-string v11, "data"

    .line 971
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 970
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 972
    .local v11, "data":Ljava/lang/String;
    invoke-static {v11, v10}, Lcom/wen/fluorescence/util/PublicFuction;->saveADValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v12, :cond_16

    .line 973
    nop

    .line 1021
    if-eqz v5, :cond_15

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_15

    .line 1022
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_15
    const/4 v5, 0x0

    .line 973
    const/4 v12, 0x0

    return v12

    .line 975
    .end local v10    # "serialNumber":Ljava/lang/String;
    .end local v11    # "data":Ljava/lang/String;
    :cond_16
    goto :goto_5

    .line 977
    :cond_17
    const/4 v10, 0x2

    if-ne v2, v10, :cond_1c

    .line 978
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " 00:00:00"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 979
    .local v10, "BeginDate":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " 23:59:59"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 980
    .local v11, "EndDate":Ljava/lang/String;
    const-string v12, "SELECT *  FROM OriResult WHERE time >=\'%s\'  and    time<=\'%s\' "

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v14, v13

    const/4 v13, 0x1

    aput-object v11, v14, v13

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 983
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/DBManager;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v6, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v5, v12

    .line 984
    const-string v12, "OriginalData.csv"

    invoke-static {v1, v5, v12, v3}, Lcom/wen/fluorescence/util/PublicFuction;->ExportSQLiteToCSV(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;I)Z

    move-result v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v12, :cond_19

    .line 985
    nop

    .line 1021
    if-eqz v5, :cond_18

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_18

    .line 1022
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_18
    const/4 v5, 0x0

    .line 985
    const/4 v12, 0x0

    return v12

    .line 986
    :cond_19
    :try_start_8
    const-string v12, "select * from RawData where time >= ? and time <= ?"

    move-object v6, v12

    .line 987
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/wen/fluorescence/database/DBManager;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-virtual {v12, v6, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v5, v12

    .line 989
    if-eqz v5, :cond_1c

    .line 990
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 991
    const-string v12, "serialNumber"

    .line 992
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 991
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 993
    .restart local v12    # "serialNumber":Ljava/lang/String;
    const-string v13, "data"

    .line 994
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 993
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 995
    .restart local v13    # "data":Ljava/lang/String;
    invoke-static {v13, v12}, Lcom/wen/fluorescence/util/PublicFuction;->saveADValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v14, :cond_1b

    .line 996
    nop

    .line 1021
    if-eqz v5, :cond_1a

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_1a

    .line 1022
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_1a
    const/4 v5, 0x0

    .line 996
    const/4 v14, 0x0

    return v14

    .line 998
    .end local v12    # "serialNumber":Ljava/lang/String;
    .end local v13    # "data":Ljava/lang/String;
    :cond_1b
    goto :goto_6

    .line 1021
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "Date":Ljava/lang/String;
    .end local v10    # "BeginDate":Ljava/lang/String;
    .end local v11    # "EndDate":Ljava/lang/String;
    :cond_1c
    :goto_7
    if-eqz v5, :cond_1d

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 1022
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_1d
    const/4 v5, 0x0

    .line 1025
    nop

    .line 1026
    const/4 v8, 0x1

    return v8

    .line 1021
    :catchall_0
    move-exception v0

    move-object v8, v6

    move-object v6, v5

    .line 1021
    .end local v5    # "cursor":Landroid/database/Cursor;
    .local v6, "cursor":Landroid/database/Cursor;
    .local v8, "ls_select":Ljava/lang/String;
    :goto_8
    move-object v5, v0

    goto :goto_9

    .line 1017
    .end local v8    # "ls_select":Ljava/lang/String;
    .restart local v5    # "cursor":Landroid/database/Cursor;
    .local v6, "ls_select":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v6

    move-object v6, v5

    move-object v5, v0

    .line 1018
    .local v5, "e":Ljava/lang/Exception;
    .local v6, "cursor":Landroid/database/Cursor;
    .restart local v8    # "ls_select":Ljava/lang/String;
    :try_start_9
    invoke-static {v5}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1019
    nop

    .line 1021
    if-eqz v6, :cond_1e

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_1e

    .line 1022
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_1e
    const/4 v6, 0x0

    .line 1019
    const/4 v9, 0x0

    return v9

    .line 1021
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    goto :goto_8

    :goto_9
    if-eqz v6, :cond_1f

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 1022
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_1f
    const/4 v6, 0x0

    throw v5
.end method

.method private static ExportSQLiteToCSV(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;I)Z
    .locals 17
    .param p0, "contex"    # Landroid/content/Context;
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "ExportMode"    # I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1143
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/util/PublicFuction;->getUDiskFileList(Landroid/content/Context;)[Ljava/lang/String;

    .line 1147
    const/4 v3, 0x0

    .line 1148
    .local v3, "rowCount":I
    const/4 v4, 0x0

    .line 1153
    .local v4, "colCount":I
    const-string v5, ""

    .line 1154
    .local v5, "path":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 1155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/FIA_Data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1157
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/FIA_RD_Data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1160
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v6, "saveFile":Ljava/io/File;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v3, v8

    .line 1163
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    move v4, v8

    .line 1166
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1167
    .local v8, "fos":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v10, "GB2312"

    invoke-direct {v9, v8, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1168
    .local v9, "fw":Ljava/io/OutputStreamWriter;
    new-instance v10, Ljava/io/BufferedWriter;

    invoke-direct {v10, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1169
    .local v10, "bfw":Ljava/io/BufferedWriter;
    if-lez v3, :cond_a

    .line 1170
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1172
    const-string v11, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1173
    .local v11, "sHead":Ljava/lang/String;
    move-object v12, v11

    const/4 v11, 0x0

    .line 1173
    .local v11, "i":I
    .local v12, "sHead":Ljava/lang/String;
    :goto_1
    if-ge v11, v4, :cond_5

    .line 1174
    :try_start_2
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 1175
    const-string v14, "m_dimen"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1176
    const-string v14, "m_dimen1,m_dimen2"

    move-object v12, v14

    goto :goto_2

    .line 1177
    :cond_1
    const-string v14, "m_xyx"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1178
    const-string v14, "TC"

    move-object v12, v14

    goto :goto_2

    .line 1179
    :cond_2
    const-string v14, "m_xyy"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1180
    const-string v14, "Concentration"

    move-object v12, v14

    .line 1183
    :cond_3
    :goto_2
    add-int/lit8 v14, v4, -0x1

    if-eq v11, v14, :cond_4

    .line 1184
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v7, p0

    :try_start_3
    invoke-static {v7, v12}, Lcom/wen/fluorescence/util/PublicFuction;->columnToName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x2c

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 1186
    :cond_4
    move-object/from16 v7, p0

    invoke-virtual {v10, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1173
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1227
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "fw":Ljava/io/OutputStreamWriter;
    .end local v10    # "bfw":Ljava/io/BufferedWriter;
    .end local v11    # "i":I
    .end local v12    # "sHead":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto/16 :goto_c

    .line 1190
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fw":Ljava/io/OutputStreamWriter;
    .restart local v10    # "bfw":Ljava/io/BufferedWriter;
    .restart local v12    # "sHead":Ljava/lang/String;
    :cond_5
    move-object/from16 v7, p0

    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->newLine()V

    .line 1192
    const-string v11, ""

    .line 1193
    .local v11, "sContext":Ljava/lang/String;
    move-object v13, v11

    const/4 v11, 0x0

    .line 1193
    .local v11, "i":I
    .local v13, "sContext":Ljava/lang/String;
    :goto_4
    if-ge v11, v3, :cond_b

    .line 1194
    invoke-interface {v1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1198
    move-object v14, v13

    const/4 v13, 0x0

    .line 1198
    .local v13, "j":I
    .local v14, "sContext":Ljava/lang/String;
    :goto_5
    if-ge v13, v4, :cond_9

    .line 1199
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    .line 1200
    const-string v2, "sex"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v16, v3

    :try_start_5
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    .line 1200
    .end local v3    # "rowCount":I
    .local v16, "rowCount":I
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1202
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    .line 1208
    .end local v14    # "sContext":Ljava/lang/String;
    .local v2, "sContext":Ljava/lang/String;
    :goto_6
    move-object v14, v2

    goto :goto_7

    .line 1203
    .end local v2    # "sContext":Ljava/lang/String;
    .restart local v14    # "sContext":Ljava/lang/String;
    :cond_6
    const-string v2, "age"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1204
    const-string v2, "0"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1205
    const-string v2, ""

    goto :goto_6

    .line 1208
    :cond_7
    :goto_7
    add-int/lit8 v2, v4, -0x1

    if-eq v13, v2, :cond_8

    .line 1209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_8

    .line 1211
    :cond_8
    const/16 v3, 0x2c

    invoke-virtual {v10, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1198
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v16

    move-object/from16 v2, p2

    goto :goto_5

    .line 1215
    .end local v13    # "j":I
    .end local v16    # "rowCount":I
    .restart local v3    # "rowCount":I
    :cond_9
    move/from16 v16, v3

    const/16 v3, 0x2c

    .line 1215
    .end local v3    # "rowCount":I
    .restart local v16    # "rowCount":I
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->newLine()V

    .line 1193
    add-int/lit8 v11, v11, 0x1

    move-object v13, v14

    move/from16 v3, v16

    move-object/from16 v2, p2

    goto :goto_4

    .line 1231
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "fw":Ljava/io/OutputStreamWriter;
    .end local v10    # "bfw":Ljava/io/BufferedWriter;
    .end local v11    # "i":I
    .end local v12    # "sHead":Ljava/lang/String;
    .end local v14    # "sContext":Ljava/lang/String;
    .end local v16    # "rowCount":I
    .restart local v3    # "rowCount":I
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 1227
    :catch_1
    move-exception v0

    goto :goto_a

    .line 1219
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fw":Ljava/io/OutputStreamWriter;
    .restart local v10    # "bfw":Ljava/io/BufferedWriter;
    :cond_a
    move-object/from16 v7, p0

    :cond_b
    move/from16 v16, v3

    .line 1219
    .end local v3    # "rowCount":I
    .restart local v16    # "rowCount":I
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V

    .line 1220
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 1222
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    .line 1223
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V

    .line 1224
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1231
    if-eqz v1, :cond_c

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1232
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 1234
    :cond_c
    const/4 v1, 0x0

    .line 1235
    .end local p1    # "c":Landroid/database/Cursor;
    .local v1, "c":Landroid/database/Cursor;
    nop

    .line 1234
    move-object v2, v8

    .line 1234
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object v3, v9

    .line 1234
    .end local v9    # "fw":Ljava/io/OutputStreamWriter;
    .local v3, "fw":Ljava/io/OutputStreamWriter;
    move-object v8, v10

    .line 1236
    .end local v10    # "bfw":Ljava/io/BufferedWriter;
    .local v8, "bfw":Ljava/io/BufferedWriter;
    const/4 v9, 0x1

    return v9

    .line 1231
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "fw":Ljava/io/OutputStreamWriter;
    .end local v8    # "bfw":Ljava/io/BufferedWriter;
    .restart local p1    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_e

    .line 1227
    :catch_2
    move-exception v0

    move-object v2, v0

    move/from16 v3, v16

    goto :goto_d

    .line 1231
    .end local v16    # "rowCount":I
    .local v3, "rowCount":I
    :catchall_2
    move-exception v0

    move-object/from16 v7, p0

    :goto_9
    move/from16 v16, v3

    move-object v2, v0

    .line 1231
    .end local v3    # "rowCount":I
    .restart local v16    # "rowCount":I
    goto :goto_e

    .line 1227
    .end local v16    # "rowCount":I
    .restart local v3    # "rowCount":I
    :catch_3
    move-exception v0

    move-object/from16 v7, p0

    :goto_a
    move/from16 v16, v3

    move-object v2, v0

    .line 1227
    .end local v3    # "rowCount":I
    .restart local v16    # "rowCount":I
    goto :goto_d

    .line 1231
    .end local v16    # "rowCount":I
    .restart local v3    # "rowCount":I
    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    .line 1231
    .end local v3    # "rowCount":I
    .restart local v16    # "rowCount":I
    :goto_b
    move-object v2, v0

    move/from16 v16, v3

    goto :goto_e

    .line 1227
    .end local v16    # "rowCount":I
    .restart local v3    # "rowCount":I
    :catch_4
    move-exception v0

    move-object/from16 v7, p0

    :goto_c
    move-object v2, v0

    .line 1228
    .local v2, "e":Ljava/lang/Exception;
    :goto_d
    :try_start_6
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1229
    nop

    .line 1231
    if-eqz v1, :cond_d

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_d

    .line 1232
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 1234
    :cond_d
    const/4 v1, 0x0

    .line 1229
    .end local p1    # "c":Landroid/database/Cursor;
    .restart local v1    # "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    return v8

    .line 1231
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p1    # "c":Landroid/database/Cursor;
    :catchall_4
    move-exception v0

    goto :goto_b

    .line 1231
    .end local v3    # "rowCount":I
    .restart local v16    # "rowCount":I
    :goto_e
    if-eqz v1, :cond_e

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1232
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 1234
    :cond_e
    const/4 v1, 0x0

    .line 1234
    .end local p1    # "c":Landroid/database/Cursor;
    .restart local v1    # "c":Landroid/database/Cursor;
    throw v2
.end method

.method private static ExportSQLiteToCSVForHistoryData(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;I)Z
    .locals 19
    .param p0, "contex"    # Landroid/content/Context;
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "ExportMode"    # I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1033
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/util/PublicFuction;->getUDiskFileList(Landroid/content/Context;)[Ljava/lang/String;

    .line 1037
    const/4 v3, 0x0

    .line 1038
    .local v3, "rowCount":I
    const/4 v4, 0x0

    .line 1043
    .local v4, "colCount":I
    const-string v5, ""

    .line 1044
    .local v5, "path":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 1045
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/FIA_Data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1047
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/FIA_RD_Data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1050
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v6, "saveFile":Ljava/io/File;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move v3, v8

    .line 1053
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    move v4, v8

    .line 1056
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1057
    .local v8, "fos":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v10, "GB2312"

    invoke-direct {v9, v8, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1058
    .local v9, "fw":Ljava/io/OutputStreamWriter;
    new-instance v10, Ljava/io/BufferedWriter;

    invoke-direct {v10, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1059
    .local v10, "bfw":Ljava/io/BufferedWriter;
    if-lez v3, :cond_e

    .line 1060
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1062
    const-string v11, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1063
    .local v11, "sHead":Ljava/lang/String;
    move-object v12, v11

    const/4 v11, 0x0

    .line 1063
    .local v11, "i":I
    .local v12, "sHead":Ljava/lang/String;
    :goto_1
    if-ge v11, v4, :cond_5

    .line 1064
    :try_start_2
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 1065
    const-string v14, "m_dimen"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1066
    const-string v14, "m_dimen1,m_dimen2"

    move-object v12, v14

    goto :goto_2

    .line 1067
    :cond_1
    const-string v14, "m_xyx"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1068
    const-string v14, "TC"

    move-object v12, v14

    goto :goto_2

    .line 1069
    :cond_2
    const-string v14, "m_xyy"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1070
    const-string v14, "Concentration"

    move-object v12, v14

    .line 1073
    :cond_3
    :goto_2
    add-int/lit8 v14, v4, -0x1

    if-eq v11, v14, :cond_4

    .line 1074
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, p0

    :try_start_3
    invoke-static {v7, v12}, Lcom/wen/fluorescence/util/PublicFuction;->columnToName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x2c

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 1076
    :cond_4
    move-object/from16 v7, p0

    invoke-virtual {v10, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1063
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1131
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "fw":Ljava/io/OutputStreamWriter;
    .end local v10    # "bfw":Ljava/io/BufferedWriter;
    .end local v11    # "i":I
    .end local v12    # "sHead":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1127
    :catch_0
    move-exception v0

    goto :goto_5

    .line 1131
    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    .line 1131
    .end local v3    # "rowCount":I
    .end local v5    # "path":Ljava/lang/String;
    .local v16, "rowCount":I
    .local v17, "path":Ljava/lang/String;
    :goto_4
    move-object v2, v0

    move/from16 v16, v3

    move-object/from16 v17, v5

    goto/16 :goto_10

    .line 1127
    .end local v16    # "rowCount":I
    .end local v17    # "path":Ljava/lang/String;
    .restart local v3    # "rowCount":I
    .restart local v5    # "path":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v7, p0

    .line 1127
    .end local v5    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    :goto_5
    move-object v2, v0

    move-object/from16 v17, v5

    goto/16 :goto_f

    .line 1080
    .end local v17    # "path":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fw":Ljava/io/OutputStreamWriter;
    .restart local v10    # "bfw":Ljava/io/BufferedWriter;
    .restart local v12    # "sHead":Ljava/lang/String;
    :cond_5
    move-object/from16 v7, p0

    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->newLine()V

    .line 1082
    const-string v11, ""

    .line 1083
    .local v11, "sContext":Ljava/lang/String;
    move-object v13, v11

    const/4 v11, 0x0

    .line 1083
    .local v11, "i":I
    .local v13, "sContext":Ljava/lang/String;
    :goto_6
    if-ge v11, v3, :cond_f

    .line 1084
    invoke-interface {v1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1088
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v14

    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/wen/fluorescence/database/DBManager;->queryTestResultByID(I)Lcom/wen/fluorescence/database/TestResult;

    move-result-object v2

    .line 1089
    .local v2, "testResult":Lcom/wen/fluorescence/database/TestResult;
    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v14

    .line 1090
    .local v14, "item":Ljava/lang/String;
    invoke-static {v2}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult2(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;

    move-result-object v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1091
    .local v15, "showResult":Ljava/lang/String;
    move/from16 v16, v3

    :try_start_5
    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v3

    .line 1091
    .end local v3    # "rowCount":I
    .restart local v16    # "rowCount":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v17, v5

    :try_start_6
    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v5

    .line 1091
    .end local v5    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1092
    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto :goto_7

    .line 1094
    .end local v17    # "path":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v5

    .line 1094
    .end local v5    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    :cond_7
    :goto_7
    const/4 v3, 0x0

    .line 1094
    .local v3, "j":I
    :goto_8
    if-ge v3, v4, :cond_d

    .line 1095
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1096
    .end local v13    # "sContext":Ljava/lang/String;
    .local v5, "sContext":Ljava/lang/String;
    const-string v13, "sex"

    move-object/from16 v18, v2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 1096
    .end local v2    # "testResult":Lcom/wen/fluorescence/database/TestResult;
    .local v18, "testResult":Lcom/wen/fluorescence/database/TestResult;
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1098
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v13, 0x7f020006

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v2, v2, v13

    .line 1108
    .end local v5    # "sContext":Ljava/lang/String;
    .local v2, "sContext":Ljava/lang/String;
    .restart local v13    # "sContext":Ljava/lang/String;
    :goto_9
    move-object v13, v2

    goto :goto_a

    .line 1099
    .end local v2    # "sContext":Ljava/lang/String;
    .end local v13    # "sContext":Ljava/lang/String;
    .restart local v5    # "sContext":Ljava/lang/String;
    :cond_8
    const-string v2, "age"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1100
    const-string v2, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1101
    const-string v2, ""

    goto :goto_9

    .line 1103
    :cond_9
    const-string v2, "result"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1104
    move-object v2, v15

    goto :goto_9

    .line 1105
    :cond_a
    const-string v2, "item"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1106
    move-object v2, v14

    goto :goto_9

    .line 1108
    :cond_b
    move-object v13, v5

    .line 1108
    .end local v5    # "sContext":Ljava/lang/String;
    .restart local v13    # "sContext":Ljava/lang/String;
    :goto_a
    add-int/lit8 v2, v4, -0x1

    if-eq v3, v2, :cond_c

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_b

    .line 1111
    :cond_c
    const/16 v5, 0x2c

    invoke-virtual {v10, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1094
    :goto_b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v18

    goto :goto_8

    .line 1115
    .end local v3    # "j":I
    .end local v18    # "testResult":Lcom/wen/fluorescence/database/TestResult;
    .local v2, "testResult":Lcom/wen/fluorescence/database/TestResult;
    :cond_d
    move-object/from16 v18, v2

    const/16 v5, 0x2c

    .line 1115
    .end local v2    # "testResult":Lcom/wen/fluorescence/database/TestResult;
    .restart local v18    # "testResult":Lcom/wen/fluorescence/database/TestResult;
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->newLine()V

    .line 1083
    .end local v14    # "item":Ljava/lang/String;
    .end local v15    # "showResult":Ljava/lang/String;
    .end local v18    # "testResult":Lcom/wen/fluorescence/database/TestResult;
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    move-object/from16 v5, v17

    move-object/from16 v2, p2

    goto/16 :goto_6

    .line 1131
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "fw":Ljava/io/OutputStreamWriter;
    .end local v10    # "bfw":Ljava/io/BufferedWriter;
    .end local v11    # "i":I
    .end local v12    # "sHead":Ljava/lang/String;
    .end local v13    # "sContext":Ljava/lang/String;
    .end local v17    # "path":Ljava/lang/String;
    .local v5, "path":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v5

    move-object v2, v0

    goto/16 :goto_e

    .line 1127
    :catch_2
    move-exception v0

    move-object/from16 v17, v5

    move-object v2, v0

    move/from16 v3, v16

    goto/16 :goto_f

    .line 1131
    .end local v16    # "rowCount":I
    .local v3, "rowCount":I
    :catchall_3
    move-exception v0

    goto :goto_c

    .line 1127
    :catch_3
    move-exception v0

    goto :goto_d

    .line 1119
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fw":Ljava/io/OutputStreamWriter;
    .restart local v10    # "bfw":Ljava/io/BufferedWriter;
    :cond_e
    move-object/from16 v7, p0

    :cond_f
    move/from16 v16, v3

    move-object/from16 v17, v5

    .line 1119
    .end local v3    # "rowCount":I
    .end local v5    # "path":Ljava/lang/String;
    .restart local v16    # "rowCount":I
    .restart local v17    # "path":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V

    .line 1120
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 1122
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    .line 1123
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V

    .line 1124
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1131
    if-eqz v1, :cond_10

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1132
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 1134
    :cond_10
    const/4 v1, 0x0

    .line 1135
    .end local p1    # "c":Landroid/database/Cursor;
    .local v1, "c":Landroid/database/Cursor;
    nop

    .line 1134
    move-object v2, v8

    .line 1134
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object v3, v9

    .line 1134
    .end local v9    # "fw":Ljava/io/OutputStreamWriter;
    .local v3, "fw":Ljava/io/OutputStreamWriter;
    move-object v5, v10

    .line 1136
    .end local v10    # "bfw":Ljava/io/BufferedWriter;
    .local v5, "bfw":Ljava/io/BufferedWriter;
    const/4 v8, 0x1

    return v8

    .line 1131
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "fw":Ljava/io/OutputStreamWriter;
    .end local v5    # "bfw":Ljava/io/BufferedWriter;
    .restart local p1    # "c":Landroid/database/Cursor;
    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_10

    .line 1127
    :catch_4
    move-exception v0

    move-object v2, v0

    move/from16 v3, v16

    goto :goto_f

    .line 1131
    .end local v16    # "rowCount":I
    .end local v17    # "path":Ljava/lang/String;
    .local v3, "rowCount":I
    .local v5, "path":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v7, p0

    :goto_c
    move/from16 v16, v3

    move-object/from16 v17, v5

    move-object v2, v0

    .line 1131
    .end local v3    # "rowCount":I
    .end local v5    # "path":Ljava/lang/String;
    .restart local v16    # "rowCount":I
    .restart local v17    # "path":Ljava/lang/String;
    goto :goto_10

    .line 1127
    .end local v16    # "rowCount":I
    .end local v17    # "path":Ljava/lang/String;
    .restart local v3    # "rowCount":I
    .restart local v5    # "path":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v7, p0

    :goto_d
    move/from16 v16, v3

    move-object/from16 v17, v5

    move-object v2, v0

    .line 1127
    .end local v3    # "rowCount":I
    .end local v5    # "path":Ljava/lang/String;
    .restart local v16    # "rowCount":I
    .restart local v17    # "path":Ljava/lang/String;
    goto :goto_f

    .line 1131
    .end local v16    # "rowCount":I
    .end local v17    # "path":Ljava/lang/String;
    .restart local v3    # "rowCount":I
    .restart local v5    # "path":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v17, v5

    move-object v2, v0

    move/from16 v16, v3

    .line 1131
    .end local v3    # "rowCount":I
    .end local v5    # "path":Ljava/lang/String;
    .restart local v16    # "rowCount":I
    .restart local v17    # "path":Ljava/lang/String;
    :goto_e
    goto :goto_10

    .line 1127
    .end local v16    # "rowCount":I
    .end local v17    # "path":Ljava/lang/String;
    .restart local v3    # "rowCount":I
    .restart local v5    # "path":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v17, v5

    move-object v2, v0

    .line 1128
    .end local v5    # "path":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v17    # "path":Ljava/lang/String;
    :goto_f
    :try_start_7
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 1129
    nop

    .line 1131
    if-eqz v1, :cond_11

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_11

    .line 1132
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 1134
    :cond_11
    const/4 v1, 0x0

    .line 1129
    .end local p1    # "c":Landroid/database/Cursor;
    .restart local v1    # "c":Landroid/database/Cursor;
    const/4 v5, 0x0

    return v5

    .line 1131
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p1    # "c":Landroid/database/Cursor;
    :catchall_7
    move-exception v0

    move-object v2, v0

    move/from16 v16, v3

    .line 1131
    .end local v3    # "rowCount":I
    .restart local v16    # "rowCount":I
    :goto_10
    if-eqz v1, :cond_12

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_12

    .line 1132
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 1134
    :cond_12
    const/4 v1, 0x0

    .line 1134
    .end local p1    # "c":Landroid/database/Cursor;
    .restart local v1    # "c":Landroid/database/Cursor;
    throw v2
.end method

.method public static StrToByteS(Ljava/lang/String;)[B
    .locals 2
    .param p0, "Str"    # Ljava/lang/String;

    .line 801
    const/4 v0, 0x0

    .line 803
    .local v0, "srtbyte":[B
    :try_start_0
    const-string v1, "GB2312"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 807
    goto :goto_0

    .line 805
    :catch_0
    move-exception v1

    .line 806
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 808
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static addZeroForNum(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "strLength"    # I

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 51
    .local v0, "strLen":I
    if-ge v0, p1, :cond_0

    .line 52
    :goto_0
    if-ge v0, p1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 58
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 60
    :cond_0
    return-object p0
.end method

.method public static byte4ToInt([B)I
    .locals 2
    .param p0, "b"    # [B

    .line 114
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static byteToHexString(B)Ljava/lang/String;
    .locals 4
    .param p0, "bArray"    # B

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/16 v1, 0xff

    and-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "sTemp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 108
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static byteToHexString([BI)Ljava/lang/String;
    .locals 6
    .param p0, "bArray"    # [B
    .param p1, "size"    # I

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    div-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 88
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    move v2, v1

    .line 88
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 89
    const/16 v3, 0xff

    aget-byte v4, p0, v2

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "sTemp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 92
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "i":I
    .end local v3    # "sTemp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static bytes8ToDouble([B)D
    .locals 7
    .param p0, "arr"    # [B

    .line 128
    const-wide/16 v0, 0x0

    .line 129
    .local v0, "value":J
    const/4 v2, 0x0

    .line 129
    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 130
    rsub-int/lit8 v4, v2, 0x7

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    mul-int/2addr v3, v2

    shl-long v3, v4, v3

    or-long v5, v0, v3

    .line 129
    .end local v0    # "value":J
    .local v5, "value":J
    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    goto :goto_0

    .line 132
    .end local v2    # "i":I
    .end local v5    # "value":J
    .restart local v0    # "value":J
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method private static charToByte(C)B
    .locals 1
    .param p0, "c"    # C

    .line 225
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method private static columnToName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "contex"    # Landroid/content/Context;
    .param p1, "column"    # Ljava/lang/String;

    .line 1241
    move-object v0, p1

    .line 1242
    .local v0, "name":Ljava/lang/String;
    const-string v1, "id"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1243
    const-string v0, "NO"

    goto/16 :goto_1

    .line 1244
    :cond_0
    const-string v1, "serialNumber"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1245
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1246
    :cond_1
    const-string v1, "sampleNumber"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1247
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1248
    :cond_2
    const-string v1, "simpleType"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1249
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1250
    :cond_3
    const-string v1, "logNO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1251
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1252
    :cond_4
    const-string v1, "item"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1253
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1254
    :cond_5
    const-string v1, "result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0c0149

    if-eqz v1, :cond_6

    .line 1255
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1256
    :cond_6
    const-string v1, "unit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1257
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1258
    :cond_7
    const-string v1, "qualitativeVerdict"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1259
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_9

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    const/4 v3, 0x7

    if-lt v1, v3, :cond_8

    goto :goto_0

    .line 1262
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1260
    :cond_9
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1264
    :cond_a
    const-string v1, "testtime"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1265
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1266
    :cond_b
    const-string v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1267
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1268
    :cond_c
    const-string v1, "age"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1269
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1270
    :cond_d
    const-string v1, "sex"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1271
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1272
    :cond_e
    const-string v1, "bedNumber"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1273
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1274
    :cond_f
    const-string v1, "patientNumber"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1276
    :cond_10
    const-string v1, "doctorNumber"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1277
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1278
    :cond_11
    const-string v1, "submittingDivision"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0181

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1280
    :cond_12
    const-string v1, "submittingDoctor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1281
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0182

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1282
    :cond_13
    const-string v1, "submittingTime"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0183

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1284
    :cond_14
    const-string v1, "reviewer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1286
    :cond_15
    const-string v1, "inspectingDoctor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1288
    :cond_16
    const-string v1, "inspectingTime"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1289
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1290
    :cond_17
    const-string v1, "note"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1291
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1293
    :cond_18
    :goto_1
    return-object v0
.end method

.method public static convertHexToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "hex"    # Ljava/lang/String;

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v1, "temp":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 255
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 257
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "output":Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 261
    .local v4, "decimal":I
    int-to-char v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .end local v3    # "output":Ljava/lang/String;
    .end local v4    # "decimal":I
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 264
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCalibrationResult(Landroid/content/Context;DLjava/lang/String;)D
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # D
    .param p3, "item"    # Ljava/lang/String;

    .line 341
    invoke-static {p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/wen/fluorescence/database/DBManager;->queryItemParaForName(Ljava/lang/String;)Lcom/wen/fluorescence/database/ItemPara;

    move-result-object v0

    .line 342
    .local v0, "itemPara":Lcom/wen/fluorescence/database/ItemPara;
    if-nez v0, :cond_0

    return-wide p1

    .line 344
    :cond_0
    const/4 v1, 0x2

    .line 345
    .local v1, "digit":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "temResult":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 350
    :cond_1
    const-string v3, "F200"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6821\u51c6\u524d\u7ed3\u679c\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getK()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getK()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    :goto_0
    const-string v3, "1"

    .line 352
    .local v3, "kStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getB()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getB()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    :goto_2
    const-string v4, "0"

    .line 353
    .local v4, "bStr":Ljava/lang/String;
    :goto_3
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 354
    .local v5, "k":D
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 355
    .local v7, "b":D
    mul-double v9, v5, p1

    add-double/2addr v9, v7

    invoke-static {v9, v10, v1}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide p1

    .line 356
    const-string v9, "F200"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u6821\u51c6\u540e\u7ed3\u679c\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-wide p1
.end method

.method public static getCharCount(Ljava/lang/String;C)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "c"    # C

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "count":I
    const/4 v1, 0x0

    .line 237
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 238
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_0

    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1419
    invoke-static {}, Lcom/wen/fluorescence/util/PublicFuction;->readFileSdcardFile()Ljava/lang/String;

    move-result-object v0

    .line 1420
    .local v0, "deviceID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1421
    invoke-static {p0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "DevicedID"

    const-string v3, ""

    .line 1422
    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    invoke-static {p0}, Lcom/wen/fluorescence/util/PublicFuction;->getMacDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1428
    :cond_0
    return-object v0
.end method

.method public static getItemType()Ljava/lang/String;
    .locals 3

    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "type":I
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getLanguage()I

    move-result v1

    const v2, 0x1a00001

    if-ne v1, v2, :cond_0

    .line 819
    const/4 v0, 0x0

    goto :goto_0

    .line 821
    :cond_0
    const/4 v0, 0x1

    .line 823
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getLocalMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 827
    const/4 v0, 0x0

    .line 828
    .local v0, "mac":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 829
    return-object v0

    .line 832
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    .line 833
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 834
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_1

    .line 835
    return-object v0

    .line 837
    :cond_1
    const/4 v2, 0x0

    move-object v3, v2

    .line 839
    .local v3, "info":Landroid/net/wifi/WifiInfo;
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 842
    goto :goto_0

    .line 840
    :catch_0
    move-exception v4

    .line 843
    :goto_0
    if-nez v3, :cond_2

    .line 844
    return-object v2

    .line 846
    :cond_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 847
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 848
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 850
    :cond_3
    return-object v0
.end method

.method public static getLocaleLanguage(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 308
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    const v1, 0x1a00002

    invoke-static {p0, v1}, Lcom/wen/fluorescence/util/SaveLanguaeInfo;->getLanguage(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/Global;->setLanguage(I)V

    .line 309
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v0

    const v1, 0x7f020002

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 335
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    goto :goto_1

    .line 332
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    .line 333
    goto :goto_1

    .line 311
    :pswitch_2
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 327
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    goto :goto_0

    .line 323
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    .line 324
    goto :goto_0

    .line 320
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    .line 321
    goto :goto_0

    .line 315
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wen/fluorescence/util/PublicFuction;->arraySample:[Ljava/lang/String;

    .line 316
    nop

    .line 330
    :goto_0
    nop

    .line 338
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getMacDefault(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 854
    const/4 v0, 0x0

    .line 855
    .local v0, "mac":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    invoke-static {p0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "MAC_LOCAL"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 859
    const-string v1, "as"

    const-string v2, "====getMacDefault===="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 861
    .local v1, "lTime":J
    invoke-static {p0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v3

    const-string v4, "MAC_LOCAL"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-static {p0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v3

    const-string v4, "MAC_LOCAL"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .end local v1    # "lTime":J
    :cond_1
    return-object v0
.end method

.method public static getMoreChargeForItemAndResult(Landroid/content/Context;DLjava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dResult"    # D
    .param p3, "item"    # Ljava/lang/String;

    move-wide/from16 v0, p1

    .line 368
    const-string v2, ""

    .line 369
    .local v2, "temItem":Ljava/lang/String;
    const-string v3, ""

    .line 370
    .local v3, "temResult":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/database/DBManager;->queryItemParaForName(Ljava/lang/String;)Lcom/wen/fluorescence/database/ItemPara;

    move-result-object v4

    .line 371
    .local v4, "itemPara":Lcom/wen/fluorescence/database/ItemPara;
    if-nez v4, :cond_0

    return-object v3

    .line 373
    :cond_0
    const/4 v6, 0x2

    .line 374
    .local v6, "digit":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 375
    .local v7, "tem":Ljava/lang/String;
    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    .line 376
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    sub-int/2addr v8, v10

    add-int/lit8 v6, v8, -0x1

    .line 379
    :cond_1
    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode1()I

    move-result v8

    if-ne v8, v9, :cond_6

    .line 380
    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarK1()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarK1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarK1()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    :goto_0
    const-string v8, "1"

    .line 381
    .local v8, "kStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarB1()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarB1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarB1()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_5
    :goto_2
    const-string v10, "0"

    .line 382
    .local v10, "bStr":Ljava/lang/String;
    :goto_3
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 383
    .local v11, "k1":D
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 384
    .local v13, "b1":D
    mul-double v15, v11, v0

    move-object/from16 v17, v10

    add-double v9, v15, v13

    .line 384
    .end local v10    # "bStr":Ljava/lang/String;
    .local v17, "bStr":Ljava/lang/String;
    invoke-static {v9, v10, v6}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v9

    .line 386
    .local v9, "y1":D
    const-string v15, "F200"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    const-string v7, "\u8f6c\u6362Y1\u7ed3\u679c\uff1a"

    .line 386
    .end local v7    # "tem":Ljava/lang/String;
    .local v18, "tem":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    .end local v8    # "kStr":Ljava/lang/String;
    .end local v9    # "y1":D
    .end local v11    # "k1":D
    .end local v13    # "b1":D
    .end local v17    # "bStr":Ljava/lang/String;
    goto :goto_4

    .line 391
    .end local v18    # "tem":Ljava/lang/String;
    .restart local v7    # "tem":Ljava/lang/String;
    :cond_6
    move-object/from16 v18, v7

    .line 391
    .end local v7    # "tem":Ljava/lang/String;
    .restart local v18    # "tem":Ljava/lang/String;
    :goto_4
    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode2()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    .line 392
    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarK2()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarK2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarK2()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_8
    :goto_5
    const-string v5, "1"

    .line 393
    .local v5, "kStr":Ljava/lang/String;
    :goto_6
    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarB2()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarB2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarB2()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_a
    :goto_7
    const-string v7, "0"

    .line 394
    .local v7, "bStr":Ljava/lang/String;
    :goto_8
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 395
    .local v8, "k2":D
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 396
    .local v10, "b2":D
    mul-double v12, v8, v0

    add-double/2addr v12, v10

    invoke-static {v12, v13, v6}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v12

    .line 398
    .local v12, "y2":D
    const-string v14, "F200"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8f6c\u6362Y2\u7ed3\u679c\uff1a"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    .end local v5    # "kStr":Ljava/lang/String;
    .end local v7    # "bStr":Ljava/lang/String;
    .end local v8    # "k2":D
    .end local v10    # "b2":D
    .end local v12    # "y2":D
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNewResult(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/database/ItemPara;)Ljava/lang/String;
    .locals 14
    .param p0, "testResult"    # Lcom/wen/fluorescence/database/TestResult;
    .param p1, "itemPara"    # Lcom/wen/fluorescence/database/ItemPara;

    .line 439
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v0

    if-gez v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 442
    :cond_0
    if-nez p1, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 445
    :cond_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "temResult":Ljava/lang/String;
    const-string v1, ""

    .line 447
    .local v1, "flagStr":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 449
    .local v2, "dResult":D
    const/4 v4, 0x2

    .line 450
    .local v4, "digit":I
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 451
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, -0x1

    .line 454
    :cond_2
    const-string v5, ">="

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 455
    const-string v1, ">="

    .line 456
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 457
    :cond_3
    const-string v5, ">"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 458
    const-string v1, ">"

    .line 459
    const-string v5, ">"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 460
    :cond_4
    const-string v5, "<="

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 461
    const-string v1, "<="

    .line 462
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_5
    const-string v5, "<"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 464
    const-string v1, "<"

    .line 465
    const-string v5, "<"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    :cond_6
    :goto_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 470
    const-string v5, "F200"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6821\u51c6\u524d\u7ed3\u679c\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getK()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getK()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getK()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    :goto_1
    const-string v5, "1"

    .line 472
    .local v5, "kStr":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getB()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getB()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lcom/wen/fluorescence/database/ItemPara;->getB()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_a
    :goto_3
    const-string v6, "0"

    .line 473
    .local v6, "bStr":Ljava/lang/String;
    :goto_4
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 474
    .local v7, "k":D
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 475
    .local v9, "b":D
    mul-double v11, v7, v2

    add-double/2addr v11, v9

    invoke-static {v11, v12, v4}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v2

    .line 477
    const-string v11, "F200"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6821\u51c6\u540e\u7ed3\u679c\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v11, "F200"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6821\u51c6\u540e\u7ed3\u679cflag\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public static getOnlyConclusion(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;
    .locals 1
    .param p0, "testResult"    # Lcom/wen/fluorescence/database/TestResult;

    .line 793
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v0

    if-nez v0, :cond_0

    .line 794
    const-string v0, ""

    return-object v0

    .line 796
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOnlyResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;
    .locals 1
    .param p0, "testResult"    # Lcom/wen/fluorescence/database/TestResult;

    .line 788
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getShowResult(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "QualitativeVerdict"    # I
    .param p1, "isShowResult"    # I
    .param p2, "isShowVerdict"    # I
    .param p3, "item"    # Ljava/lang/String;
    .param p4, "result"    # Ljava/lang/String;
    .param p5, "unit"    # Ljava/lang/String;
    .param p6, "verdict"    # Ljava/lang/String;

    .line 498
    if-nez p0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 502
    :cond_0
    const-string v0, ""

    .line 503
    .local v0, "sShowResult":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 505
    if-ne p1, v1, :cond_1

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 510
    :cond_1
    move-object v0, p6

    goto :goto_1

    .line 514
    :cond_2
    if-ne p1, v1, :cond_3

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 519
    :cond_3
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_5

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_4

    goto :goto_0

    .line 522
    :cond_4
    const-string v0, "--"

    goto :goto_1

    .line 520
    :cond_5
    :goto_0
    move-object v0, p6

    .line 533
    :goto_1
    return-object v0
.end method

.method public static getShowResult(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;
    .locals 8
    .param p0, "testResult"    # Lcom/wen/fluorescence/database/TestResult;

    .line 406
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v0

    if-gez v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v1

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v2

    .line 410
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v3

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v6

    .line 411
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v7

    .line 409
    invoke-static/range {v1 .. v7}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getShowResult2(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "QualitativeVerdict"    # I
    .param p1, "isShowResult"    # I
    .param p2, "isShowVerdict"    # I
    .param p3, "item"    # Ljava/lang/String;
    .param p4, "result"    # Ljava/lang/String;
    .param p5, "unit"    # Ljava/lang/String;
    .param p6, "verdict"    # Ljava/lang/String;
    .param p7, "reItem"    # Ljava/lang/String;
    .param p8, "reResult"    # Ljava/lang/String;

    .line 537
    const-string v0, ""

    .line 538
    .local v0, "sShowResult":Ljava/lang/String;
    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_6

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 539
    if-nez p0, :cond_0

    .line 540
    return-object p8

    .line 544
    :cond_0
    if-ne p2, v4, :cond_2

    .line 546
    if-ne p1, v4, :cond_1

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 551
    :cond_1
    move-object v0, p6

    goto/16 :goto_2

    .line 555
    :cond_2
    if-ne p1, v4, :cond_3

    .line 557
    move-object v0, p8

    goto/16 :goto_2

    .line 560
    :cond_3
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    if-le v1, v3, :cond_5

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    if-lt v1, v2, :cond_4

    goto :goto_0

    .line 563
    :cond_4
    const-string v0, "--"

    goto/16 :goto_2

    .line 561
    :cond_5
    :goto_0
    move-object v0, p6

    goto/16 :goto_2

    .line 568
    :cond_6
    if-nez p0, :cond_7

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 573
    :cond_7
    if-ne p2, v4, :cond_9

    .line 575
    if-ne p1, v4, :cond_8

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 580
    :cond_8
    move-object v0, p6

    goto :goto_2

    .line 584
    :cond_9
    if-ne p1, v4, :cond_a

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 589
    :cond_a
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    if-le v1, v3, :cond_c

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    if-lt v1, v2, :cond_b

    goto :goto_1

    .line 592
    :cond_b
    const-string v0, "--"

    goto :goto_2

    .line 590
    :cond_c
    :goto_1
    move-object v0, p6

    .line 597
    :goto_2
    return-object v0
.end method

.method public static getShowResult2(Lcom/wen/fluorescence/database/TestResult;)Ljava/lang/String;
    .locals 10
    .param p0, "testResult"    # Lcom/wen/fluorescence/database/TestResult;

    .line 415
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v0

    if-gez v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v1

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v2

    .line 419
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v3

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v6

    .line 420
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v9

    .line 418
    invoke-static/range {v1 .. v9}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResult2(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getShowResultFor2(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wen/fluorescence/bean/TemResultBean;
    .locals 6
    .param p0, "QualitativeVerdict"    # I
    .param p1, "isShowResult"    # I
    .param p2, "isShowVerdict"    # I
    .param p3, "item"    # Ljava/lang/String;
    .param p4, "result"    # Ljava/lang/String;
    .param p5, "unit"    # Ljava/lang/String;
    .param p6, "verdict"    # Ljava/lang/String;
    .param p7, "reItem"    # Ljava/lang/String;
    .param p8, "reResult"    # Ljava/lang/String;

    .line 601
    new-instance v0, Lcom/wen/fluorescence/bean/TemResultBean;

    invoke-direct {v0}, Lcom/wen/fluorescence/bean/TemResultBean;-><init>()V

    .line 602
    .local v0, "bean":Lcom/wen/fluorescence/bean/TemResultBean;
    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_6

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 603
    invoke-virtual {v0, p7}, Lcom/wen/fluorescence/bean/TemResultBean;->setItemName(Ljava/lang/String;)V

    .line 604
    if-nez p0, :cond_0

    .line 605
    invoke-virtual {v0, v4}, Lcom/wen/fluorescence/bean/TemResultBean;->setCode(I)V

    .line 606
    invoke-virtual {v0, p8}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 607
    return-object v0

    .line 609
    :cond_0
    invoke-virtual {v0, v5}, Lcom/wen/fluorescence/bean/TemResultBean;->setCode(I)V

    .line 611
    if-ne p2, v5, :cond_2

    .line 613
    if-ne p1, v5, :cond_1

    .line 615
    invoke-virtual {v0, p8}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0, p6}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 619
    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0, p6}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 624
    :cond_2
    if-ne p1, v5, :cond_3

    .line 626
    invoke-virtual {v0, p8}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 627
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 630
    :cond_3
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 631
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    if-le v1, v3, :cond_5

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    if-lt v1, v2, :cond_4

    goto :goto_0

    .line 634
    :cond_4
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 632
    :cond_5
    :goto_0
    invoke-virtual {v0, p6}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 639
    :cond_6
    invoke-virtual {v0, p3}, Lcom/wen/fluorescence/bean/TemResultBean;->setItemName(Ljava/lang/String;)V

    .line 640
    if-nez p0, :cond_7

    .line 641
    invoke-virtual {v0, v4}, Lcom/wen/fluorescence/bean/TemResultBean;->setCode(I)V

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 643
    return-object v0

    .line 645
    :cond_7
    invoke-virtual {v0, v5}, Lcom/wen/fluorescence/bean/TemResultBean;->setCode(I)V

    .line 647
    if-ne p2, v5, :cond_9

    .line 649
    if-ne p1, v5, :cond_8

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0, p6}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    goto :goto_2

    .line 655
    :cond_8
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0, p6}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    goto :goto_2

    .line 660
    :cond_9
    if-ne p1, v5, :cond_a

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 663
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    goto :goto_2

    .line 666
    :cond_a
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    if-le v1, v3, :cond_c

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    if-lt v1, v2, :cond_b

    goto :goto_1

    .line 670
    :cond_b
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    goto :goto_2

    .line 668
    :cond_c
    :goto_1
    invoke-virtual {v0, p6}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    .line 683
    :goto_2
    return-object v0
.end method

.method public static getShowResultFor2(Lcom/wen/fluorescence/database/TestResult;)Lcom/wen/fluorescence/bean/TemResultBean;
    .locals 11
    .param p0, "testResult"    # Lcom/wen/fluorescence/database/TestResult;

    .line 424
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v0

    if-gez v0, :cond_0

    .line 425
    new-instance v0, Lcom/wen/fluorescence/bean/TemResultBean;

    invoke-direct {v0}, Lcom/wen/fluorescence/bean/TemResultBean;-><init>()V

    .line 426
    .local v0, "bean":Lcom/wen/fluorescence/bean/TemResultBean;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setCode(I)V

    .line 427
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setItemName(Ljava/lang/String;)V

    .line 430
    return-object v0

    .line 432
    .end local v0    # "bean":Lcom/wen/fluorescence/bean/TemResultBean;
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v2

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v3

    .line 433
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v4

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v7

    .line 434
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getReItem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getReResult()Ljava/lang/String;

    move-result-object v10

    .line 432
    invoke-static/range {v2 .. v10}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResultFor2(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wen/fluorescence/bean/TemResultBean;

    move-result-object v0

    return-object v0
.end method

.method private static getShowResultForItemPara(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/database/ItemPara;)Lcom/wen/fluorescence/bean/TemResultBean;
    .locals 26
    .param p0, "QualitativeVerdict"    # I
    .param p1, "isShowResult"    # I
    .param p2, "isShowVerdict"    # I
    .param p3, "item"    # Ljava/lang/String;
    .param p4, "temResult"    # Ljava/lang/String;
    .param p5, "unit"    # Ljava/lang/String;
    .param p6, "verdict"    # Ljava/lang/String;
    .param p7, "itemPara"    # Lcom/wen/fluorescence/database/ItemPara;

    move/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 687
    new-instance v4, Lcom/wen/fluorescence/bean/TemResultBean;

    invoke-direct {v4}, Lcom/wen/fluorescence/bean/TemResultBean;-><init>()V

    .line 689
    .local v4, "bean":Lcom/wen/fluorescence/bean/TemResultBean;
    const-wide/16 v5, 0x0

    .line 690
    .local v5, "dResult":D
    const/4 v7, 0x1

    if-eqz p7, :cond_f

    .line 691
    const/4 v9, 0x2

    .line 692
    .local v9, "digit":I
    const-string v10, ""

    .line 693
    .local v10, "flagStr":Ljava/lang/String;
    const-string v11, "."

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 694
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, "."

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    sub-int/2addr v11, v12

    add-int/lit8 v9, v11, -0x1

    .line 695
    const-string v11, "F200"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u7ed3\u679c\u957f\u5ea6\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",\u5c0f\u6570\u70b9\u4e0b\u6807\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\u5c0f\u6570\u70b9\u4f4d\u6570\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    const-string v11, ">="

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 698
    const-string v10, ">="

    .line 699
    const-string v11, "="

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 699
    .end local p4    # "temResult":Ljava/lang/String;
    .local v1, "temResult":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 700
    .end local v1    # "temResult":Ljava/lang/String;
    .restart local p4    # "temResult":Ljava/lang/String;
    :cond_1
    const-string v11, ">"

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 701
    const-string v10, ">"

    .line 702
    const-string v11, ">"

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 703
    :cond_2
    const-string v11, "<="

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 704
    const-string v10, "<="

    .line 705
    const-string v11, "="

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 706
    :cond_3
    const-string v11, "<"

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 707
    const-string v10, "<"

    .line 708
    const-string v11, "<"

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 713
    .end local p4    # "temResult":Ljava/lang/String;
    .restart local v1    # "temResult":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 718
    const-string v11, "F200"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "temResult\u539f\u59cb\u7ed3\u679c\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-string v11, "F200"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u539f\u59cb\u7ed3\u679c\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 721
    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode1()I

    move-result v11

    if-ne v11, v7, :cond_9

    .line 722
    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarK1()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarK1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarK1()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_6
    :goto_2
    const-string v11, "1"

    .line 723
    .local v11, "kStr":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarB1()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarB1()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarB1()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_8
    :goto_4
    const-string v12, "0"

    .line 724
    .local v12, "bStr":Ljava/lang/String;
    :goto_5
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 725
    .local v13, "k1":D
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 726
    .local v15, "b1":D
    mul-double v17, v13, v5

    add-double v7, v17, v15

    invoke-static {v7, v8, v9}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v7

    .line 728
    .local v7, "y1":D
    move-object/from16 v19, v10

    const-string v10, "F200"

    .line 728
    .end local v10    # "flagStr":Ljava/lang/String;
    .local v19, "flagStr":Ljava/lang/String;
    move-object/from16 v20, v11

    new-instance v11, Ljava/lang/StringBuilder;

    .line 728
    .end local v11    # "kStr":Ljava/lang/String;
    .local v20, "kStr":Ljava/lang/String;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v12

    const-string v12, "\u8f6c\u6362Y1\u7ed3\u679c\uff1a"

    .line 728
    .end local v12    # "bStr":Ljava/lang/String;
    .local v21, "bStr":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 730
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, p3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate1()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 730
    .end local v13    # "k1":D
    .end local v15    # "b1":D
    .end local v20    # "kStr":Ljava/lang/String;
    .end local v21    # "bStr":Ljava/lang/String;
    .end local p3    # "item":Ljava/lang/String;
    .local v7, "item":Ljava/lang/String;
    goto :goto_6

    .line 733
    .end local v7    # "item":Ljava/lang/String;
    .end local v19    # "flagStr":Ljava/lang/String;
    .restart local v10    # "flagStr":Ljava/lang/String;
    .restart local p3    # "item":Ljava/lang/String;
    :cond_9
    move-object/from16 v11, p3

    move-object/from16 v19, v10

    move-object v7, v11

    .line 733
    .end local v10    # "flagStr":Ljava/lang/String;
    .end local p3    # "item":Ljava/lang/String;
    .restart local v7    # "item":Ljava/lang/String;
    .restart local v19    # "flagStr":Ljava/lang/String;
    :goto_6
    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarPrintMode2()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_e

    .line 734
    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarK2()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarK2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarK2()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_b
    :goto_7
    const-string v8, "1"

    .line 735
    .local v8, "kStr":Ljava/lang/String;
    :goto_8
    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarB2()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarB2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarB2()Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    :cond_d
    :goto_9
    const-string v10, "0"

    .line 736
    .local v10, "bStr":Ljava/lang/String;
    :goto_a
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 737
    .local v11, "k2":D
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 738
    .local v13, "b2":D
    mul-double v15, v11, v5

    move-wide/from16 v22, v5

    add-double v5, v15, v13

    .line 738
    .end local v5    # "dResult":D
    .local v22, "dResult":D
    invoke-static {v5, v6, v9}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v5

    .line 740
    .local v5, "y2":D
    const-string v15, "F200"

    move-object/from16 v24, v8

    new-instance v8, Ljava/lang/StringBuilder;

    .line 740
    .end local v8    # "kStr":Ljava/lang/String;
    .local v24, "kStr":Ljava/lang/String;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v9

    const-string v9, "\u8f6c\u6362Y2\u7ed3\u679c\uff1a"

    .line 740
    .end local v9    # "digit":I
    .local v25, "digit":I
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 742
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 744
    .end local v7    # "item":Ljava/lang/String;
    .end local v10    # "bStr":Ljava/lang/String;
    .end local v11    # "k2":D
    .end local v13    # "b2":D
    .end local v19    # "flagStr":Ljava/lang/String;
    .end local v24    # "kStr":Ljava/lang/String;
    .end local v25    # "digit":I
    .local v5, "item":Ljava/lang/String;
    move-object v7, v5

    goto :goto_b

    .line 744
    .end local v22    # "dResult":D
    .local v5, "dResult":D
    .restart local v7    # "item":Ljava/lang/String;
    :cond_e
    move-wide/from16 v22, v5

    .line 744
    .end local v5    # "dResult":D
    .restart local v22    # "dResult":D
    :goto_b
    goto :goto_c

    .line 745
    .end local v1    # "temResult":Ljava/lang/String;
    .end local v7    # "item":Ljava/lang/String;
    .end local v22    # "dResult":D
    .restart local v5    # "dResult":D
    .restart local p3    # "item":Ljava/lang/String;
    .restart local p4    # "temResult":Ljava/lang/String;
    :cond_f
    move-object/from16 v11, p3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    .end local p4    # "temResult":Ljava/lang/String;
    .restart local v1    # "temResult":Ljava/lang/String;
    move-wide/from16 v22, v5

    move-object v7, v11

    .line 748
    .end local v5    # "dResult":D
    .end local p3    # "item":Ljava/lang/String;
    .restart local v7    # "item":Ljava/lang/String;
    .restart local v22    # "dResult":D
    :goto_c
    invoke-virtual {v4, v7}, Lcom/wen/fluorescence/bean/TemResultBean;->setItemName(Ljava/lang/String;)V

    .line 749
    if-nez p0, :cond_10

    .line 750
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/wen/fluorescence/bean/TemResultBean;->setCode(I)V

    .line 751
    invoke-virtual {v4, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 752
    return-object v4

    .line 754
    :cond_10
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/wen/fluorescence/bean/TemResultBean;->setCode(I)V

    .line 756
    move/from16 v8, p2

    if-ne v8, v6, :cond_12

    .line 758
    if-ne v0, v6, :cond_11

    .line 760
    invoke-virtual {v4, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v4, v3}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    goto :goto_e

    .line 764
    :cond_11
    const-string v6, ""

    invoke-virtual {v4, v6}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v4, v3}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    goto :goto_e

    .line 769
    :cond_12
    const/4 v6, 0x1

    if-ne v0, v6, :cond_13

    .line 771
    invoke-virtual {v4, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 772
    const-string v6, ""

    invoke-virtual {v4, v6}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    goto :goto_e

    .line 775
    :cond_13
    const-string v6, ""

    invoke-virtual {v4, v6}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v6

    const/4 v9, 0x2

    if-le v6, v9, :cond_15

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v6

    const/4 v9, 0x7

    if-lt v6, v9, :cond_14

    goto :goto_d

    .line 779
    :cond_14
    const-string v6, ""

    invoke-virtual {v4, v6}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    goto :goto_e

    .line 777
    :cond_15
    :goto_d
    invoke-virtual {v4, v3}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    .line 783
    :goto_e
    return-object v4
.end method

.method public static getShowResultForItemPara(Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/database/ItemPara;)Lcom/wen/fluorescence/bean/TemResultBean;
    .locals 10
    .param p0, "testResult"    # Lcom/wen/fluorescence/database/TestResult;
    .param p1, "itemPara"    # Lcom/wen/fluorescence/database/ItemPara;

    .line 484
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getiValid()I

    move-result v0

    if-gez v0, :cond_0

    .line 485
    new-instance v0, Lcom/wen/fluorescence/bean/TemResultBean;

    invoke-direct {v0}, Lcom/wen/fluorescence/bean/TemResultBean;-><init>()V

    .line 486
    .local v0, "bean":Lcom/wen/fluorescence/bean/TemResultBean;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setCode(I)V

    .line 487
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setResult(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setVerdict(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/bean/TemResultBean;->setItemName(Ljava/lang/String;)V

    .line 490
    return-object v0

    .line 492
    .end local v0    # "bean":Lcom/wen/fluorescence/bean/TemResultBean;
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeFlag()I

    move-result v2

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getIsShowResult()I

    move-result v3

    .line 493
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getIsShowConclusion()I

    move-result v4

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getUnit()Ljava/lang/String;

    move-result-object v7

    .line 494
    invoke-virtual {p0}, Lcom/wen/fluorescence/database/TestResult;->getQualitativeVerdict()Ljava/lang/String;

    move-result-object v8

    .line 492
    move-object v9, p1

    invoke-static/range {v2 .. v9}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResultForItemPara(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/database/ItemPara;)Lcom/wen/fluorescence/bean/TemResultBean;

    move-result-object v0

    return-object v0
.end method

.method public static getUDiskFileList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "index":I
    :goto_0
    sget-object v1, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATHS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 67
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATHS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "files":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "names":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 70
    sget-object v3, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATHS:[Ljava/lang/String;

    aget-object v3, v3, v0

    sput-object v3, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    .line 71
    return-object v2

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 74
    .end local v1    # "files":Ljava/io/File;
    .end local v2    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 75
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getUnitRange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "min"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "itemName"    # Ljava/lang/String;
    .param p4, "templateName"    # Ljava/lang/String;

    .line 1457
    invoke-static {p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/wen/fluorescence/database/DBManager;->queryItemParaForName(Ljava/lang/String;)Lcom/wen/fluorescence/database/ItemPara;

    move-result-object v0

    .line 1458
    .local v0, "itemPara":Lcom/wen/fluorescence/database/ItemPara;
    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    .line 1459
    :cond_0
    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1460
    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarK1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarB1()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/wen/fluorescence/util/PublicFuction;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 1461
    .local v1, "minStr":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarK1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarB1()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/wen/fluorescence/util/PublicFuction;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 1463
    .local v2, "maxStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1464
    .end local v1    # "minStr":Ljava/lang/String;
    .end local v2    # "maxStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarTemplate2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1465
    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarK2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarB2()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/wen/fluorescence/util/PublicFuction;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 1466
    .restart local v1    # "minStr":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarK2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarB2()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/wen/fluorescence/util/PublicFuction;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 1468
    .restart local v2    # "maxStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/ItemPara;->getTarUnit2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1470
    .end local v1    # "minStr":Ljava/lang/String;
    .end local v2    # "maxStr":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    return-object v1
.end method

.method private static getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D
    .locals 11
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "kValue"    # Ljava/lang/String;
    .param p2, "bValue"    # Ljava/lang/String;

    .line 1475
    const/4 v0, 0x0

    .line 1476
    .local v0, "digit":I
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1477
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 1482
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 1484
    .local v1, "dValue":D
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, p1

    goto :goto_1

    :cond_2
    :goto_0
    const-string v3, "1"

    .line 1485
    .local v3, "kStr":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, p2

    goto :goto_3

    :cond_4
    :goto_2
    const-string v4, "0"

    .line 1487
    .local v4, "bStr":Ljava/lang/String;
    :goto_3
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 1488
    .local v5, "k1":D
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 1489
    .local v7, "b1":D
    mul-double v9, v5, v1

    add-double/2addr v9, v7

    invoke-static {v9, v10, v0}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v9

    .line 1490
    .end local v1    # "dValue":D
    .end local v3    # "kStr":Ljava/lang/String;
    .end local v4    # "bStr":Ljava/lang/String;
    .end local v5    # "k1":D
    .end local v7    # "b1":D
    :catch_0
    move-exception v1

    .line 1491
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "F200"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f02\u5e38\u4fe1\u606f\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;

    .line 204
    if-eqz p0, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 207
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 209
    .local v0, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 210
    .local v1, "hexChars":[C
    new-array v2, v0, [B

    .line 211
    .local v2, "d":[B
    const/4 v3, 0x0

    .line 211
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 212
    mul-int/lit8 v4, v3, 0x2

    .line 213
    .local v4, "pos":I
    aget-char v5, v1, v4

    invoke-static {v5}, Lcom/wen/fluorescence/util/PublicFuction;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/wen/fluorescence/util/PublicFuction;->charToByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 211
    .end local v4    # "pos":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 205
    .end local v0    # "length":I
    .end local v1    # "hexChars":[C
    .end local v2    # "d":[B
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isLanguageFileExit()Z
    .locals 3

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Language.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1447
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1448
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1449
    const/4 v2, 0x1

    return v2

    .line 1451
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static makeLanguageFile()V
    .locals 2

    .line 1436
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Language.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1437
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1438
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1442
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static readFileSdcardFile()Ljava/lang/String;
    .locals 6

    .line 1400
    const-string v0, ""

    .line 1402
    .local v0, "res":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/wen/fluorescence/util/PublicFuction;->DEVICE_FILE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1404
    .local v1, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 1406
    .local v2, "length":I
    new-array v3, v2, [B

    .line 1407
    .local v3, "buffer":[B
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 1409
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v4

    .line 1411
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v2    # "length":I
    .end local v3    # "buffer":[B
    goto :goto_0

    .line 1412
    :catch_0
    move-exception v1

    .line 1413
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1415
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static readSNSdcardFile()Ljava/lang/String;
    .locals 6

    .line 1377
    const-string v0, ""

    .line 1379
    .local v0, "res":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/wen/fluorescence/util/PublicFuction;->SN_FILE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1381
    .local v1, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 1383
    .local v2, "length":I
    new-array v3, v2, [B

    .line 1384
    .local v3, "buffer":[B
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 1386
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v4

    .line 1388
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v2    # "length":I
    .end local v3    # "buffer":[B
    goto :goto_0

    .line 1389
    :catch_0
    move-exception v1

    .line 1390
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1392
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static saveADValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "serialNumber"    # Ljava/lang/String;

    .line 1298
    const/4 v0, 0x1

    .line 1300
    .local v0, "lsReturn":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/FIA_RD_Data/Excel_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1301
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1302
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    .line 1303
    .local v3, "isexists":Z
    const/4 v4, 0x0

    .line 1304
    .local v4, "outputstream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1305
    .local v5, "outwriter":Ljava/io/OutputStreamWriter;
    const/4 v6, 0x0

    .line 1307
    .local v6, "bWriter":Ljava/io/BufferedWriter;
    if-nez v3, :cond_0

    .line 1308
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    .line 1320
    :catchall_0
    move-exception v7

    goto/16 :goto_5

    .line 1315
    :catch_0
    move-exception v7

    goto :goto_2

    .line 1310
    :cond_0
    :goto_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v7

    .line 1311
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v7

    .line 1312
    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v6, v7

    .line 1313
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    const-string v9, ""

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "]"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 1322
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 1323
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 1324
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 1325
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 1329
    :catchall_1
    move-exception v7

    goto :goto_1

    .line 1326
    :catch_1
    move-exception v7

    .line 1327
    .local v7, "e2":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v7}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1327
    .end local v7    # "e2":Ljava/lang/Exception;
    goto :goto_3

    .line 1329
    :goto_1
    const/4 v6, 0x0

    .line 1330
    const/4 v5, 0x0

    .line 1331
    const/4 v4, 0x0

    throw v7

    .line 1315
    :goto_2
    nop

    .line 1316
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v7}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1318
    const/4 v0, 0x0

    .line 1321
    .end local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 1322
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 1323
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 1324
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 1325
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 1329
    :catchall_2
    move-exception v7

    goto :goto_4

    .line 1326
    :catch_2
    move-exception v7

    .line 1327
    .local v7, "e2":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v7}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1329
    .end local v7    # "e2":Ljava/lang/Exception;
    :goto_3
    const/4 v6, 0x0

    .line 1330
    const/4 v5, 0x0

    .line 1331
    const/4 v4, 0x0

    .line 1332
    nop

    .line 1333
    nop

    .line 1334
    return v0

    .line 1329
    :goto_4
    const/4 v6, 0x0

    .line 1330
    const/4 v5, 0x0

    .line 1331
    const/4 v4, 0x0

    throw v7

    .line 1320
    :goto_5
    nop

    .line 1321
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 1322
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V

    .line 1323
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 1324
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 1325
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    .line 1329
    :catchall_3
    move-exception v7

    goto :goto_7

    .line 1326
    :catch_3
    move-exception v8

    .line 1327
    .local v8, "e2":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v8}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1329
    .end local v8    # "e2":Ljava/lang/Exception;
    :goto_6
    const/4 v6, 0x0

    .line 1330
    const/4 v5, 0x0

    .line 1331
    const/4 v4, 0x0

    .line 1332
    nop

    .line 1331
    throw v7

    .line 1329
    :goto_7
    const/4 v6, 0x0

    .line 1330
    const/4 v5, 0x0

    .line 1331
    const/4 v4, 0x0

    throw v7
.end method

.method public static stringToByte(Ljava/lang/String;)[B
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 189
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 189
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 191
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x2

    .line 192
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 191
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static strings2bytes([Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # [Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    array-length v1, p0

    new-array v1, v1, [B

    .line 177
    .local v1, "d_tc":[B
    nop

    .line 177
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 178
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method public static strings2doubles([Ljava/lang/String;)[D
    .locals 4
    .param p0, "s"    # [Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    array-length v1, p0

    new-array v1, v1, [D

    .line 141
    .local v1, "d_tc":[D
    nop

    .line 141
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 142
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method public static strings2floats([Ljava/lang/String;)[F
    .locals 3
    .param p0, "s"    # [Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    array-length v1, p0

    new-array v1, v1, [F

    .line 165
    .local v1, "d_tc":[F
    nop

    .line 165
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 166
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method public static strings2ints([Ljava/lang/String;)[I
    .locals 3
    .param p0, "s"    # [Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    array-length v1, p0

    new-array v1, v1, [I

    .line 153
    .local v1, "d_tc":[I
    nop

    .line 153
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 154
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method public static writeFileSdcardFile(Ljava/lang/String;)V
    .locals 3
    .param p0, "write_str"    # Ljava/lang/String;

    .line 1343
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/wen/fluorescence/util/PublicFuction;->DEVICE_FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1345
    .local v0, "outFile":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1346
    .local v1, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1348
    .local v2, "bytes":[B
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1349
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    .end local v0    # "outFile":Ljava/io/File;
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v2    # "bytes":[B
    goto :goto_0

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1353
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static writeSNSdcardFile(Ljava/lang/String;)V
    .locals 3
    .param p0, "write_str"    # Ljava/lang/String;

    .line 1361
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/wen/fluorescence/util/PublicFuction;->SN_FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v0, "outFile":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1364
    .local v1, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1366
    .local v2, "bytes":[B
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1367
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    .end local v0    # "outFile":Ljava/io/File;
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v2    # "bytes":[B
    goto :goto_0

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1371
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
