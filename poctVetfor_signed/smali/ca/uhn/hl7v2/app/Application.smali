.class public interface abstract Lca/uhn/hl7v2/app/Application;
.super Ljava/lang/Object;
.source "Application.java"


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

.method public abstract processMessage(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lca/uhn/hl7v2/model/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/app/ApplicationException;,
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method
