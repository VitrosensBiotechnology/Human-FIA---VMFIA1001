.class public Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;
.super Lca/uhn/hl7v2/util/idgenerator/InMemoryIDGenerator;
.source "FileBasedGenerator.java"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private directory:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private minimizeReads:Z

.field private neverFail:Z

.field private used:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;-><init>(I)V

    .line 64
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "increment"    # I

    .line 67
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/util/idgenerator/InMemoryIDGenerator;-><init>(I)V

    .line 55
    invoke-static {}, Lca/uhn/hl7v2/util/Home;->getHomeDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->directory:Ljava/lang/String;

    .line 56
    const-string v0, "id_file"

    iput-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->fileName:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->neverFail:Z

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->used:Z

    .line 59
    iput-boolean v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->minimizeReads:Z

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 68
    return-void
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 3

    .line 138
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->directory:Ljava/lang/String;

    iget-object v2, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readInitialValue(Ljava/lang/String;)J
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 116
    .local v1, "id":Ljava/lang/String;
    const-wide/16 v2, -0x1

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v4

    .line 117
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 118
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    if-eqz v0, :cond_0

    .line 131
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    goto :goto_0

    :catch_0
    move-exception v2

    .line 118
    :cond_0
    :goto_0
    return-wide v4

    .line 128
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 125
    :catch_1
    move-exception v4

    .line 126
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    sget-object v5, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->LOG:Lorg/slf4j/Logger;

    const-string v6, "ID {} read from file is not a number"

    invoke-interface {v5, v6, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    if-eqz v0, :cond_1

    .line 131
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 132
    goto :goto_1

    :catch_2
    move-exception v5

    .line 127
    :cond_1
    :goto_1
    return-wide v2

    .line 119
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v4

    .line 120
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v5, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->LOG:Lorg/slf4j/Logger;

    const-string v6, "Could not read ID file {} "

    invoke-interface {v5, v6, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    iget-boolean v5, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->neverFail:Z

    if-nez v5, :cond_2

    .line 122
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    :cond_2
    if-eqz v0, :cond_3

    .line 131
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 132
    goto :goto_2

    :catch_4
    move-exception v5

    .line 124
    :cond_3
    :goto_2
    return-wide v2

    .line 128
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 129
    if-eqz v0, :cond_4

    .line 131
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 132
    goto :goto_4

    :catch_5
    move-exception v3

    .line 134
    :cond_4
    :goto_4
    throw v2
.end method

.method private writeNextValue(J)V
    .locals 6
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->getFilePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 98
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    nop

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 110
    :cond_0
    return-void

    .line 106
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-boolean v2, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->neverFail:Z

    if-eqz v2, :cond_2

    .line 101
    sget-object v2, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Could not write ID to file {}, going to use internal ID generator. {}"

    .line 102
    invoke-direct {p0}, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 103
    :cond_1
    return-void

    .line 105
    :cond_2
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 107
    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 109
    :cond_3
    throw v1
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 75
    iget-boolean v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->minimizeReads:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->used:Z

    if-nez v0, :cond_2

    .line 76
    :cond_0
    invoke-direct {p0}, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->readInitialValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 77
    .local v0, "readInitialValue":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 78
    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->set(J)V

    .line 80
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->used:Z

    .line 83
    .end local v0    # "readInitialValue":J
    :cond_2
    invoke-super {p0}, Lca/uhn/hl7v2/util/idgenerator/InMemoryIDGenerator;->getID()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0}, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->getIncrement()I

    move-result v3

    int-to-long v3, v3

    add-long v5, v1, v3

    invoke-direct {p0, v5, v6}, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->writeNextValue(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    nop

    .line 89
    iget-object v1, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 87
    return-object v0

    .line 88
    .end local v0    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 89
    iget-object v1, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 90
    throw v0
.end method

.method public reset()V
    .locals 3

    .line 182
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 183
    invoke-super {p0}, Lca/uhn/hl7v2/util/idgenerator/InMemoryIDGenerator;->reset()V

    .line 184
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->writeNextValue(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    nop

    .line 188
    iget-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 190
    return-void

    .line 187
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot initialize persistent ID generator"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 188
    iget-object v1, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 189
    throw v0
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 2
    .param p1, "directory"    # Ljava/lang/String;

    .line 143
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 144
    iput-object p1, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->directory:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    nop

    .line 146
    iget-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 148
    return-void

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 147
    throw v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 152
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 153
    iput-object p1, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->fileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    nop

    .line 155
    iget-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 157
    return-void

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    iget-object v1, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 156
    throw v0
.end method

.method public setMinimizeReads(Z)V
    .locals 0
    .param p1, "theMinimizeReads"    # Z

    .line 166
    iput-boolean p1, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->minimizeReads:Z

    .line 167
    return-void
.end method

.method public setNeverFail(Z)V
    .locals 0
    .param p1, "neverFail"    # Z

    .line 177
    iput-boolean p1, p0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;->neverFail:Z

    .line 178
    return-void
.end method
