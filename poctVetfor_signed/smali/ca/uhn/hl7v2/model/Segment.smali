.class public interface abstract Lca/uhn/hl7v2/model/Segment;
.super Ljava/lang/Object;
.source "Segment.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Structure;


# virtual methods
.method public abstract encode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract getField(II)Lca/uhn/hl7v2/model/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract getField(I)[Lca/uhn/hl7v2/model/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract getLength(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract getMaxCardinality(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract getNames()[Ljava/lang/String;
.end method

.method public abstract isRequired(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract numFields()I
.end method

.method public abstract parse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method
