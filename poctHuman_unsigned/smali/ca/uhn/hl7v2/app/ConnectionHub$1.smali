.class Lca/uhn/hl7v2/app/ConnectionHub$1;
.super Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;
.source "ConnectionHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/uhn/hl7v2/app/ConnectionHub;-><init>(Lca/uhn/hl7v2/HapiContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/app/ConnectionHub$CountingMap<",
        "Lca/uhn/hl7v2/app/ConnectionData;",
        "Lca/uhn/hl7v2/app/Connection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lca/uhn/hl7v2/app/ConnectionHub;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/app/ConnectionHub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/uhn/hl7v2/app/ConnectionHub$1;->this$0:Lca/uhn/hl7v2/app/ConnectionHub;

    .line 84
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/app/ConnectionHub$CountingMap;-><init>(Lca/uhn/hl7v2/app/ConnectionHub;)V

    return-void
.end method


# virtual methods
.method protected dispose(Lca/uhn/hl7v2/app/Connection;)V
    .locals 0
    .param p1, "connection"    # Lca/uhn/hl7v2/app/Connection;

    .line 88
    invoke-interface {p1}, Lca/uhn/hl7v2/app/Connection;->close()V

    .line 89
    return-void
.end method

.method protected bridge synthetic dispose(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/app/Connection;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/app/ConnectionHub$1;->dispose(Lca/uhn/hl7v2/app/Connection;)V

    return-void
.end method

.method protected open(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;
    .locals 1
    .param p1, "connectionData"    # Lca/uhn/hl7v2/app/ConnectionData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionHub$1;->this$0:Lca/uhn/hl7v2/app/ConnectionHub;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/ConnectionHub;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p1, v0}, Lca/uhn/hl7v2/app/ConnectionFactory;->open(Lca/uhn/hl7v2/app/ConnectionData;Ljava/util/concurrent/ExecutorService;)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method protected bridge synthetic open(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lca/uhn/hl7v2/app/ConnectionData;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/app/ConnectionHub$1;->open(Lca/uhn/hl7v2/app/ConnectionData;)Lca/uhn/hl7v2/app/Connection;

    move-result-object p1

    return-object p1
.end method
