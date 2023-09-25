.class public abstract Lca/uhn/hl7v2/app/HL7Service;
.super Lca/uhn/hl7v2/concurrent/Service;
.source "HL7Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final applicationRouter:Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;

.field private final cleaner:Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;

.field private final connections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/app/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/app/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final llp:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

.field private final parser:Lca/uhn/hl7v2/parser/Parser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    nop

    .line 68
    const-class v0, Lca/uhn/hl7v2/app/HL7Service;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/app/HL7Service;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 3
    .param p1, "theHapiContext"    # Lca/uhn/hl7v2/HapiContext;

    .line 81
    invoke-interface {p1}, Lca/uhn/hl7v2/HapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v0

    invoke-interface {p1}, Lca/uhn/hl7v2/HapiContext;->getLowerLayerProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v1

    invoke-interface {p1}, Lca/uhn/hl7v2/HapiContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lca/uhn/hl7v2/app/HL7Service;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/util/concurrent/ExecutorService;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;)V
    .locals 1
    .param p1, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p2, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    .line 89
    invoke-static {}, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->getDefaultService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lca/uhn/hl7v2/app/HL7Service;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/util/concurrent/ExecutorService;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p2, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 101
    const-string v0, "HL7 Server"

    invoke-direct {p0, v0, p3}, Lca/uhn/hl7v2/concurrent/Service;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->connections:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->listeners:Ljava/util/List;

    .line 104
    iput-object p1, p0, Lca/uhn/hl7v2/app/HL7Service;->parser:Lca/uhn/hl7v2/parser/Parser;

    .line 105
    iput-object p2, p0, Lca/uhn/hl7v2/app/HL7Service;->llp:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    .line 106
    new-instance v0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;-><init>(Lca/uhn/hl7v2/parser/Parser;)V

    iput-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->applicationRouter:Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;

    .line 107
    new-instance v0, Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;-><init>(Lca/uhn/hl7v2/app/HL7Service;)V

    iput-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->cleaner:Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;

    .line 110
    nop

    .line 111
    return-void
.end method

