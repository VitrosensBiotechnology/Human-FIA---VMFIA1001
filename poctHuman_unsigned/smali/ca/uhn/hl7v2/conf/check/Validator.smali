.class public interface abstract Lca/uhn/hl7v2/conf/check/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# virtual methods
.method public abstract validate(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/conf/spec/message/StaticDef;)[Lca/uhn/hl7v2/HL7Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;,
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method
