.class public interface abstract Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;
.super Ljava/lang/Object;
.source "ReceivingApplicationExceptionHandler.java"


# virtual methods
.method public abstract processException(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method
