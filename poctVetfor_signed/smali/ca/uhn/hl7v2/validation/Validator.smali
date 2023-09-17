.class public interface abstract Lca/uhn/hl7v2/validation/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract validate(Lca/uhn/hl7v2/model/Message;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Message;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract validate(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Message;",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract validate(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract validate(Ljava/lang/String;ZLjava/lang/String;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method
