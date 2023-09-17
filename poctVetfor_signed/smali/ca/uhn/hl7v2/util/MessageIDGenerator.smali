.class public Lca/uhn/hl7v2/util/MessageIDGenerator;
.super Ljava/lang/Object;
.source "MessageIDGenerator.java"


# static fields
.field public static final DEFAULT_ID_FILE:Ljava/lang/String;

.field public static final NEVER_FAIL_PROPERTY:Ljava/lang/String;

.field private static messageIdGenerator:Lca/uhn/hl7v2/util/MessageIDGenerator;

.field private static final ourLog:Lorg/slf4j/Logger;


# instance fields
.field private fileW:Ljava/io/FileWriter;

.field private id:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-class v0, Lca/uhn/hl7v2/util/MessageIDGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/util/MessageIDGenerator;->ourLog:Lorg/slf4j/Logger;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lca/uhn/hl7v2/util/Home;->getHomeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/id_file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/util/MessageIDGenerator;->DEFAULT_ID_FILE:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lca/uhn/hl7v2/util/MessageIDGenerator;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_NEVER_FAIL_PROPERTY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/util/MessageIDGenerator;->NEVER_FAIL_PROPERTY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/MessageIDGenerator;->initialize()V

    .line 67
    return-void
.end method

.method public static declared-synchronized getInstance()Lca/uhn/hl7v2/util/MessageIDGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lca/uhn/hl7v2/util/MessageIDGenerator;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/util/MessageIDGenerator;->messageIdGenerator:Lca/uhn/hl7v2/util/MessageIDGenerator;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lca/uhn/hl7v2/util/MessageIDGenerator;

    invoke-direct {v1}, Lca/uhn/hl7v2/util/MessageIDGenerator;-><init>()V

    sput-object v1, Lca/uhn/hl7v2/util/MessageIDGenerator;->messageIdGenerator:Lca/uhn/hl7v2/util/MessageIDGenerator;

    .line 137
    :cond_0
    sget-object v1, Lca/uhn/hl7v2/util/MessageIDGenerator;->messageIdGenerator:Lca/uhn/hl7v2/util/MessageIDGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getNewID()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 146
    const/4 v0, 0x0

    :try_start_0
    iget-wide v1, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->id:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->id:J

    .line 148
    iget-wide v1, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "idStr":Ljava/lang/String;
    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lca/uhn/hl7v2/util/MessageIDGenerator;->DEFAULT_ID_FILE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->fileW:Ljava/io/FileWriter;

    .line 152
    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->fileW:Ljava/io/FileWriter;

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->fileW:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 154
    iget-object v2, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->fileW:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v1    # "idStr":Ljava/lang/String;
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lca/uhn/hl7v2/util/MessageIDGenerator;->NEVER_FAIL_PROPERTY:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    sget-object v2, Lca/uhn/hl7v2/util/MessageIDGenerator;->ourLog:Lorg/slf4j/Logger;

    const-string v3, "Failed to create message ID file. Message was: {}"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->fileW:Ljava/io/FileWriter;

    .line 164
    goto :goto_0

    .line 165
    :cond_0
    throw v1

    .line 155
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 156
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lca/uhn/hl7v2/util/MessageIDGenerator;->NEVER_FAIL_PROPERTY:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    sget-object v2, Lca/uhn/hl7v2/util/MessageIDGenerator;->ourLog:Lorg/slf4j/Logger;

    const-string v3, "Failed to create message ID file. Message was: {}"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    iput-object v0, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->fileW:Ljava/io/FileWriter;

    .line 168
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_0
    iget-wide v0, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 145
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method initialize()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->id:J

    .line 83
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lca/uhn/hl7v2/util/MessageIDGenerator;->DEFAULT_ID_FILE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v2, "extFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    iput-wide v0, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->id:J

    .line 90
    goto :goto_1

    .line 94
    :cond_0
    new-instance v3, Ljava/io/FileReader;

    sget-object v4, Lca/uhn/hl7v2/util/MessageIDGenerator;->DEFAULT_ID_FILE:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 95
    .local v3, "fileR":Ljava/io/FileReader;
    const/16 v4, 0x64

    new-array v4, v4, [C

    .line 96
    .local v4, "charArray":[C
    invoke-virtual {v3, v4}, Ljava/io/FileReader;->read([C)I

    move-result v5

    .line 97
    .local v5, "e":I
    if-gtz v5, :cond_1

    .line 100
    iput-wide v0, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->id:J

    .line 101
    goto :goto_0

    .line 105
    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "idStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    .local v7, "idStrTrim":Ljava/lang/String;
    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->id:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    goto :goto_0

    :catch_0
    move-exception v8

    .line 111
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    sget-object v9, Lca/uhn/hl7v2/util/MessageIDGenerator;->ourLog:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to parse message ID file value \""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\". Defaulting to 0."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 116
    .end local v6    # "idStr":Ljava/lang/String;
    .end local v7    # "idStrTrim":Ljava/lang/String;
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    .end local v2    # "extFile":Ljava/io/File;
    .end local v3    # "fileR":Ljava/io/FileReader;
    .end local v4    # "charArray":[C
    .end local v5    # "e":I
    goto :goto_1

    .line 120
    :catch_1
    move-exception v2

    .line 121
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lca/uhn/hl7v2/util/MessageIDGenerator;->NEVER_FAIL_PROPERTY:Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    sget-object v3, Lca/uhn/hl7v2/util/MessageIDGenerator;->ourLog:Lorg/slf4j/Logger;

    const-string v4, "Could not retrieve message ID file, going to default to ID of 0. Message was: {}"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    iput-wide v0, p0, Lca/uhn/hl7v2/util/MessageIDGenerator;->id:J

    .line 124
    return-void

    .line 126
    :cond_2
    throw v2

    .line 118
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lca/uhn/hl7v2/util/MessageIDGenerator;->ourLog:Lorg/slf4j/Logger;

    const-string v2, "Failed to locate message ID file. Message was: {}"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void
.end method
