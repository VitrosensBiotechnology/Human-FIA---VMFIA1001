.class public Lorg/apache/log4j/lf5/LogLevel;
.super Ljava/lang/Object;
.source "LogLevel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONFIG:Lorg/apache/log4j/lf5/LogLevel;

.field public static final DEBUG:Lorg/apache/log4j/lf5/LogLevel;

.field public static final ERROR:Lorg/apache/log4j/lf5/LogLevel;

.field public static final FATAL:Lorg/apache/log4j/lf5/LogLevel;

.field public static final FINE:Lorg/apache/log4j/lf5/LogLevel;

.field public static final FINER:Lorg/apache/log4j/lf5/LogLevel;

.field public static final FINEST:Lorg/apache/log4j/lf5/LogLevel;

.field public static final INFO:Lorg/apache/log4j/lf5/LogLevel;

.field public static final SEVERE:Lorg/apache/log4j/lf5/LogLevel;

.field public static final WARN:Lorg/apache/log4j/lf5/LogLevel;

.field public static final WARNING:Lorg/apache/log4j/lf5/LogLevel;

.field private static _allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

.field private static _jdk14Levels:[Lorg/apache/log4j/lf5/LogLevel;

.field private static _log4JLevels:[Lorg/apache/log4j/lf5/LogLevel;

.field private static _logLevelColorMap:Ljava/util/Map;

.field private static _logLevelMap:Ljava/util/Map;

.field private static _registeredLogLevelMap:Ljava/util/Map;


# instance fields
.field protected _label:Ljava/lang/String;

.field protected _precedence:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 48
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v1, "FATAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->FATAL:Lorg/apache/log4j/lf5/LogLevel;

    .line 49
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->ERROR:Lorg/apache/log4j/lf5/LogLevel;

    .line 50
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v1, "WARN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->WARN:Lorg/apache/log4j/lf5/LogLevel;

    .line 51
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v1, "INFO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->INFO:Lorg/apache/log4j/lf5/LogLevel;

    .line 52
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v1, "DEBUG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    .line 55
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v1, "SEVERE"

    invoke-direct {v0, v1, v3}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->SEVERE:Lorg/apache/log4j/lf5/LogLevel;

    .line 56
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->WARNING:Lorg/apache/log4j/lf5/LogLevel;

    .line 57
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v1, "CONFIG"

    invoke-direct {v0, v1, v6}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->CONFIG:Lorg/apache/log4j/lf5/LogLevel;

    .line 58
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v1, "FINE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->FINE:Lorg/apache/log4j/lf5/LogLevel;

    .line 59
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v1, "FINER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->FINER:Lorg/apache/log4j/lf5/LogLevel;

    .line 60
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v1, "FINEST"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->FINEST:Lorg/apache/log4j/lf5/LogLevel;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->_registeredLogLevelMap:Ljava/util/Map;

    .line 81
    new-array v0, v7, [Lorg/apache/log4j/lf5/LogLevel;

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->FATAL:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->ERROR:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->WARN:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->INFO:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->_log4JLevels:[Lorg/apache/log4j/lf5/LogLevel;

    .line 82
    new-array v0, v9, [Lorg/apache/log4j/lf5/LogLevel;

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->SEVERE:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->WARNING:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->INFO:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->CONFIG:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->FINE:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->FINER:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->FINEST:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v8

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->_jdk14Levels:[Lorg/apache/log4j/lf5/LogLevel;

    .line 84
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/apache/log4j/lf5/LogLevel;

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->FATAL:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->ERROR:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->WARN:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->INFO:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->SEVERE:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->WARNING:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->CONFIG:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v1, v0, v9

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->FINE:Lorg/apache/log4j/lf5/LogLevel;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->FINER:Lorg/apache/log4j/lf5/LogLevel;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->FINEST:Lorg/apache/log4j/lf5/LogLevel;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelMap:Ljava/util/Map;

    .line 88
    move v0, v2

    .line 88
    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 89
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_logLevelMap:Ljava/util/Map;

    sget-object v3, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    aget-object v4, v4, v0

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    .line 94
    nop

    .line 94
    .local v2, "i":I
    :goto_1
    move v0, v2

    .line 94
    .end local v2    # "i":I
    .restart local v0    # "i":I
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 95
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    aget-object v2, v2, v0

    sget-object v3, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    add-int/lit8 v2, v0, 0x1

    .line 94
    .end local v0    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 97
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "precedence"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/apache/log4j/lf5/LogLevel;->_label:Ljava/lang/String;

    .line 101
    iput p2, p0, Lorg/apache/log4j/lf5/LogLevel;->_precedence:I

    .line 102
    return-void
.end method

.method public static getAllDefaultLevels()Ljava/util/List;
    .locals 1

    .line 249
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getJdk14Levels()Ljava/util/List;
    .locals 1

    .line 245
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_jdk14Levels:[Lorg/apache/log4j/lf5/LogLevel;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLog4JLevels()Ljava/util/List;
    .locals 1

    .line 241
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_log4JLevels:[Lorg/apache/log4j/lf5/LogLevel;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLogLevelColorMap()Ljava/util/Map;
    .locals 1

    .line 253
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    return-object v0
.end method

.method public static register(Lorg/apache/log4j/lf5/LogLevel;)Lorg/apache/log4j/lf5/LogLevel;
    .locals 3
    .param p0, "logLevel"    # Lorg/apache/log4j/lf5/LogLevel;

    .line 166
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 169
    :cond_0
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_logLevelMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 170
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_registeredLogLevelMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/LogLevel;

    return-object v0

    .line 173
    :cond_1
    return-object v0
.end method

.method public static register(Ljava/util/List;)V
    .locals 2
    .param p0, "logLevels"    # Ljava/util/List;

    .line 185
    if-eqz p0, :cond_0

    .line 186
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 187
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/LogLevel;

    invoke-static {v1}, Lorg/apache/log4j/lf5/LogLevel;->register(Lorg/apache/log4j/lf5/LogLevel;)Lorg/apache/log4j/lf5/LogLevel;

    goto :goto_0

    .line 191
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static register([Lorg/apache/log4j/lf5/LogLevel;)V
    .locals 2
    .param p0, "logLevels"    # [Lorg/apache/log4j/lf5/LogLevel;

    .line 177
    if-eqz p0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 178
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 179
    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/apache/log4j/lf5/LogLevel;->register(Lorg/apache/log4j/lf5/LogLevel;)Lorg/apache/log4j/lf5/LogLevel;

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static resetLogLevelColorMap()V
    .locals 4

    .line 228
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 231
    const/4 v0, 0x0

    .line 231
    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 232
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    aget-object v2, v2, v0

    sget-object v3, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;
    .locals 4
    .param p0, "level"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/log4j/lf5/LogLevelFormatException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "logLevel":Lorg/apache/log4j/lf5/LogLevel;
    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 142
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_logLevelMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/log4j/lf5/LogLevel;

    .line 146
    :cond_0
    if-nez v0, :cond_1

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_registeredLogLevelMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 147
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_registeredLogLevelMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/log4j/lf5/LogLevel;

    .line 150
    :cond_1
    if-nez v0, :cond_2

    .line 151
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    .local v1, "buf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while trying to parse ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ") into"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v2, " a LogLevel."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    new-instance v2, Lorg/apache/log4j/lf5/LogLevelFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/log4j/lf5/LogLevelFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public encompasses(Lorg/apache/log4j/lf5/LogLevel;)Z
    .locals 2
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .line 122
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogLevel;->getPrecedence()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogLevel;->getPrecedence()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 123
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "equals":Z
    instance-of v1, p1, Lorg/apache/log4j/lf5/LogLevel;

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogLevel;->getPrecedence()I

    move-result v1

    move-object v2, p1

    check-cast v2, Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/LogLevel;->getPrecedence()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 204
    :cond_0
    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogLevel;->_label:Ljava/lang/String;

    return-object v0
.end method

.method protected getPrecedence()I
    .locals 1

    .line 261
    iget v0, p0, Lorg/apache/log4j/lf5/LogLevel;->_precedence:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogLevel;->_label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setLogLevelColorMap(Lorg/apache/log4j/lf5/LogLevel;Ljava/awt/Color;)V
    .locals 1
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;
    .param p2, "color"    # Ljava/awt/Color;

    .line 218
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    if-nez p2, :cond_0

    .line 221
    sget-object p2, Ljava/awt/Color;->black:Ljava/awt/Color;

    .line 223
    :cond_0
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogLevel;->_label:Ljava/lang/String;

    return-object v0
.end method
