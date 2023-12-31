.class public Lorg/apache/log4j/net/SyslogAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "SyslogAppender.java"


# static fields
.field protected static final FACILITY_OI:I = 0x1

.field public static final LOG_AUTH:I = 0x20

.field public static final LOG_AUTHPRIV:I = 0x50

.field public static final LOG_CRON:I = 0x48

.field public static final LOG_DAEMON:I = 0x18

.field public static final LOG_FTP:I = 0x58

.field public static final LOG_KERN:I = 0x0

.field public static final LOG_LOCAL0:I = 0x80

.field public static final LOG_LOCAL1:I = 0x88

.field public static final LOG_LOCAL2:I = 0x90

.field public static final LOG_LOCAL3:I = 0x98

.field public static final LOG_LOCAL4:I = 0xa0

.field public static final LOG_LOCAL5:I = 0xa8

.field public static final LOG_LOCAL6:I = 0xb0

.field public static final LOG_LOCAL7:I = 0xb8

.field public static final LOG_LPR:I = 0x30

.field public static final LOG_MAIL:I = 0x10

.field public static final LOG_NEWS:I = 0x38

.field public static final LOG_SYSLOG:I = 0x28

.field public static final LOG_USER:I = 0x8

.field public static final LOG_UUCP:I = 0x40

.field protected static final SYSLOG_HOST_OI:I = 0x0

.field static final TAB:Ljava/lang/String; = "    "


# instance fields
.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field facilityPrinting:Z

.field facilityStr:Ljava/lang/String;

.field private header:Z

.field private layoutHeaderChecked:Z

.field private localHostname:Ljava/lang/String;

.field sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

.field syslogFacility:I

