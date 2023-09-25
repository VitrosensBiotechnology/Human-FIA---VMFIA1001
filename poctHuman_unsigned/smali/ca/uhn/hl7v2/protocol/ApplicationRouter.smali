.class public interface abstract Lca/uhn/hl7v2/protocol/ApplicationRouter;
.super Ljava/lang/Object;
.source "ApplicationRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    }
.end annotation


# static fields
.field public static final METADATA_KEY_MESSAGE_CHARSET:Ljava/lang/String; = "MSH-18"

.field public static final METADATA_KEY_MESSAGE_CONTROL_ID:Ljava/lang/String; = "/MSH-10"

.field public static final METADATA_KEY_SENDING_IP:Ljava/lang/String; = "SENDING_IP"

.field public static final METADATA_KEY_SENDING_PORT:Ljava/lang/String; = "SENDING_PORT"


# virtual methods
.method public abstract bindApplication(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;Lca/uhn/hl7v2/protocol/ReceivingApplication;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;",
            "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract disableBinding(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)V
.end method

.method public abstract enableBinding(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)V
.end method

.method public abstract getParser()Lca/uhn/hl7v2/parser/Parser;
.end method

.method public abstract hasActiveBinding(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Z
.end method

.method public abstract processMessage(Lca/uhn/hl7v2/protocol/Transportable;)Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract setExceptionHandler(Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;)V
.end method

.method public abstract unbindApplication(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Z
.end method

.method public abstract unbindApplication(Lca/uhn/hl7v2/protocol/ReceivingApplication;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;)Z"
        }
    .end annotation
.end method
