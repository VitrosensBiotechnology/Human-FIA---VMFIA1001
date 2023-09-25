.class public interface abstract Lca/uhn/hl7v2/app/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# virtual methods
.method public abstract activate()V
.end method

.method public abstract close()V
.end method

.method public abstract getExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract getInitiator()Lca/uhn/hl7v2/app/Initiator;
.end method

.method public abstract getRemoteAddress()Ljava/net/InetAddress;
.end method

.method public abstract getRemotePort()Ljava/lang/Integer;
.end method

.method public abstract isOpen()Z
.end method
