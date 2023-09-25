.class public abstract Lca/uhn/hl7v2/AbstractHL7Exception;
.super Ljava/lang/Exception;
.source "AbstractHL7Exception.java"


# instance fields
.field private errorCode:Lca/uhn/hl7v2/ErrorCode;

.field private location:Lca/uhn/hl7v2/Location;

.field private responseMessage:Lca/uhn/hl7v2/model/Message;

.field private severity:Lca/uhn/hl7v2/Severity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 47
    sget-object v0, Lca/uhn/hl7v2/ErrorCode;->APPLICATION_INTERNAL_ERROR:Lca/uhn/hl7v2/ErrorCode;

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    .line 48
    sget-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->severity:Lca/uhn/hl7v2/Severity;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lca/uhn/hl7v2/ErrorCode;->APPLICATION_INTERNAL_ERROR:Lca/uhn/hl7v2/ErrorCode;

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    .line 48
    sget-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->severity:Lca/uhn/hl7v2/Severity;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    sget-object v0, Lca/uhn/hl7v2/ErrorCode;->APPLICATION_INTERNAL_ERROR:Lca/uhn/hl7v2/ErrorCode;

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    .line 48
    sget-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->severity:Lca/uhn/hl7v2/Severity;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 47
    sget-object v0, Lca/uhn/hl7v2/ErrorCode;->APPLICATION_INTERNAL_ERROR:Lca/uhn/hl7v2/ErrorCode;

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    .line 48
    sget-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->severity:Lca/uhn/hl7v2/Severity;

    .line 66
    return-void
.end method

.method private populateResponseAsOf25(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/AcknowledgmentCode;I)Lca/uhn/hl7v2/model/Message;
    .locals 8
    .param p1, "response"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "acknowledgmentCode"    # Lca/uhn/hl7v2/AcknowledgmentCode;
    .param p3, "repetition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 161
    const-string v0, "MSA"

    invoke-interface {p1, v0}, Lca/uhn/hl7v2/model/Message;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    .line 162
    .local v0, "msa":Lca/uhn/hl7v2/model/Segment;
    invoke-virtual {p2}, Lca/uhn/hl7v2/AcknowledgmentCode;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 163
    const-string v1, "ERR"

    invoke-interface {p1, v1, p3}, Lca/uhn/hl7v2/model/Message;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Segment;

    .line 164
    .local v1, "err":Lca/uhn/hl7v2/model/Segment;
    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    if-eqz v2, :cond_4

    .line 165
    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getSegmentName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 166
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getSegmentName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 167
    :cond_0
    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getField()I

    move-result v2

    if-lez v2, :cond_1

    .line 168
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getField()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 169
    :cond_1
    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getFieldRepetition()I

    move-result v2

    if-lez v2, :cond_2

    .line 170
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getFieldRepetition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 171
    :cond_2
    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getComponent()I

    move-result v2

    if-lez v2, :cond_3

    .line 172
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getComponent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 173
    :cond_3
    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getSubcomponent()I

    move-result v2

    if-lez v2, :cond_4

    .line 174
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x1

    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getSubcomponent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 176
    :cond_4
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    invoke-virtual {v2}, Lca/uhn/hl7v2/ErrorCode;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 177
    const/4 v5, 0x2

    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    invoke-virtual {v2}, Lca/uhn/hl7v2/ErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 178
    const/4 v5, 0x3

    invoke-static {}, Lca/uhn/hl7v2/ErrorCode;->codeTable()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 179
    const/16 v5, 0x9

    invoke-virtual {p0}, Lca/uhn/hl7v2/AbstractHL7Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 180
    const/4 v3, 0x4

    const/4 v5, 0x1

    const-string v7, "E"

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 181
    return-object p1
.end method

.method private populateResponseBefore25(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/AcknowledgmentCode;I)Lca/uhn/hl7v2/model/Message;
    .locals 8
    .param p1, "response"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "acknowledgmentCode"    # Lca/uhn/hl7v2/AcknowledgmentCode;
    .param p3, "repetition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 198
    const-string v0, "MSA"

    invoke-interface {p1, v0}, Lca/uhn/hl7v2/model/Message;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    .line 199
    .local v0, "msa":Lca/uhn/hl7v2/model/Segment;
    invoke-virtual {p2}, Lca/uhn/hl7v2/AcknowledgmentCode;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 200
    iget-object v1, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    invoke-virtual {v1}, Lca/uhn/hl7v2/ErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x3

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 201
    const-string v1, "ERR"

    invoke-interface {p1, v1}, Lca/uhn/hl7v2/model/Message;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Segment;

    .line 202
    .local v1, "err":Lca/uhn/hl7v2/model/Segment;
    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getSegmentName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getSegmentName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move v4, p3

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 205
    :cond_0
    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getField()I

    move-result v2

    if-lez v2, :cond_1

    .line 206
    const/4 v3, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x1

    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->getField()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move v4, p3

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 208
    :cond_1
    const/4 v3, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x1

    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    invoke-virtual {v2}, Lca/uhn/hl7v2/ErrorCode;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move v4, p3

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 209
    const/4 v6, 0x2

    iget-object v2, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    invoke-virtual {v2}, Lca/uhn/hl7v2/ErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 210
    const/4 v6, 0x3

    invoke-static {}, Lca/uhn/hl7v2/ErrorCode;->codeTable()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 211
    const/4 v6, 0x5

    invoke-virtual {p0}, Lca/uhn/hl7v2/AbstractHL7Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 212
    return-object p1
