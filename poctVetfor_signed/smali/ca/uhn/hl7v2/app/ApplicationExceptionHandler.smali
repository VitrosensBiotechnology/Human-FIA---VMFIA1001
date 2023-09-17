.class public interface abstract Lca/uhn/hl7v2/app/ApplicationExceptionHandler;
.super Ljava/lang/Object;
.source "ApplicationExceptionHandler.java"

# interfaces
.implements Lca/uhn/hl7v2/app/Application;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lca/uhn/hl7v2/model/Message;",
        ">",
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/app/Application<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract processException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method
