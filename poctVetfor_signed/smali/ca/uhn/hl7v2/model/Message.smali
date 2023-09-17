.class public interface abstract Lca/uhn/hl7v2/model/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Group;


# virtual methods
.method public abstract encode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract generateACK()Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract generateACK(Lca/uhn/hl7v2/AcknowledgmentCode;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract generateACK(Ljava/lang/String;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getEncodingCharactersValue()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract getFieldSeparatorValue()Ljava/lang/Character;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract getParser()Lca/uhn/hl7v2/parser/Parser;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract parse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract printStructure()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract setParser(Lca/uhn/hl7v2/parser/Parser;)V
.end method