.end method


# virtual methods
.method public getError()Lca/uhn/hl7v2/ErrorCode;
    .locals 1

    .line 103
    iget-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 95
    iget-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    invoke-virtual {v0}, Lca/uhn/hl7v2/ErrorCode;->getCode()I

    move-result v0

    return v0
.end method

.method public getLocation()Lca/uhn/hl7v2/Location;
    .locals 1

    .line 69
    iget-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 216
    invoke-virtual {p0}, Lca/uhn/hl7v2/AbstractHL7Exception;->getMessageWithoutLocation()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, "msg":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lca/uhn/hl7v2/AbstractHL7Exception;->getLocation()Lca/uhn/hl7v2/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lca/uhn/hl7v2/AbstractHL7Exception;->getLocation()Lca/uhn/hl7v2/Location;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->isUnknown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lca/uhn/hl7v2/AbstractHL7Exception;->getLocation()Lca/uhn/hl7v2/Location;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getMessageWithoutLocation()Ljava/lang/String;
    .locals 1

    .line 225
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "Exception"

    .line 227
    :cond_0
    return-object v0
.end method

.method public getResponseMessage()Lca/uhn/hl7v2/model/Message;
    .locals 1

    .line 119
    iget-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->responseMessage:Lca/uhn/hl7v2/model/Message;

    return-object v0
.end method

.method public getSeverity()Lca/uhn/hl7v2/Severity;
    .locals 1

    .line 111
    iget-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->severity:Lca/uhn/hl7v2/Severity;

    return-object v0
.end method

.method public populateResponse(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/AcknowledgmentCode;I)Lca/uhn/hl7v2/model/Message;
    .locals 2
    .param p1, "emptyResponse"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "acknowledgmentCode"    # Lca/uhn/hl7v2/AcknowledgmentCode;
    .param p3, "repetition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->responseMessage:Lca/uhn/hl7v2/model/Message;

    if-nez v0, :cond_2

    .line 137
    if-nez p2, :cond_0

    sget-object p2, Lca/uhn/hl7v2/AcknowledgmentCode;->AA:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 138
    :cond_0
    sget-object v0, Lca/uhn/hl7v2/Version;->V25:Lca/uhn/hl7v2/Version;

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/Version;->isGreaterThan(Lca/uhn/hl7v2/Version;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lca/uhn/hl7v2/AbstractHL7Exception;->populateResponseBefore25(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/AcknowledgmentCode;I)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->responseMessage:Lca/uhn/hl7v2/model/Message;

    .line 140
    goto :goto_0

    .line 141
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lca/uhn/hl7v2/AbstractHL7Exception;->populateResponseAsOf25(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/AcknowledgmentCode;I)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->responseMessage:Lca/uhn/hl7v2/model/Message;

    .line 144
    :cond_2
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->responseMessage:Lca/uhn/hl7v2/model/Message;

    return-object v0
.end method

.method public setError(Lca/uhn/hl7v2/ErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lca/uhn/hl7v2/ErrorCode;

    .line 107
    iput-object p1, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    .line 108
    return-void
.end method

.method public setErrorCode(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .line 99
    invoke-static {p1}, Lca/uhn/hl7v2/ErrorCode;->errorCodeFor(I)Lca/uhn/hl7v2/ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    .line 100
    return-void
.end method

.method public setFieldPosition(I)V
    .locals 1
    .param p1, "pos"    # I

    .line 77
    iget-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lca/uhn/hl7v2/Location;

    invoke-direct {v0}, Lca/uhn/hl7v2/Location;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    .line 79
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/Location;->withField(I)Lca/uhn/hl7v2/Location;

    .line 80
    return-void
.end method

.method public setLocation(Lca/uhn/hl7v2/Location;)V
    .locals 0
    .param p1, "location"    # Lca/uhn/hl7v2/Location;

    .line 73
    iput-object p1, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    .line 74
    return-void
.end method

.method public setResponseMessage(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "responseMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 123
    iput-object p1, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->responseMessage:Lca/uhn/hl7v2/model/Message;

    .line 124
    return-void
.end method

.method public setSegmentName(Ljava/lang/String;)V
    .locals 1
    .param p1, "segmentName"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lca/uhn/hl7v2/Location;

    invoke-direct {v0}, Lca/uhn/hl7v2/Location;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    .line 85
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/Location;->withSegmentName(Ljava/lang/String;)Lca/uhn/hl7v2/Location;

    .line 86
    return-void
.end method

.method public setSegmentRepetition(I)V
    .locals 1
    .param p1, "segmentRepetition"    # I

    .line 89
    iget-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lca/uhn/hl7v2/Location;

    invoke-direct {v0}, Lca/uhn/hl7v2/Location;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    .line 91
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->location:Lca/uhn/hl7v2/Location;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/Location;->withSegmentRepetition(I)Lca/uhn/hl7v2/Location;

    .line 92
    return-void
.end method

.method public setSeverity(Lca/uhn/hl7v2/Severity;)V
    .locals 0
    .param p1, "severity"    # Lca/uhn/hl7v2/Severity;

    .line 115
    iput-object p1, p0, Lca/uhn/hl7v2/AbstractHL7Exception;->severity:Lca/uhn/hl7v2/Severity;

    .line 116
    return-void
.end method
