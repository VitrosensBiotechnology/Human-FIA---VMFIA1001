.class public Lorg/apache/log4j/lf5/DefaultLF5Configurator;
.super Ljava/lang/Object;
.source "DefaultLF5Configurator.java"

# interfaces
.implements Lorg/apache/log4j/spi/Configurator;


# static fields
.field static synthetic class$org$apache$log4j$lf5$DefaultLF5Configurator:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 82
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 82
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static configure()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const-string v0, "/org/apache/log4j/lf5/config/defaultconfig.properties"

    .line 81
    .local v0, "resource":Ljava/lang/String;
    sget-object v1, Lorg/apache/log4j/lf5/DefaultLF5Configurator;->class$org$apache$log4j$lf5$DefaultLF5Configurator:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.log4j.lf5.DefaultLF5Configurator"

    invoke-static {v1}, Lorg/apache/log4j/lf5/DefaultLF5Configurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/lf5/DefaultLF5Configurator;->class$org$apache$log4j$lf5$DefaultLF5Configurator:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/log4j/lf5/DefaultLF5Configurator;->class$org$apache$log4j$lf5$DefaultLF5Configurator:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 84
    .local v1, "configFileResource":Ljava/net/URL;
    if-eqz v1, :cond_1

    .line 85
    invoke-static {v1}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/net/URL;)V

    .line 91
    return-void

    .line 87
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Error: Unable to open the resource"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public doConfigure(Ljava/io/InputStream;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class should NOT be instantiated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 2
    .param p1, "configURL"    # Ljava/net/URL;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class should NOT be instantiated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
