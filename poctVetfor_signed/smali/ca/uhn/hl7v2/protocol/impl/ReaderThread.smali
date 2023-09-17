.class public Lca/uhn/hl7v2/protocol/impl/ReaderThread;
.super Ljava/lang/Thread;
.source "ReaderThread.java"


# static fields
.field private static final ourLog:Lorg/slf4j/Logger;


# instance fields
.field private final myBuffer:[C

.field private final myBytesReadRef:Lca/uhn/hl7v2/protocol/impl/IntRef;

.field private final myReader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lca/uhn/hl7v2/protocol/impl/ReaderThread;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/protocol/impl/ReaderThread;->ourLog:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;[CLca/uhn/hl7v2/protocol/impl/IntRef;)V
    .locals 0
    .param p1, "theReader"    # Ljava/io/Reader;
    .param p2, "theBuffer"    # [C
    .param p3, "theBytesReadRef"    # Lca/uhn/hl7v2/protocol/impl/IntRef;

    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 56
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ReaderThread;->myReader:Ljava/io/Reader;

    .line 57
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/ReaderThread;->myBuffer:[C

    .line 58
    iput-object p3, p0, Lca/uhn/hl7v2/protocol/impl/ReaderThread;->myBytesReadRef:Lca/uhn/hl7v2/protocol/impl/IntRef;

    .line 59
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ReaderThread;->myReader:Ljava/io/Reader;

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ReaderThread;->myBuffer:[C

    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    move-result v0

    .line 68
    .local v0, "_bytesRead":I
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ReaderThread;->myBytesReadRef:Lca/uhn/hl7v2/protocol/impl/IntRef;

    invoke-virtual {v1, v0}, Lca/uhn/hl7v2/protocol/impl/IntRef;->setValue(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "_bytesRead":I
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lca/uhn/hl7v2/protocol/impl/ReaderThread;->ourLog:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