.field syslogHost:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 128
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 97
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    .line 110
    iput-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    .line 115
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MMM dd HH:mm:ss "

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 125
    iput-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    .line 129
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->initSyslogFacilityStr()V

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;I)V
    .locals 4
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "syslogFacility"    # I

    .line 133
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 97
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    .line 110
    iput-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    .line 115
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MMM dd HH:mm:ss "

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 125
    iput-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    .line 134
    iput-object p1, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    .line 135
    iput p2, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 136
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->initSyslogFacilityStr()V

    .line 137
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;I)V
    .locals 0
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "syslogHost"    # Ljava/lang/String;
    .param p3, "syslogFacility"    # I

    .line 141
    invoke-direct {p0, p1, p3}, Lorg/apache/log4j/net/SyslogAppender;-><init>(Lorg/apache/log4j/Layout;I)V

    .line 142
    invoke-virtual {p0, p2}, Lorg/apache/log4j/net/SyslogAppender;->setSyslogHost(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static getFacility(Ljava/lang/String;)I
    .locals 1
    .param p0, "facilityName"    # Ljava/lang/String;

    .line 230
    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 233
    :cond_0
    const-string v0, "KERN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_1
    const-string v0, "USER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    const/16 v0, 0x8

    return v0

    .line 237
    :cond_2
    const-string v0, "MAIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    const/16 v0, 0x10

    return v0

    .line 239
    :cond_3
    const-string v0, "DAEMON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    const/16 v0, 0x18

    return v0

    .line 241
    :cond_4
    const-string v0, "AUTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    const/16 v0, 0x20

    return v0

    .line 243
    :cond_5
    const-string v0, "SYSLOG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 244
    const/16 v0, 0x28

    return v0

    .line 245
    :cond_6
    const-string v0, "LPR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 246
    const/16 v0, 0x30

    return v0

    .line 247
    :cond_7
    const-string v0, "NEWS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 248
    const/16 v0, 0x38

    return v0

    .line 249
    :cond_8
    const-string v0, "UUCP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 250
    const/16 v0, 0x40

    return v0

    .line 251
    :cond_9
    const-string v0, "CRON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 252
    const/16 v0, 0x48

    return v0

    .line 253
    :cond_a
    const-string v0, "AUTHPRIV"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 254
    const/16 v0, 0x50

    return v0

    .line 255
    :cond_b
    const-string v0, "FTP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 256
    const/16 v0, 0x58

    return v0

    .line 257
    :cond_c
    const-string v0, "LOCAL0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 258
    const/16 v0, 0x80

    return v0

    .line 259
    :cond_d
    const-string v0, "LOCAL1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 260
    const/16 v0, 0x88

    return v0

    .line 261
    :cond_e
    const-string v0, "LOCAL2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 262
    const/16 v0, 0x90

    return v0

    .line 263
    :cond_f
    const-string v0, "LOCAL3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 264
    const/16 v0, 0x98

    return v0

    .line 265
    :cond_10
    const-string v0, "LOCAL4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 266
    const/16 v0, 0xa0

    return v0

    .line 267
    :cond_11
    const-string v0, "LOCAL5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 268
    const/16 v0, 0xa8

    return v0

    .line 269
    :cond_12
    const-string v0, "LOCAL6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 270
    const/16 v0, 0xb0

    return v0

    .line 271
    :cond_13
    const-string v0, "LOCAL7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 272
    const/16 v0, 0xb8

    return v0

    .line 274
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method public static getFacilityString(I)Ljava/lang/String;
    .locals 1
    .param p0, "syslogFacility"    # I

    .line 191
    sparse-switch p0, :sswitch_data_0

    .line 212
    const/4 v0, 0x0

    return-object v0

    .line 211
    :sswitch_0
    const-string v0, "local7"

    return-object v0

    .line 210
    :sswitch_1
    const-string v0, "local6"

    return-object v0

    .line 209
    :sswitch_2
    const-string v0, "local5"

    return-object v0

    .line 208
    :sswitch_3
    const-string v0, "local4"

    return-object v0

    .line 207
    :sswitch_4
    const-string v0, "local3"

    return-object v0

    .line 206
    :sswitch_5
    const-string v0, "local2"

    return-object v0

    .line 205
    :sswitch_6
    const-string v0, "local1"

    return-object v0

    .line 204
    :sswitch_7
    const-string v0, "local0"

    return-object v0

    .line 203
    :sswitch_8
    const-string v0, "ftp"

    return-object v0

    .line 202
    :sswitch_9
    const-string v0, "authpriv"

    return-object v0

    .line 201
    :sswitch_a
    const-string v0, "cron"

    return-object v0

    .line 200
    :sswitch_b
    const-string v0, "uucp"

    return-object v0

    .line 199
    :sswitch_c
    const-string v0, "news"

    return-object v0

    .line 198
    :sswitch_d
    const-string v0, "lpr"

    return-object v0

    .line 197
    :sswitch_e
    const-string v0, "syslog"

    return-object v0

    .line 196
    :sswitch_f
    const-string v0, "auth"

    return-object v0

    .line 195
    :sswitch_10
    const-string v0, "daemon"

    return-object v0

    .line 194
    :sswitch_11
    const-string v0, "mail"

    return-object v0

    .line 193
    :sswitch_12
    const-string v0, "user"

    return-object v0

    .line 192
    :sswitch_13
    const-string v0, "kern"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_13
        0x8 -> :sswitch_12
        0x10 -> :sswitch_11
        0x18 -> :sswitch_10
        0x20 -> :sswitch_f
        0x28 -> :sswitch_e
        0x30 -> :sswitch_d
        0x38 -> :sswitch_c
        0x40 -> :sswitch_b
        0x48 -> :sswitch_a
        0x50 -> :sswitch_9
        0x58 -> :sswitch_8
        0x80 -> :sswitch_7
        0x88 -> :sswitch_6
        0x90 -> :sswitch_5
        0x98 -> :sswitch_4
        0xa0 -> :sswitch_3
        0xa8 -> :sswitch_2
        0xb0 -> :sswitch_1
        0xb8 -> :sswitch_0
    .end sparse-switch
.end method

.method private getLocalHostname()Ljava/lang/String;
    .locals 2

    .line 485
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 487
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 488
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v0    # "addr":Ljava/net/InetAddress;
    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "uhe":Ljava/net/UnknownHostException;
    const-string v1, "UNKNOWN_HOST"

    iput-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;

    .line 493
    .end local v0    # "uhe":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;

    return-object v0
.end method

.method private getPacketHeader(J)Ljava/lang/String;
    .locals 5
    .param p1, "timeStamp"    # J

    .line 503
    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    if-eqz v0, :cond_1

    .line 504
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/16 v4, 0x20

    if-ne v2, v3, :cond_0

    .line 507
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 509
    :cond_0
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->getLocalHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 511
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 513
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private initSyslogFacilityStr()V
    .locals 3

    .line 172
    iget v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-static {v0}, Lorg/apache/log4j/net/SyslogAppender;->getFacilityString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 175
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "\" is an unknown syslog facility. Defaulting to \"USER\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 178
    const-string v0, "user:"

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    .line 182
    :goto_0
    return-void
.end method

.method private sendLayoutMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    if-eqz v0, :cond_3

    .line 522
    move-object v0, p1

    .line 523
    .local v0, "packet":Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/apache/log4j/net/SyslogAppender;->getPacketHeader(J)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "hdr":Ljava/lang/String;
    iget-boolean v2, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 525
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 526
    .local v2, "buf":Ljava/lang/StringBuffer;
    iget-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-eqz v3, :cond_1

    .line 527
    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->setLevel(I)V

    .line 533
    iget-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v2, v0}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    .line 535
    .end local v0    # "packet":Ljava/lang/String;
    .end local v1    # "hdr":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private splitPacket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "packet"    # Ljava/lang/String;

    .line 280
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x3fb

    array-length v0, v0

    .line 286
    .local v0, "byteCount":I
    if-gt v0, v1, :cond_0

    .line 287
    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v1, p2}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 290
    .local v1, "split":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/log4j/net/SyslogAppender;->splitPacket(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/log4j/net/SyslogAppender;->splitPacket(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .end local v1    # "split":I
    :goto_0
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 1

    .line 361
    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->getLocalHostname()Ljava/lang/String;

    .line 364
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/net/SyslogAppender;->sendLayoutMessage(Ljava/lang/String;)V

    .line 367
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    .line 368
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 8
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 298
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/net/SyslogAppender;->isAsSevereAsThreshold(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No syslog host is set for SyslogAppedender named \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    .line 305
    return-void

    .line 308
    :cond_1
    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 309
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/net/SyslogAppender;->sendLayoutMessage(Ljava/lang/String;)V

    .line 312
    :cond_2
    iput-boolean v1, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    .line 315
    :cond_3
    iget-wide v2, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-direct {p0, v2, v3}, Lorg/apache/log4j/net/SyslogAppender;->getPacketHeader(J)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "hdr":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    if-nez v2, :cond_4

    .line 318
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "packet":Ljava/lang/String;
    goto :goto_0

    .line 320
    .end local v2    # "packet":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v2, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .restart local v2    # "packet":Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 323
    :cond_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 324
    .local v3, "buf":Ljava/lang/StringBuffer;
    iget-boolean v4, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-eqz v4, :cond_6

    .line 325
    iget-object v4, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    :cond_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .end local v3    # "buf":Ljava/lang/StringBuffer;
    :cond_7
    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/log4j/Level;->getSyslogEquivalent()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->setLevel(I)V

    .line 335
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x100

    if-le v3, v4, :cond_8

    .line 336
    invoke-direct {p0, v0, v2}, Lorg/apache/log4j/net/SyslogAppender;->splitPacket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 338
    :cond_8
    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v3, v2}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    .line 341
    :goto_1
    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v3}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 342
    :cond_9
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "s":[Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 344
    const/4 v4, 0x0

    .line 344
    .local v4, "i":I
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_b

    .line 345
    aget-object v5, v3, v4

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 346
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v7, v3, v4

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 348
    :cond_a
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v7, v3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    .line 344
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 353
    .end local v3    # "s":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_b
    return-void
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 153
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->closed:Z

    .line 154
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 156
    const/4 v0, 0x0

    :try_start_1
    iget-boolean v1, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/log4j/net/SyslogAppender;->sendLayoutMessage(Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->close()V

    .line 160
    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    .line 165
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 161
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 163
    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    :goto_0
    nop

    .line 168
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFacility()Ljava/lang/String;
    .locals 1

    .line 439
    iget v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-static {v0}, Lorg/apache/log4j/net/SyslogAppender;->getFacilityString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacilityPrinting()Z
    .locals 1

    .line 457
    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    return v0
.end method

.method public final getHeader()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    return v0
.end method

.method public getSyslogHost()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogHost:Ljava/lang/String;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method public setFacility(Ljava/lang/String;)V
    .locals 3
    .param p1, "facilityName"    # Ljava/lang/String;

    .line 416
    if-nez p1, :cond_0

    .line 417
    return-void

    .line 419
    :cond_0
    invoke-static {p1}, Lorg/apache/log4j/net/SyslogAppender;->getFacility(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 420
    iget v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 421
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "] is an unknown syslog facility. Defaulting to [USER]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 426
    :cond_1
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->initSyslogFacilityStr()V

    .line 429
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    iget v1, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-virtual {v0, v1}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->setSyslogFacility(I)V

    .line 432
    :cond_2
    return-void
.end method

.method public setFacilityPrinting(Z)V
    .locals 0
    .param p1, "on"    # Z

    .line 449
    iput-boolean p1, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    .line 450
    return-void
.end method

.method public final setHeader(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 476
    iput-boolean p1, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    .line 477
    return-void
.end method

.method public setSyslogHost(Ljava/lang/String;)V
    .locals 4
    .param p1, "syslogHost"    # Ljava/lang/String;

    .line 391
    new-instance v0, Lorg/apache/log4j/helpers/SyslogQuietWriter;

    new-instance v1, Lorg/apache/log4j/helpers/SyslogWriter;

    invoke-direct {v1, p1}, Lorg/apache/log4j/helpers/SyslogWriter;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/helpers/SyslogQuietWriter;-><init>(Ljava/io/Writer;ILorg/apache/log4j/spi/ErrorHandler;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    .line 394
    iput-object p1, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogHost:Ljava/lang/String;

    .line 395
    return-void
.end method