.method static synthetic access$0()Lorg/slf4j/Logger;
    .locals 1

    .line 68
    sget-object v0, Lca/uhn/hl7v2/app/HL7Service;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1(Lca/uhn/hl7v2/app/HL7Service;Lca/uhn/hl7v2/app/Connection;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/app/HL7Service;->notifyListeners(Lca/uhn/hl7v2/app/Connection;)V

    return-void
.end method

.method private notifyListeners(Lca/uhn/hl7v2/app/Connection;)V
    .locals 3
    .param p1, "c"    # Lca/uhn/hl7v2/app/Connection;

    .line 230
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    return-void

    .line 230
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/app/ConnectionListener;

    .line 231
    .local v1, "cl":Lca/uhn/hl7v2/app/ConnectionListener;
    invoke-interface {p1}, Lca/uhn/hl7v2/app/Connection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    invoke-interface {v1, p1}, Lca/uhn/hl7v2/app/ConnectionListener;->connectionReceived(Lca/uhn/hl7v2/app/Connection;)V

    .line 233
    goto :goto_0

    .line 234
    :cond_1
    invoke-interface {v1, p1}, Lca/uhn/hl7v2/app/ConnectionListener;->connectionDiscarded(Lca/uhn/hl7v2/app/Connection;)V

    .line 234
    .end local v1    # "cl":Lca/uhn/hl7v2/app/ConnectionListener;
    goto :goto_0
.end method


# virtual methods
.method protected afterStartup()V
    .locals 1

    .line 123
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->cleaner:Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;->start()V

    .line 124
    return-void
.end method

.method protected afterTermination()V
    .locals 2

    .line 134
    invoke-super {p0}, Lca/uhn/hl7v2/concurrent/Service;->afterTermination()V

    .line 135
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->cleaner:Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/HL7Service$ConnectionCleaner;->stopAndWait()V

    .line 136
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    return-void

    .line 136
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/app/Connection;

    .line 137
    .local v1, "c":Lca/uhn/hl7v2/app/Connection;
    invoke-interface {v1}, Lca/uhn/hl7v2/app/Connection;->close()V

    .line 137
    .end local v1    # "c":Lca/uhn/hl7v2/app/Connection;
    goto :goto_0
.end method

.method getLlp()Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .locals 1

    .line 152
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->llp:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    return-object v0
.end method

.method getParser()Lca/uhn/hl7v2/parser/Parser;
    .locals 1

    .line 156
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->parser:Lca/uhn/hl7v2/parser/Parser;

    return-object v0
.end method

.method public getRemoteConnection(Ljava/lang/String;)Lca/uhn/hl7v2/app/Connection;
    .locals 4
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "conn":Lca/uhn/hl7v2/app/Connection;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 202
    return-object v0

    .line 184
    :cond_1
    const/4 v1, 0x0

    .line 185
    .local v1, "c":I
    monitor-enter p0

    .line 186
    :goto_1
    if-nez v0, :cond_4

    :try_start_0
    iget-object v2, p0, Lca/uhn/hl7v2/app/HL7Service;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_2

    .line 187
    :cond_2
    iget-object v2, p0, Lca/uhn/hl7v2/app/HL7Service;->connections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/app/Connection;

    .line 188
    .local v2, "nextConn":Lca/uhn/hl7v2/app/Connection;
    invoke-interface {v2}, Lca/uhn/hl7v2/app/Connection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    move-object v0, v2

    .line 190
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 190
    .end local v2    # "nextConn":Lca/uhn/hl7v2/app/Connection;
    goto :goto_1

    .line 185
    :catchall_0
    move-exception v2

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    if-nez v0, :cond_0

    .line 196
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    goto :goto_0

    :catch_0
    move-exception v2

    .line 197
    .end local v1    # "c":I
    goto :goto_0

    .line 185
    .restart local v1    # "c":I
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public declared-synchronized getRemoteConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/app/Connection;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->connections:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected keepRunning()Z
    .locals 1

    .line 148
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/HL7Service;->isRunning()Z

    move-result v0

    return v0
.end method

.method public loadApplicationsFromFile(Ljava/io/File;)V
    .locals 10
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 364
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    .line 364
    .local v2, "line":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 397
    .end local v2    # "line":Ljava/lang/String;
    nop

    .line 398
    if-eqz v0, :cond_1

    .line 400
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    goto :goto_1

    :catch_0
    move-exception v1

    .line 406
    :cond_1
    :goto_1
    return-void

    .line 364
    .restart local v2    # "line":Ljava/lang/String;
    :cond_2
    nop

    .line 366
    :try_start_2
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "\t"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 369
    .local v1, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 371
    :try_start_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "event":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    .local v5, "className":Ljava/lang/String;
    nop

    .line 375
    nop

    .line 386
    :try_start_4
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 385
    nop

    .line 388
    .local v6, "appClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/app/Application;>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lca/uhn/hl7v2/app/Application;

    .line 389
    .local v7, "app":Lca/uhn/hl7v2/app/Application;
    new-instance v8, Lca/uhn/hl7v2/protocol/impl/AppWrapper;

    invoke-direct {v8, v7}, Lca/uhn/hl7v2/protocol/impl/AppWrapper;-><init>(Lca/uhn/hl7v2/app/Application;)V

    invoke-virtual {p0, v3, v4, v8}, Lca/uhn/hl7v2/app/HL7Service;->registerApplication(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/protocol/ReceivingApplication;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 390
    .end local v6    # "appClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/app/Application;>;"
    .end local v7    # "app":Lca/uhn/hl7v2/app/Application;
    goto :goto_0

    :catch_1
    move-exception v6

    .line 391
    .local v6, "cce":Ljava/lang/ClassCastException;
    :try_start_5
    new-instance v7, Lca/uhn/hl7v2/HL7Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "The specified class, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string v9, ", doesn\'t implement Application."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 391
    invoke-direct {v7, v8}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 374
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "event":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "cce":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v3

    .line 375
    .local v3, "ne":Ljava/util/NoSuchElementException;
    new-instance v4, Lca/uhn/hl7v2/HL7Exception;

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t register applications from file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v6, ". The line \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v6, "\' is not of the form: message_type [tab] trigger_event [tab] application_class."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 375
    invoke-direct {v4, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 397
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "ne":Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v1

    .line 398
    if-eqz v0, :cond_3

    .line 400
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 401
    goto :goto_2

    :catch_3
    move-exception v2

    .line 405
    :cond_3
    :goto_2
    throw v1
.end method

.method public declared-synchronized newConnection(Lca/uhn/hl7v2/app/ActiveConnection;)V
    .locals 2
    .param p1, "c"    # Lca/uhn/hl7v2/app/ActiveConnection;

    monitor-enter p0

    .line 166
    :try_start_0
    invoke-virtual {p1}, Lca/uhn/hl7v2/app/ActiveConnection;->getResponder()Lca/uhn/hl7v2/app/Responder;

    move-result-object v0

    iget-object v1, p0, Lca/uhn/hl7v2/app/HL7Service;->applicationRouter:Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/app/Responder;->setApplicationRouter(Lca/uhn/hl7v2/protocol/ApplicationRouter;)V

    .line 167
    invoke-virtual {p1}, Lca/uhn/hl7v2/app/ActiveConnection;->activate()V

    .line 168
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->connections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/app/HL7Service;->notifyListeners(Lca/uhn/hl7v2/app/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 165
    .end local p1    # "c":Lca/uhn/hl7v2/app/ActiveConnection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerApplication(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;Lca/uhn/hl7v2/protocol/ReceivingApplication;)V
    .locals 2
    .param p1, "appRouting"    # Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;",
            "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;)V"
        }
    .end annotation

    .line 273
    .local p2, "application":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    monitor-enter p0

    .line 273
    if-nez p1, :cond_0

    .line 274
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "appRouting must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    .end local p1    # "appRouting":Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    .end local p2    # "application":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 276
    .restart local p1    # "appRouting":Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    .restart local p2    # "application":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->applicationRouter:Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;

    invoke-virtual {v0, p1, p2}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->bindApplication(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;Lca/uhn/hl7v2/protocol/ReceivingApplication;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 272
    .end local p1    # "appRouting":Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    .end local p2    # "application":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerApplication(Lca/uhn/hl7v2/protocol/ReceivingApplication;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;)V"
        }
    .end annotation

    .line 285
    .local p1, "application":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    monitor-enter p0

    .line 285
    :try_start_0
    new-instance v0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;

    const-string v1, "*"

    const-string v2, "*"

    const-string v3, "*"

    const-string v4, "*"

    invoke-direct {v0, v1, v2, v3, v4}, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/app/HL7Service;->registerApplication(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;Lca/uhn/hl7v2/protocol/ReceivingApplication;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 284
    .end local p1    # "application":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerApplication(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/app/Application;)V
    .locals 5
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "triggerEvent"    # Ljava/lang/String;
    .param p3, "handler"    # Lca/uhn/hl7v2/app/Application;

    monitor-enter p0

    .line 252
    :try_start_0
    new-instance v0, Lca/uhn/hl7v2/protocol/impl/AppWrapper;

    invoke-direct {v0, p3}, Lca/uhn/hl7v2/protocol/impl/AppWrapper;-><init>(Lca/uhn/hl7v2/app/Application;)V

    .line 253
    .local v0, "handlerWrapper":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<Lca/uhn/hl7v2/model/Message;>;"
    iget-object v1, p0, Lca/uhn/hl7v2/app/HL7Service;->applicationRouter:Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;

    new-instance v2, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;

    const-string v3, "*"

    const-string v4, "*"

    invoke-direct {v2, p1, p2, v3, v4}, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->bindApplication(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;Lca/uhn/hl7v2/protocol/ReceivingApplication;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 251
    .end local v0    # "handlerWrapper":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<Lca/uhn/hl7v2/model/Message;>;"
    .end local p1    # "messageType":Ljava/lang/String;
    .end local p2    # "triggerEvent":Ljava/lang/String;
    .end local p3    # "handler":Lca/uhn/hl7v2/app/Application;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerApplication(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/protocol/ReceivingApplication;)V
    .locals 4
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "triggerEvent"    # Ljava/lang/String;
    .param p3, "handler"    # Lca/uhn/hl7v2/protocol/ReceivingApplication;

    .line 265
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->applicationRouter:Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;

    new-instance v1, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;

    const-string v2, "*"

    const-string v3, "*"

    invoke-direct {v1, p1, p2, v2, v3}, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->bindApplication(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;Lca/uhn/hl7v2/protocol/ReceivingApplication;)V

    .line 266
    return-void
.end method

.method public declared-synchronized registerConnectionListener(Lca/uhn/hl7v2/app/ConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Lca/uhn/hl7v2/app/ConnectionListener;

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 222
    .end local p1    # "listener":Lca/uhn/hl7v2/app/ConnectionListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setExceptionHandler(Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;)V
    .locals 1
    .param p1, "exHandler"    # Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;

    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->applicationRouter:Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->setExceptionHandler(Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 319
    .end local p1    # "exHandler":Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterApplication(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Z
    .locals 2
    .param p1, "appRouting"    # Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;

    monitor-enter p0

    .line 295
    if-nez p1, :cond_0

    .line 296
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "appRouting must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    .end local p1    # "appRouting":Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 298
    .restart local p1    # "appRouting":Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->applicationRouter:Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->unbindApplication(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 294
    .end local p1    # "appRouting":Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterApplication(Lca/uhn/hl7v2/protocol/ReceivingApplication;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;)Z"
        }
    .end annotation

    .line 308
    .local p1, "application":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    monitor-enter p0

    .line 308
    if-nez p1, :cond_0

    .line 309
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "application must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    .end local p1    # "application":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 311
    .restart local p1    # "application":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/HL7Service;->applicationRouter:Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->unbindApplication(Lca/uhn/hl7v2/protocol/ReceivingApplication;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 307
    .end local p1    # "application":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    :goto_0
    monitor-exit p0

    throw p1
.end method
