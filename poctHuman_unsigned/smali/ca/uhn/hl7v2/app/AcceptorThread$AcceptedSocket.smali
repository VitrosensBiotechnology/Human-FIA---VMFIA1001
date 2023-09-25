.class Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;
.super Ljava/lang/Object;
.source "AcceptorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/app/AcceptorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AcceptedSocket"
.end annotation


# instance fields
.field origin:Lca/uhn/hl7v2/app/AcceptorThread;

.field socket:Ljava/net/Socket;

.field final synthetic this$0:Lca/uhn/hl7v2/app/AcceptorThread;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/app/AcceptorThread;Ljava/net/Socket;)V
    .locals 1
    .param p2, "socket"    # Ljava/net/Socket;

    .line 144
    iput-object p1, p0, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->this$0:Lca/uhn/hl7v2/app/AcceptorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    if-nez p2, :cond_0

    .line 146
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Socket must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_0
    iput-object p2, p0, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->socket:Ljava/net/Socket;

    .line 148
    iput-object p1, p0, Lca/uhn/hl7v2/app/AcceptorThread$AcceptedSocket;->origin:Lca/uhn/hl7v2/app/AcceptorThread;

    .line 149
    return-void
.end method
