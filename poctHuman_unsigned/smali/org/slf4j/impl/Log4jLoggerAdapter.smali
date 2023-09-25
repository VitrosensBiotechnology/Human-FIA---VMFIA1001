.class public final Lorg/slf4j/impl/Log4jLoggerAdapter;
.super Lorg/slf4j/helpers/MarkerIgnoringBase;
.source "Log4jLoggerAdapter.java"

# interfaces
.implements Lorg/slf4j/spi/LocationAwareLogger;
.implements Ljava/io/Serializable;


# static fields
.field static final FQCN:Ljava/lang/String;

.field static synthetic class$org$slf4j$impl$Log4jLoggerAdapter:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x55cdd736bde3f5d1L


# instance fields
.field final transient logger:Lorg/apache/log4j/Logger;

.field final traceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget-object v0, Lorg/slf4j/impl/Log4jLoggerAdapter;->class$org$slf4j$impl$Log4jLoggerAdapter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.slf4j.impl.Log4jLoggerAdapter"

    invoke-static {v0}, Lorg/slf4j/impl/Log4jLoggerAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/slf4j/impl/Log4jLoggerAdapter;->class$org$slf4j$impl$Log4jLoggerAdapter:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/slf4j/impl/Log4jLoggerAdapter;->class$org$slf4j$impl$Log4jLoggerAdapter:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/apache/log4j/Logger;)V
    .locals 1
    .param p1, "logger"    # Lorg/apache/log4j/Logger;

    .line 75
    invoke-direct {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    .line 77
    invoke-virtual {p1}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->name:Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Lorg/slf4j/impl/Log4jLoggerAdapter;->isTraceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->traceCapable:Z

    .line 79
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 66
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 66
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isTraceCapable()Z
    .locals 2

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isTraceEnabled()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v0, 0x1

    return v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 210
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 229
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 231
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 252
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 254
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 286
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 287
    return-void
.end method

.method public debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 273
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 275
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 499
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 518
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 520
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 539
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 541
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 543
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 576
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 577
    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 560
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 562
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 564
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 306
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 324
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 326
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 347
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 349
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 382
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 383
    return-void
.end method

.method public info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 368
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 370
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .line 488
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->traceCapable:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isTraceEnabled()Z

    move-result v0

    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .line 391
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "callerFQCN"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "argArray"    # [Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 582
    if-eqz p3, :cond_4

    const/16 v0, 0xa

    if-eq p3, v0, :cond_3

    const/16 v0, 0x14

    if-eq p3, v0, :cond_2

    const/16 v0, 0x1e

    if-eq p3, v0, :cond_1

    const/16 v0, 0x28

    if-eq p3, v0, :cond_0

    .line 599
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Level number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " is not recognized."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    .line 597
    .local v0, "log4jLevel":Lorg/apache/log4j/Level;
    goto :goto_1

    .line 593
    .end local v0    # "log4jLevel":Lorg/apache/log4j/Level;
    :cond_1
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    .line 594
    .restart local v0    # "log4jLevel":Lorg/apache/log4j/Level;
    goto :goto_1

    .line 590
    .end local v0    # "log4jLevel":Lorg/apache/log4j/Level;
    :cond_2
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    .line 591
    .restart local v0    # "log4jLevel":Lorg/apache/log4j/Level;
    goto :goto_1

    .line 587
    .end local v0    # "log4jLevel":Lorg/apache/log4j/Level;
    :cond_3
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    .line 588
    .restart local v0    # "log4jLevel":Lorg/apache/log4j/Level;
    goto :goto_1

    .line 584
    .end local v0    # "log4jLevel":Lorg/apache/log4j/Level;
    :cond_4
    iget-boolean v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->traceCapable:Z

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    .line 585
    .restart local v0    # "log4jLevel":Lorg/apache/log4j/Level;
    :goto_0
    nop

    .line 602
    :goto_1
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v1, p2, v0, p4, p6}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 603
    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->traceCapable:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Lorg/slf4j/impl/Log4jLoggerAdapter;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 130
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->traceCapable:Z

    if-eqz v3, :cond_0

    sget-object v3, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    :goto_0
    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 133
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_1
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Lorg/slf4j/impl/Log4jLoggerAdapter;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 154
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->traceCapable:Z

    if-eqz v3, :cond_0

    sget-object v3, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    :goto_0
    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 157
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_1
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 190
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->traceCapable:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    :goto_0
    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 191
    return-void
.end method

.method public trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 174
    invoke-virtual {p0}, Lorg/slf4j/impl/Log4jLoggerAdapter;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 176
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->traceCapable:Z

    if-eqz v3, :cond_0

    sget-object v3, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    :goto_0
    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 179
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_1
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 402
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 421
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 423
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 444
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 446
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 479
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 480
    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 465
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/slf4j/impl/Log4jLoggerAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/slf4j/impl/Log4jLoggerAdapter;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 467
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method
