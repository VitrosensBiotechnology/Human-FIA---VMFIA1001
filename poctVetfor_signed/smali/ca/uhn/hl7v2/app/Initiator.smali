.class public interface abstract Lca/uhn/hl7v2/app/Initiator;
.super Ljava/lang/Object;
.source "Initiator.java"


# virtual methods
.method public abstract sendAndReceive(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Lca/uhn/hl7v2/llp/LLPException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setTimeout(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract setTimeoutMillis(I)V
.end method
