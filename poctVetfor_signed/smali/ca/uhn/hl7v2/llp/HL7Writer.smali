.class public interface abstract Lca/uhn/hl7v2/llp/HL7Writer;
.super Ljava/lang/Object;
.source "HL7Writer.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setOutputStream(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeMessage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
