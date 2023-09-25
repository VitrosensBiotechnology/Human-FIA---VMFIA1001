.class public Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource;
.super Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;
.source "ServerSocketStreamSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;
    }
.end annotation


# static fields
.field public static final TIMEOUT:I = 0x1f4


# instance fields
.field private myExpectedAddress:Ljava/lang/String;

.field private myServerSocket:Ljava/net/ServerSocket;

.field private mySocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/ServerSocket;Ljava/lang/String;)V
    .locals 0
    .param p1, "theServerSocket"    # Ljava/net/ServerSocket;
    .param p2, "theExpectedAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/SocketStreamSource;-><init>()V

    .line 63
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource;->myServerSocket:Ljava/net/ServerSocket;

    .line 64
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource;->myExpectedAddress:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 83
    new-instance v0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource;->myServerSocket:Ljava/net/ServerSocket;

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource;->myExpectedAddress:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;-><init>(Ljava/net/ServerSocket;Ljava/lang/String;)V

    .line 84
    .local v0, "a":Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;
    invoke-virtual {v0}, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource$Acceptor;->waitForSocket()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource;->mySocket:Ljava/net/Socket;

    .line 85
    return-void
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 71
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ServerSocketStreamSource;->mySocket:Ljava/net/Socket;

    return-object v0
.end method
