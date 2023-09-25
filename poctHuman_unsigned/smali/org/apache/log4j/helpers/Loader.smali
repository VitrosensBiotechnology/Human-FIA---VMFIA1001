.class public Lorg/apache/log4j/helpers/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# static fields
.field static final TSTR:Ljava/lang/String; = "Caught Exception while in Loader.getResource. This may be innocuous."

.field static synthetic class$java$lang$Thread:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$helpers$Loader:Ljava/lang/Class;

.field private static ignoreTCL:Z

.field private static java1:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/log4j/helpers/Loader;->java1:Z

    .line 39
    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/log4j/helpers/Loader;->ignoreTCL:Z

    .line 42
    const-string v2, "java.version"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "prop":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 45
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 46
    .local v4, "i":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 47
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-eq v5, v6, :cond_0

    .line 48
    sput-boolean v1, Lorg/apache/log4j/helpers/Loader;->java1:Z

    .line 51
    .end local v4    # "i":I
    :cond_0
    const-string v1, "log4j.ignoreTCL"

    invoke-static {v1, v3}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "ignoreTCLProp":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 53
    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/log4j/helpers/Loader;->ignoreTCL:Z

    .line 55
    .end local v1    # "ignoreTCLProp":Ljava/lang/String;
    .end local v2    # "prop":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 106
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 106
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p0, "resource"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 92
    .local v1, "url":Ljava/net/URL;
    :try_start_0
    sget-boolean v2, Lorg/apache/log4j/helpers/Loader;->java1:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lorg/apache/log4j/helpers/Loader;->ignoreTCL:Z

    if-nez v2, :cond_0

    .line 93
    invoke-static {}, Lorg/apache/log4j/helpers/Loader;->getTCL()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v0, v2

    .line 94
    if-eqz v0, :cond_0

    .line 95
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Trying to find ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "] using context classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    move-object v1, v2

    .line 98
    if-eqz v1, :cond_0

    .line 99
    return-object v1

    .line 106
    :cond_0
    sget-object v2, Lorg/apache/log4j/helpers/Loader;->class$org$apache$log4j$helpers$Loader:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "org.apache.log4j.helpers.Loader"

    invoke-static {v2}, Lorg/apache/log4j/helpers/Loader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/helpers/Loader;->class$org$apache$log4j$helpers$Loader:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/apache/log4j/helpers/Loader;->class$org$apache$log4j$helpers$Loader:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v0, v2

    .line 107
    if-eqz v0, :cond_4

    .line 108
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Trying to find ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "] using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " class loader."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 111
    if-eqz v1, :cond_4

    .line 112
    return-object v1

    .line 123
    :catch_0
    move-exception v2

    .line 127
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "Caught Exception while in Loader.getResource. This may be innocuous."

    invoke-static {v3, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .end local v2    # "t":Ljava/lang/Throwable;
    goto :goto_2

    .line 117
    :catch_1
    move-exception v2

    .line 118
    .local v2, "t":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/InterruptedException;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_3

    .line 120
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 122
    :cond_3
    const-string v3, "Caught Exception while in Loader.getResource. This may be innocuous."

    invoke-static {v3, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .end local v2    # "t":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 115
    :catch_2
    move-exception v2

    .line 116
    .local v2, "t":Ljava/lang/IllegalAccessException;
    const-string v3, "Caught Exception while in Loader.getResource. This may be innocuous."

    invoke-static {v3, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .end local v2    # "t":Ljava/lang/IllegalAccessException;
    :cond_4
    :goto_1
    nop

    .line 134
    :goto_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Trying to find ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "] using ClassLoader.getSystemResource()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 136
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    return-object v2
.end method

.method public static getResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/net/URL;
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 65
    invoke-static {p0}, Lorg/apache/log4j/helpers/Loader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method private static getTCL()Ljava/lang/ClassLoader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    move-object v1, v0

    .line 160
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lorg/apache/log4j/helpers/Loader;->class$java$lang$Thread:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.lang.Thread"

    invoke-static {v2}, Lorg/apache/log4j/helpers/Loader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/helpers/Loader;->class$java$lang$Thread:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/log4j/helpers/Loader;->class$java$lang$Thread:Ljava/lang/Class;

    :goto_0
    const-string v3, "getContextClassLoader"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 164
    nop

    .line 166
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0

    .line 161
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    return-object v0
.end method

.method public static isJava1()Z
    .locals 1

    .line 145
    sget-boolean v0, Lorg/apache/log4j/helpers/Loader;->java1:Z

    return v0
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 181
    sget-boolean v0, Lorg/apache/log4j/helpers/Loader;->java1:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lorg/apache/log4j/helpers/Loader;->ignoreTCL:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 185
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/apache/log4j/helpers/Loader;->getTCL()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_2

    .line 193
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 196
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    nop

    .line 198
    :goto_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 182
    :cond_3
    :goto_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
