.class public Lcom/wen/fluorescence/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private deleteOldLogs()V
    .locals 7

    .line 112
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Logs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 114
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    const/4 v2, 0x3

    array-length v3, v1

    if-le v3, v2, :cond_1

    .line 118
    new-instance v3, Lcom/wen/fluorescence/MyApplication$1;

    invoke-direct {v3, p0}, Lcom/wen/fluorescence/MyApplication$1;-><init>(Lcom/wen/fluorescence/MyApplication;)V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 134
    const/4 v3, 0x0

    .line 134
    .local v3, "i":I
    :goto_0
    array-length v4, v1

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_1

    .line 135
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteOldLogs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    .line 136
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 30
    sget-object v0, Lcom/wen/fluorescence/MyApplication;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 8

    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 36
    invoke-virtual {p0}, Lcom/wen/fluorescence/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/wen/fluorescence/MyApplication;->context:Landroid/content/Context;

    .line 38
    const v0, 0x1a00002

    invoke-static {p0, v0}, Lcom/wen/fluorescence/util/SaveLanguaeInfo;->getLanguage(Landroid/content/Context;I)I

    move-result v0

    .line 39
    .local v0, "curLanguage":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 40
    .local v1, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/wen/fluorescence/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 41
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v3, 0x0

    .line 42
    .local v3, "locale":Ljava/util/Locale;
    const-string v4, "A"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Language init:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    new-instance v4, Ljava/util/Locale;

    const-string v5, "ru"

    const-string v6, "RU"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 55
    goto :goto_0

    .line 63
    :pswitch_1
    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    .line 64
    goto :goto_0

    .line 60
    :pswitch_2
    new-instance v4, Ljava/util/Locale;

    const-string v5, "pt"

    const-string v6, "PT"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 61
    goto :goto_0

    .line 51
    :pswitch_3
    new-instance v4, Ljava/util/Locale;

    const-string v5, "es"

    const-string v6, "ES"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 52
    goto :goto_0

    .line 66
    :pswitch_4
    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    goto :goto_0

    .line 57
    :pswitch_5
    sget-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    .line 58
    goto :goto_0

    .line 48
    :pswitch_6
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 49
    goto :goto_0

    .line 45
    :pswitch_7
    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 46
    nop

    .line 70
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 71
    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_1

    .line 73
    :cond_0
    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 75
    :goto_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 77
    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v5, "icoolv3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    const-string v4, "/sdcard/chf200_device.txt"

    sput-object v4, Lcom/wen/fluorescence/util/PublicFuction;->DEVICE_FILE_NAME:Ljava/lang/String;

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/wen/fluorescence/MyApplication;->deleteOldLogs()V

    .line 83
    invoke-static {}, Lcom/wen/fluorescence/util/LogcatFileManager;->getInstance()Lcom/wen/fluorescence/util/LogcatFileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/LogcatFileManager;->start()V

    .line 85
    invoke-static {}, Lcom/wen/fluorescence/util/CppHelper;->init()V

    .line 86
    invoke-static {}, Lcom/wen/fluorescence/serialport/CommActivity;->initPort()V

    .line 88
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v4

    const/16 v5, 0x30

    if-nez v4, :cond_2

    .line 89
    sput v5, Lcom/wen/fluorescence/net/CHRequestManager;->USER_ID:I

    .line 90
    const-string v4, "CHF201-YR-00\uff08\u4e2d\u6027\uff09"

    sput-object v4, Lcom/wen/fluorescence/net/CHRequestManager;->APK_MODEL:Ljava/lang/String;

    goto :goto_2

    .line 91
    :cond_2
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 92
    sput v5, Lcom/wen/fluorescence/net/CHRequestManager;->USER_ID:I

    .line 93
    const-string v4, "CHF201-YR-02\uff08PCL\uff09"

    sput-object v4, Lcom/wen/fluorescence/net/CHRequestManager;->APK_MODEL:Ljava/lang/String;

    goto :goto_2

    .line 94
    :cond_3
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 95
    const/16 v4, 0x2f

    sput v4, Lcom/wen/fluorescence/net/CHRequestManager;->USER_ID:I

    .line 96
    const-string v4, "CHF200-VCHEK"

    sput-object v4, Lcom/wen/fluorescence/net/CHRequestManager;->APK_MODEL:Ljava/lang/String;

    goto :goto_2

    .line 97
    :cond_4
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_5

    .line 98
    const-string v4, "CHF200-DX"

    sput-object v4, Lcom/wen/fluorescence/net/CHRequestManager;->APK_MODEL:Ljava/lang/String;

    goto :goto_2

    .line 99
    :cond_5
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_6

    .line 100
    sput v6, Lcom/wen/fluorescence/net/CHRequestManager;->USER_ID:I

    .line 101
    const-string v4, "CHF200"

    sput-object v4, Lcom/wen/fluorescence/net/CHRequestManager;->APK_MODEL:Ljava/lang/String;

    goto :goto_2

    .line 102
    :cond_6
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_7

    .line 103
    sput v5, Lcom/wen/fluorescence/net/CHRequestManager;->USER_ID:I

    .line 104
    const-string v4, "CHF201-Easy11\uff08\u65e0\u626b\u7801\u67aa\uff09"

    sput-object v4, Lcom/wen/fluorescence/net/CHRequestManager;->APK_MODEL:Ljava/lang/String;

    .line 106
    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1a00001
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
