.class public Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;
.super Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;
.source "RespondingValidationExceptionHandler.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler<",
        "Lca/uhn/hl7v2/model/Message;",
        ">;",
        "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<",
        "Lca/uhn/hl7v2/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private errorAcknowledgementCode:Lca/uhn/hl7v2/AcknowledgmentCode;

.field private successAcknowledgementCode:Lca/uhn/hl7v2/AcknowledgmentCode;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 1
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 61
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 54
    sget-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->AA:Lca/uhn/hl7v2/AcknowledgmentCode;

    iput-object v0, p0, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->successAcknowledgementCode:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 55
    sget-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->AE:Lca/uhn/hl7v2/AcknowledgmentCode;

    iput-object v0, p0, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->errorAcknowledgementCode:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 62
    return-void
.end method


# virtual methods
.method protected generateResponseMessage(Ljava/lang/Object;)Lca/uhn/hl7v2/model/Message;
    .locals 3
    .param p1, "request"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 127
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v0

    .line 129
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/parser/GenericParser;->getCriticalResponseData(Ljava/lang/String;)Lca/uhn/hl7v2/model/Segment;

    move-result-object v0

    .line 130
    .local v0, "s":Lca/uhn/hl7v2/model/Segment;
    invoke-interface {v0}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    .line 131
    .local v1, "in":Lca/uhn/hl7v2/model/Message;
    const-string v2, "MSH"

    invoke-interface {v1, v2}, Lca/uhn/hl7v2/model/Message;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/model/Segment;

    invoke-static {v0, v2}, Lca/uhn/hl7v2/util/DeepCopy;->copy(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/model/Segment;)V

    .line 132
    .end local v0    # "s":Lca/uhn/hl7v2/model/Segment;
    goto :goto_0

    .line 132
    .end local v1    # "in":Lca/uhn/hl7v2/model/Message;
    :cond_0
    instance-of v0, p1, Lca/uhn/hl7v2/model/Message;

    if-eqz v0, :cond_1

    .line 133
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/model/Message;

    move-object v1, v0

    .line 134
    .restart local v1    # "in":Lca/uhn/hl7v2/model/Message;
    nop

    .line 135
    :goto_0
    move-object v0, v1

    .line 137
    .end local v1    # "in":Lca/uhn/hl7v2/model/Message;
    .local v0, "in":Lca/uhn/hl7v2/model/Message;
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->getSuccessAcknowledgementCode()Lca/uhn/hl7v2/AcknowledgmentCode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lca/uhn/hl7v2/model/Message;->generateACK(Lca/uhn/hl7v2/AcknowledgmentCode;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    return-object v1

    .line 135
    .end local v0    # "in":Lca/uhn/hl7v2/model/Message;
    :cond_1
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    const-string v1, "Validated message must be either Message or String"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getErrorAcknowledgementCode()Lca/uhn/hl7v2/AcknowledgmentCode;
    .locals 1

    .line 112
    iget-object v0, p0, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->errorAcknowledgementCode:Lca/uhn/hl7v2/AcknowledgmentCode;

    return-object v0
.end method

.method public getNewInstance(Lca/uhn/hl7v2/HapiContext;)Lca/uhn/hl7v2/validation/ValidationExceptionHandler;
    .locals 2
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/HapiContext;",
            ")",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "Lca/uhn/hl7v2/model/Message;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 167
    .local v0, "handler":Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->getErrorAcknowledgementCode()Lca/uhn/hl7v2/AcknowledgmentCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->setErrorAcknowledgementCode(Lca/uhn/hl7v2/AcknowledgmentCode;)V

    .line 168
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->getSuccessAcknowledgementCode()Lca/uhn/hl7v2/AcknowledgmentCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->setSuccessAcknowledgementCode(Lca/uhn/hl7v2/AcknowledgmentCode;)V

    .line 169
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->getMinimumSeverityToCollect()Lca/uhn/hl7v2/Severity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->setMinimumSeverityToCollect(Lca/uhn/hl7v2/Severity;)V

    .line 170
    return-object v0
.end method

.method public getSuccessAcknowledgementCode()Lca/uhn/hl7v2/AcknowledgmentCode;
    .locals 1

    .line 105
    iget-object v0, p0, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->successAcknowledgementCode:Lca/uhn/hl7v2/AcknowledgmentCode;

    return-object v0
.end method

.method protected populateResponseMessage(Lca/uhn/hl7v2/model/Message;)V
    .locals 5
    .param p1, "response"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 153
    if-nez p1, :cond_0

    .line 154
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->getExceptions()Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, "exceptions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/ValidationException;>;"
    const/4 v1, 0x0

    .line 156
    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 163
    .end local v1    # "i":I
    return-void

    .line 157
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/validation/ValidationException;

    .line 159
    .local v2, "ve":Lca/uhn/hl7v2/validation/ValidationException;
    invoke-virtual {v2}, Lca/uhn/hl7v2/validation/ValidationException;->getSeverity()Lca/uhn/hl7v2/Severity;

    move-result-object v3

    sget-object v4, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    if-ne v3, v4, :cond_2

    .line 160
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->getErrorAcknowledgementCode()Lca/uhn/hl7v2/AcknowledgmentCode;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Lca/uhn/hl7v2/validation/ValidationException;->populateResponse(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/AcknowledgmentCode;I)Lca/uhn/hl7v2/model/Message;

    .line 156
    .end local v2    # "ve":Lca/uhn/hl7v2/validation/ValidationException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final result()Lca/uhn/hl7v2/model/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->getValidationSubject()Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "validationSubject":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 76
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    const-string v2, "Need non-null validation subject"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->generateResponseMessage(Ljava/lang/Object;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    .line 79
    .local v1, "response":Lca/uhn/hl7v2/model/Message;
    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->populateResponseMessage(Lca/uhn/hl7v2/model/Message;)V

    .line 80
    return-object v1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->result()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public setErrorAcknowledgementCode(Lca/uhn/hl7v2/AcknowledgmentCode;)V
    .locals 0
    .param p1, "errorAcknowledgementCode"    # Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 98
    iput-object p1, p0, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->errorAcknowledgementCode:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 99
    return-void
.end method

.method public setSuccessAcknowledgementCode(Lca/uhn/hl7v2/AcknowledgmentCode;)V
    .locals 0
    .param p1, "successAcknowledgementCode"    # Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 89
    iput-object p1, p0, Lca/uhn/hl7v2/validation/RespondingValidationExceptionHandler;->successAcknowledgementCode:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 90
    return-void
.end method
