.class public interface abstract Lca/uhn/hl7v2/protocol/StreamSource;
.super Ljava/lang/Object;
.source "StreamSource.java"


# virtual methods
.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation
.end method

.method public abstract getInboundStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation
.end method

.method public abstract getOutboundStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation
.end method
