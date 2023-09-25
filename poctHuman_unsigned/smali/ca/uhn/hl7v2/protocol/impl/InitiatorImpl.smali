.class public Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;
.super Ljava/lang/Object;
.source "InitiatorImpl.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/Initiator;


# instance fields
.field private myMaxRetries:I

.field private final myMetadataFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final myParser:Lca/uhn/hl7v2/parser/Parser;

.field private final myProcessor:Lca/uhn/hl7v2/protocol/Processor;

.field private myReceiveTimeout:J

.field private myRetryInterval:J


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/protocol/Processor;)V
    .locals 2
    .param p1, "theParser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p2, "theProcessor"    # Lca/uhn/hl7v2/protocol/Processor;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myMetadataFields:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    .line 57
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myProcessor:Lca/uhn/hl7v2/protocol/Processor;

    .line 58
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/protocol/Processor;)V
    .locals 2
    .param p1, "theProcessor"    # Lca/uhn/hl7v2/protocol/Processor;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myMetadataFields:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myMetadataFields:Ljava/util/List;

    const-string v1, "MSH-18"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lca/uhn/hl7v2/parser/GenericParser;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/GenericParser;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    .line 44
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myProcessor:Lca/uhn/hl7v2/protocol/Processor;

    .line 45
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->init()V

    .line 46
    return-void
.end method

.method private getMetadata(Lca/uhn/hl7v2/model/Message;)Ljava/util/Map;
    .locals 6
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Message;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v0, "md":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v1, p1}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 153
    .local v1, "t":Lca/uhn/hl7v2/util/Terser;
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->getMetadataFields()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 155
    .local v2, "fields":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 155
    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_0

    .line 161
    .end local v3    # "i":I
    return-object v0

    .line 156
    .restart local v3    # "i":I
    :cond_0
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "val":Ljava/lang/String;
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v4    # "field":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myMaxRetries:I

    .line 63
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myRetryInterval:J

    .line 64
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myReceiveTimeout:J

    .line 65
    return-void
.end method

.method private needAck(Ljava/lang/String;)Z
    .locals 2
    .param p1, "theAckCode"    # Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "need":Z
    if-eqz p1, :cond_0

    .line 139
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const-string v1, "AL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    const-string v1, "ER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x1

    .line 145
    :cond_1
    return v0
.end method


# virtual methods
.method public getMaxRetries()I
    .locals 1

    .line 76
    iget v0, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myMaxRetries:I

    return v0
.end method

.method public getMetadataFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myMetadataFields:Ljava/util/List;

    return-object v0
.end method

.method public getParser()Lca/uhn/hl7v2/parser/Parser;
    .locals 1

    .line 168
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    return-object v0
.end method

.method public getReceiveTimeout()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myReceiveTimeout:J

    return-wide v0
.end method

.method public getRetryInterval()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myRetryInterval:J

    return-wide v0
.end method

.method public getUnderlyingProcessor()Lca/uhn/hl7v2/protocol/Processor;
    .locals 1

    .line 175
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myProcessor:Lca/uhn/hl7v2/protocol/Processor;

    return-object v0
.end method

.method public sendAndReceive(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;
    .locals 10
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 106
    new-instance v0, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 107
    .local v0, "t":Lca/uhn/hl7v2/util/Terser;
    const-string v1, "/MSH-16"

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "appAckNeeded":Ljava/lang/String;
    const-string v2, "/MSH-10"

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "msgId":Ljava/lang/String;
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v3

    invoke-virtual {v3, p1}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "messageText":Ljava/lang/String;
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->getMetadata(Lca/uhn/hl7v2/model/Message;)Ljava/util/Map;

    move-result-object v4

    .line 112
    .local v4, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;

    invoke-direct {v5, v3, v4}, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    .local v5, "out":Lca/uhn/hl7v2/protocol/Transportable;
    invoke-direct {p0, v1}, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->needAck(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    iget-object v6, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myProcessor:Lca/uhn/hl7v2/protocol/Processor;

    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->getReceiveTimeout()J

    move-result-wide v7

    invoke-interface {v6, v2, v7, v8}, Lca/uhn/hl7v2/protocol/Processor;->reserve(Ljava/lang/String;J)V

    .line 118
    :cond_0
    iget-object v6, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myProcessor:Lca/uhn/hl7v2/protocol/Processor;

    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->getMaxRetries()I

    move-result v7

    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->getRetryInterval()J

    move-result-wide v8

    invoke-interface {v6, v5, v7, v8, v9}, Lca/uhn/hl7v2/protocol/Processor;->send(Lca/uhn/hl7v2/protocol/Transportable;IJ)V

    .line 120
    const/4 v6, 0x0

    .line 121
    .local v6, "in":Lca/uhn/hl7v2/model/Message;
    invoke-direct {p0, v1}, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->needAck(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 122
    iget-object v7, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myProcessor:Lca/uhn/hl7v2/protocol/Processor;

    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->getReceiveTimeout()J

    move-result-wide v8

    invoke-interface {v7, v2, v8, v9}, Lca/uhn/hl7v2/protocol/Processor;->receive(Ljava/lang/String;J)Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v7

    .line 123
    .local v7, "received":Lca/uhn/hl7v2/protocol/Transportable;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 124
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v8

    invoke-interface {v7}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v6

    .line 128
    .end local v7    # "received":Lca/uhn/hl7v2/protocol/Transportable;
    :cond_1
    return-object v6
.end method

.method public setMaxRetries(I)V
    .locals 0
    .param p1, "theMaxRetries"    # I

    .line 72
    iput p1, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myMaxRetries:I

    .line 73
    return-void
.end method

.method public setReceiveTimeout(J)V
    .locals 0
    .param p1, "theReceiveTimeout"    # J

    .line 95
    iput-wide p1, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myReceiveTimeout:J

    .line 96
    return-void
.end method

.method public setRetryInterval(J)V
    .locals 0
    .param p1, "theRetryIntervalMillis"    # J

    .line 83
    iput-wide p1, p0, Lca/uhn/hl7v2/protocol/impl/InitiatorImpl;->myRetryInterval:J

    .line 84
    return-void
.end method
