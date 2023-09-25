.class public Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;
.super Ljava/lang/Object;
.source "ReflectionRewritePolicy.java"

# interfaces
.implements Lorg/apache/log4j/rewrite/RewritePolicy;


# static fields
.field static synthetic class$java$lang$Object:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 53
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 53
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public rewrite(Lorg/apache/log4j/spi/LoggingEvent;)Lorg/apache/log4j/spi/LoggingEvent;
    .locals 18
    .param p1, "source"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 46
    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    .line 47
    .local v1, "msg":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_5

    .line 48
    move-object v2, v1

    .line 49
    .local v2, "newMsg":Ljava/lang/Object;
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getProperties()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 52
    .local v3, "rewriteProps":Ljava/util/Map;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v5, :cond_0

    const-string v5, "java.lang.Object"

    invoke-static {v5}, Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v5, Lorg/apache/log4j/rewrite/ReflectionRewritePolicy;->class$java$lang$Object:Ljava/lang/Class;

    :goto_0
    invoke-static {v4, v5}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v4

    invoke-interface {v4}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v4

    .line 54
    .local v4, "props":[Ljava/beans/PropertyDescriptor;
    array-length v5, v4

    if-lez v5, :cond_4

    .line 55
    const/4 v5, 0x0

    .line 55
    .local v5, "i":I
    :goto_1
    array-length v6, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v5, v6, :cond_2

    .line 57
    :try_start_1
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 60
    .local v6, "propertyValue":Ljava/lang/Object;
    const-string v7, "message"

    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 61
    move-object v2, v6

    goto :goto_2

    .line 63
    :cond_1
    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    .end local v6    # "propertyValue":Ljava/lang/Object;
    :goto_2
    goto :goto_3

    .line 65
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 66
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unable to evaluate property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 70
    .end local v5    # "i":I
    :cond_2
    new-instance v17, Lorg/apache/log4j/spi/LoggingEvent;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getFQNOfLoggerClass()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLogger()Lorg/apache/log4j/Category;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLogger()Lorg/apache/log4j/Category;

    move-result-object v5

    :goto_4
    move-object v7, v5

    goto :goto_5

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v5

    goto :goto_4

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getTimeStamp()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v15

    move-object/from16 v5, v17

    move-object v11, v2

    move-object/from16 v16, v3

    invoke-direct/range {v5 .. v16}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;JLorg/apache/log4j/Level;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/log4j/spi/ThrowableInformation;Ljava/lang/String;Lorg/apache/log4j/spi/LocationInfo;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v17

    .line 84
    .end local v4    # "props":[Ljava/beans/PropertyDescriptor;
    :cond_4
    goto :goto_6

    .line 82
    :catch_1
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    .local v4, "newMsg":Ljava/lang/Object;
    const-string v5, "Unable to get property descriptors"

    invoke-static {v5, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "rewriteProps":Ljava/util/Map;
    .end local v4    # "newMsg":Ljava/lang/Object;
    :cond_5
    :goto_6
    return-object p1
.end method
