.class public Lorg/apache/log4j/AsyncAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "AsyncAppender.java"

# interfaces
.implements Lorg/apache/log4j/spi/AppenderAttachable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/AsyncAppender$Dispatcher;,
        Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x80


# instance fields
.field aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private final appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private blocking:Z

.field private final buffer:Ljava/util/List;

.field private bufferSize:I

.field private final discardMap:Ljava/util/Map;

.field private final dispatcher:Ljava/lang/Thread;

.field private locationInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 105
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    .line 77
    const/16 v0, 0x80

    iput v0, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    .line 106
    new-instance v1, Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-direct {v1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 110
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    iput-object v1, p0, Lorg/apache/log4j/AsyncAppender;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 112
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/apache/log4j/AsyncAppender$Dispatcher;

    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-direct {v2, p0, v3, v4, v5}, Lorg/apache/log4j/AsyncAppender$Dispatcher;-><init>(Lorg/apache/log4j/AsyncAppender;Ljava/util/List;Ljava/util/Map;Lorg/apache/log4j/helpers/AppenderAttachableImpl;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    .line 117
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 121
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "AsyncAppender-Dispatcher-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    return-void
.end method


# virtual methods
.method public addAppender(Lorg/apache/log4j/Appender;)V
    .locals 2
    .param p1, "newAppender"    # Lorg/apache/log4j/Appender;

    .line 131
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 6
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 144
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 154
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 158
    iget-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 161
    :cond_1
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v0

    .line 166
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 168
    .local v1, "previousSize":I
    iget v2, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    if-ge v1, v2, :cond_2

    .line 169
    iget-object v2, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    if-nez v1, :cond_5

    .line 177
    iget-object v2, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    .line 190
    :cond_2
    const/4 v2, 0x1

    .line 191
    .local v2, "discard":Z
    iget-boolean v3, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v4, :cond_3

    .line 195
    :try_start_1
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    const/4 v2, 0x0

    .line 203
    goto :goto_1

    .line 197
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 210
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    .line 211
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "loggerName":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/AsyncAppender$DiscardSummary;

    .line 214
    .local v4, "summary":Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    if-nez v4, :cond_4

    .line 215
    new-instance v5, Lorg/apache/log4j/AsyncAppender$DiscardSummary;

    invoke-direct {v5, p1}, Lorg/apache/log4j/AsyncAppender$DiscardSummary;-><init>(Lorg/apache/log4j/spi/LoggingEvent;)V

    move-object v4, v5

    .line 216
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 218
    :cond_4
    invoke-virtual {v4, p1}, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->add(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 221
    nop

    .line 224
    .end local v1    # "previousSize":I
    .end local v2    # "discard":Z
    .end local v3    # "loggerName":Ljava/lang/String;
    .end local v4    # "summary":Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    :cond_5
    :goto_2
    monitor-exit v0

    .line 225
    return-void

    .line 223
    :cond_6
    goto :goto_0

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 145
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 146
    :try_start_3
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I

    .line 147
    monitor-exit v0

    .line 149
    return-void

    .line 147
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public close()V
    .locals 4

    .line 236
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v0

    .line 237
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/log4j/AsyncAppender;->closed:Z

    .line 238
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 245
    const-string v1, "Got an InterruptedException while waiting for the dispatcher to finish."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 254
    :try_start_2
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAllAppenders()Ljava/util/Enumeration;

    move-result-object v0

    .line 256
    .local v0, "iter":Ljava/util/Enumeration;
    if-eqz v0, :cond_1

    .line 257
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 260
    .local v2, "next":Ljava/lang/Object;
    instance-of v3, v2, Lorg/apache/log4j/Appender;

    if-eqz v3, :cond_0

    .line 261
    move-object v3, v2

    check-cast v3, Lorg/apache/log4j/Appender;

    invoke-interface {v3}, Lorg/apache/log4j/Appender;->close()V

    .line 263
    .end local v2    # "next":Ljava/lang/Object;
    :cond_0
    goto :goto_1

    .line 265
    .end local v0    # "iter":Ljava/util/Enumeration;
    :cond_1
    monitor-exit v1

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 239
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getAllAppenders()Ljava/util/Enumeration;
    .locals 2

    .line 273
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAllAppenders()Ljava/util/Enumeration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBlocking()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 395
    iget v0, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    return v0
.end method

.method public getLocationInfo()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    return v0
.end method

.method public isAttached(Lorg/apache/log4j/Appender;)Z
    .locals 2
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .line 306
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->isAttached(Lorg/apache/log4j/Appender;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAllAppenders()V
    .locals 2

    .line 322
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAllAppenders()V

    .line 324
    monitor-exit v0

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAppender(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAppender(Ljava/lang/String;)V

    .line 344
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAppender(Lorg/apache/log4j/Appender;)V
    .locals 2
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .line 332
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAppender(Lorg/apache/log4j/Appender;)V

    .line 334
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requiresLayout()Z
    .locals 1

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public setBlocking(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 406
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v0

    .line 407
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    .line 408
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 409
    monitor-exit v0

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBufferSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 377
    if-gez p1, :cond_0

    .line 378
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    const-string v1, "size"

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v0

    .line 385
    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    :try_start_0
    iput v1, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    .line 386
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 387
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationInfo(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 361
    iput-boolean p1, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    .line 362
    return-void
.end method
