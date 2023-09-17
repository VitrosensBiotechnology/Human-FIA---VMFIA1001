.class public interface abstract Lca/uhn/hl7v2/protocol/Processor;
.super Ljava/lang/Object;
.source "Processor.java"


# static fields
.field public static final AA:Ljava/lang/String; = "AA"

.field public static final AE:Ljava/lang/String; = "AE"

.field public static final AL:Ljava/lang/String; = "AL"

.field public static final AR:Ljava/lang/String; = "AR"

.field public static final CA:Ljava/lang/String; = "CA"

.field public static final CE:Ljava/lang/String; = "CE"

.field public static final CR:Ljava/lang/String; = "CR"

.field public static final ER:Ljava/lang/String; = "ER"

.field public static final NE:Ljava/lang/String; = "NE"

.field public static final SU:Ljava/lang/String; = "SU"


# virtual methods
.method public abstract cycle(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract getContext()Lca/uhn/hl7v2/protocol/ProcessorContext;
.end method

.method public abstract isAvailable(Ljava/lang/String;)Z
.end method

.method public abstract receive(Ljava/lang/String;J)Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract reserve(Ljava/lang/String;J)V
.end method

.method public abstract send(Lca/uhn/hl7v2/protocol/Transportable;IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
