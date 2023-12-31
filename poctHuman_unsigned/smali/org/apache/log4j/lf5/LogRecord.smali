.class public abstract Lorg/apache/log4j/lf5/LogRecord;
.super Ljava/lang/Object;
.source "LogRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static _seqCount:J


# instance fields
.field protected _category:Ljava/lang/String;

.field protected _level:Lorg/apache/log4j/lf5/LogLevel;

.field protected _location:Ljava/lang/String;

.field protected _message:Ljava/lang/String;

.field protected _millis:J

.field protected _ndc:Ljava/lang/String;

.field protected _sequenceNumber:J

.field protected _thread:Ljava/lang/String;

.field protected _thrown:Ljava/lang/Throwable;

.field protected _thrownStackTrace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/apache/log4j/lf5/LogRecord;->_seqCount:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_millis:J

    .line 66
    const-string v0, "Debug"

    iput-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_category:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_message:Ljava/lang/String;

    .line 68
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->INFO:Lorg/apache/log4j/lf5/LogLevel;

    iput-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_level:Lorg/apache/log4j/lf5/LogLevel;

    .line 69
    invoke-static {}, Lorg/apache/log4j/lf5/LogRecord;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_sequenceNumber:J

    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_thread:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_ndc:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_location:Ljava/lang/String;

    .line 73
    return-void
.end method

.method protected static declared-synchronized getNextId()J
    .locals 7

    const-class v0, Lorg/apache/log4j/lf5/LogRecord;

    monitor-enter v0

    .line 381
    :try_start_0
    sget-wide v1, Lorg/apache/log4j/lf5/LogRecord;->_seqCount:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lorg/apache/log4j/lf5/LogRecord;->_seqCount:J

    .line 382
    sget-wide v1, Lorg/apache/log4j/lf5/LogRecord;->_seqCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    .line 380
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized resetSequenceNumber()V
    .locals 3

    const-class v0, Lorg/apache/log4j/lf5/LogRecord;

    monitor-enter v0

    .line 373
    const-wide/16 v1, 0x0

    :try_start_0
    sput-wide v1, Lorg/apache/log4j/lf5/LogRecord;->_seqCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit v0

    return-void

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_category:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lorg/apache/log4j/lf5/LogLevel;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_level:Lorg/apache/log4j/lf5/LogLevel;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_location:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_message:Ljava/lang/String;

    return-object v0
.end method

.method public getMillis()J
    .locals 2

    .line 212
    iget-wide v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_millis:J

    return-wide v0
.end method

.method public getNDC()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_ndc:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_sequenceNumber:J

    return-wide v0
.end method

.method public getThreadDescription()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_thread:Ljava/lang/String;

    return-object v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_thrown:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getThrownStackTrace()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogRecord;->_thrownStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public hasThrown()Z
    .locals 4

    .line 111
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    .line 112
    .local v0, "thrown":Ljava/lang/Throwable;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 113
    return v1

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "thrownString":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isFatal()Z
    .locals 1

    .line 123
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogRecord;->isSevereLevel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogRecord;->hasThrown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract isSevereLevel()Z
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .line 156
    iput-object p1, p0, Lorg/apache/log4j/lf5/LogRecord;->_category:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setLevel(Lorg/apache/log4j/lf5/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .line 98
    iput-object p1, p0, Lorg/apache/log4j/lf5/LogRecord;->_level:Lorg/apache/log4j/lf5/LogLevel;

    .line 99
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .line 365
    iput-object p1, p0, Lorg/apache/log4j/lf5/LogRecord;->_location:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lorg/apache/log4j/lf5/LogRecord;->_message:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setMillis(J)V
    .locals 0
    .param p1, "millis"    # J

    .line 223
    iput-wide p1, p0, Lorg/apache/log4j/lf5/LogRecord;->_millis:J

    .line 224
    return-void
.end method

.method public setNDC(Ljava/lang/String;)V
    .locals 0
    .param p1, "ndc"    # Ljava/lang/String;

    .line 347
    iput-object p1, p0, Lorg/apache/log4j/lf5/LogRecord;->_ndc:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setSequenceNumber(J)V
    .locals 0
    .param p1, "number"    # J

    .line 200
    iput-wide p1, p0, Lorg/apache/log4j/lf5/LogRecord;->_sequenceNumber:J

    .line 201
    return-void
.end method

.method public setThreadDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "threadDescription"    # Ljava/lang/String;

    .line 249
    iput-object p1, p0, Lorg/apache/log4j/lf5/LogRecord;->_thread:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setThrown(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .line 304
    if-nez p1, :cond_0

    .line 305
    return-void

    .line 307
    :cond_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/LogRecord;->_thrown:Ljava/lang/Throwable;

    .line 308
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 309
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 310
    .local v1, "out":Ljava/io/PrintWriter;
    invoke-static {p1, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 311
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 312
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/lf5/LogRecord;->_thrownStackTrace:Ljava/lang/String;

    .line 314
    :try_start_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 315
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_0

    .line 316
    :catch_0
    move-exception v2

    .line 319
    :goto_0
    const/4 v1, 0x0

    .line 320
    const/4 v0, 0x0

    .line 321
    return-void
.end method

.method public setThrownStackTrace(Ljava/lang/String;)V
    .locals 0
    .param p1, "trace"    # Ljava/lang/String;

    .line 280
    iput-object p1, p0, Lorg/apache/log4j/lf5/LogRecord;->_thrownStackTrace:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 327
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 328
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "LogRecord: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/log4j/lf5/LogRecord;->_level:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/log4j/lf5/LogRecord;->_message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
