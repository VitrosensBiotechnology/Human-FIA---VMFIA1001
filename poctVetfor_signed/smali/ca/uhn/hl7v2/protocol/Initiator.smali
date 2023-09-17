.class public interface abstract Lca/uhn/hl7v2/protocol/Initiator;
.super Ljava/lang/Object;
.source "Initiator.java"


# virtual methods
.method public abstract getMetadataFields()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParser()Lca/uhn/hl7v2/parser/Parser;
.end method

.method public abstract getUnderlyingProcessor()Lca/uhn/hl7v2/protocol/Processor;
.end method

.method public abstract sendAndReceive(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method
