.class public interface abstract Lca/uhn/hl7v2/protocol/ReceivingApplication;
.super Ljava/lang/Object;
.source "ReceivingApplication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lca/uhn/hl7v2/model/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract canProcess(Lca/uhn/hl7v2/model/Message;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract processMessage(Lca/uhn/hl7v2/model/Message;Ljava/util/Map;)Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lca/uhn/hl7v2/model/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/ReceivingApplicationException;,
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method
