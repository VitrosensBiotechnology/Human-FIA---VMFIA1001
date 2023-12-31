.class public final Lorg/apache/log4j/pattern/PropertiesPatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "PropertiesPatternConverter.java"


# instance fields
.field private final option:Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "options"    # [Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Property{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Properties"

    :goto_0
    const-string v2, "property"

    invoke-direct {p0, v1, v2}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 55
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/PropertiesPatternConverter;->option:Ljava/lang/String;

    goto :goto_1

    .line 57
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/pattern/PropertiesPatternConverter;->option:Ljava/lang/String;

    .line 59
    :goto_1
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/PropertiesPatternConverter;
    .locals 1
    .param p0, "options"    # [Ljava/lang/String;

    .line 68
    new-instance v0, Lorg/apache/log4j/pattern/PropertiesPatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/log4j/pattern/PropertiesPatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;

    .line 77
    iget-object v0, p0, Lorg/apache/log4j/pattern/PropertiesPatternConverter;->option:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 78
    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :try_start_0
    sget-object v0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->INSTANCE:Lorg/apache/log4j/helpers/MDCKeySetExtractor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->getPropertyKeySet(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/util/Set;

    move-result-object v0

    .line 82
    .local v0, "keySet":Ljava/util/Set;
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 85
    .local v2, "item":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/log4j/spi/LoggingEvent;->getMDC(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 86
    .local v3, "val":Ljava/lang/Object;
    const-string v4, "{"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, "}"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 92
    .end local v0    # "keySet":Ljava/util/Set;
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_0
    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Unexpected exception while extracting MDC keys"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    const-string v0, "}"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 97
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/pattern/PropertiesPatternConverter;->option:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/log4j/spi/LoggingEvent;->getMDC(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 103
    .end local v0    # "val":Ljava/lang/Object;
    :cond_2
    :goto_2
    return-void
.end method
