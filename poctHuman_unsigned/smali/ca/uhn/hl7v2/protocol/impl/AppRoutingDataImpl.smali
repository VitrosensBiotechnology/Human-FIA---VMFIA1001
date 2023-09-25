.class public Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;
.super Ljava/lang/Object;
.source "AppRoutingDataImpl.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;


# instance fields
.field private final myMessageType:Ljava/lang/String;

.field private final myProcessingId:Ljava/lang/String;

.field private final myTriggerEvent:Ljava/lang/String;

.field private final myVersionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "theMessageType"    # Ljava/lang/String;
    .param p2, "theTriggerEvent"    # Ljava/lang/String;
    .param p3, "theProcessingId"    # Ljava/lang/String;
    .param p4, "theVersionId"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myMessageType:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myTriggerEvent:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myProcessingId:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myVersionId:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static withAll()Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    .locals 5

    .line 95
    new-instance v0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;

    const-string v1, "*"

    const-string v2, "*"

    const-string v3, "*"

    const-string v4, "*"

    invoke-direct {v0, v1, v2, v3, v4}, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 65
    :cond_0
    instance-of v1, p1, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 67
    :cond_1
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;

    .line 69
    .local v1, "that":Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;
    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myMessageType:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myMessageType:Ljava/lang/String;

    iget-object v4, v1, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myMessageType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myMessageType:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 70
    :goto_0
    return v2

    .line 71
    :cond_3
    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myProcessingId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myProcessingId:Ljava/lang/String;

    iget-object v4, v1, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myProcessingId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_4
    iget-object v3, v1, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myProcessingId:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 72
    :goto_1
    return v2

    .line 73
    :cond_5
    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myTriggerEvent:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myTriggerEvent:Ljava/lang/String;

    iget-object v4, v1, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myTriggerEvent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_6
    iget-object v3, v1, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myTriggerEvent:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 74
    :goto_2
    return v2

    .line 75
    :cond_7
    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myVersionId:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myVersionId:Ljava/lang/String;

    iget-object v4, v1, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myVersionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_3

    :cond_8
    iget-object v3, v1, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myVersionId:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 76
    :goto_3
    return v2

    .line 78
    :cond_9
    return v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myMessageType:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessingId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myProcessingId:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerEvent()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myTriggerEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myVersionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 83
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myMessageType:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myMessageType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 84
    .local v0, "result":I
    :goto_0
    const/16 v2, 0x1f

    mul-int v3, v2, v0

    iget-object v4, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myTriggerEvent:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myTriggerEvent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    add-int/2addr v3, v4

    .line 85
    .end local v0    # "result":I
    .local v3, "result":I
    mul-int v0, v2, v3

    iget-object v4, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myProcessingId:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myProcessingId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    add-int/2addr v0, v4

    .line 86
    .end local v3    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v2, v0

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myVersionId:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;->myVersionId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    nop

    :cond_3
    add-int/2addr v2, v1

    .line 87
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method
