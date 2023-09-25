.class Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;
.super Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;
.source "Unmodifiable.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Message;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/Unmodifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup<",
        "Lca/uhn/hl7v2/model/Message;",
        ">;",
        "Lca/uhn/hl7v2/model/Message;"
    }
.end annotation


# instance fields
.field private originalMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "delegate"    # Lca/uhn/hl7v2/model/Message;

    .line 344
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;-><init>(Lca/uhn/hl7v2/model/Group;)V

    .line 345
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)V
    .locals 0
    .param p1, "delegate"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "originalMessage"    # Ljava/lang/String;

    .line 339
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 340
    iput-object p2, p0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;->originalMessage:Ljava/lang/String;

    .line 341
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;->originalMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;->originalMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Message;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->encode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public generateACK()Lca/uhn/hl7v2/model/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Message;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->generateACK()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public generateACK(Lca/uhn/hl7v2/AcknowledgmentCode;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;
    .locals 1
    .param p1, "theAcknowlegementCode"    # Lca/uhn/hl7v2/AcknowledgmentCode;
    .param p2, "theException"    # Lca/uhn/hl7v2/HL7Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Message;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/Message;->generateACK(Lca/uhn/hl7v2/AcknowledgmentCode;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public generateACK(Ljava/lang/String;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;
    .locals 1
    .param p1, "theAcknowlegementCode"    # Ljava/lang/String;
    .param p2, "theException"    # Lca/uhn/hl7v2/HL7Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Message;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/model/Message;->generateACK(Ljava/lang/String;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public getEncodingCharactersValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Message;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getEncodingCharactersValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldSeparatorValue()Ljava/lang/Character;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Message;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getFieldSeparatorValue()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public getParser()Lca/uhn/hl7v2/parser/Parser;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Message;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 348
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Message;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This message is unmodifiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printStructure()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableMessage;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Message;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->printStructure()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setParser(Lca/uhn/hl7v2/parser/Parser;)V
    .locals 2
    .param p1, "parser"    # Lca/uhn/hl7v2/parser/Parser;

    .line 360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This message is unmodifiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
