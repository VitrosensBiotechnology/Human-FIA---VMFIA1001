.class public Lca/uhn/hl7v2/app/DefaultApplication;
.super Ljava/lang/Object;
.source "DefaultApplication.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/ReceivingApplication;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
        "Lca/uhn/hl7v2/model/Message;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$ca$uhn$hl7v2$AcknowledgmentCode:[I = null

.field public static final MSG_INTERNAL_ERROR:Ljava/lang/String; = "Application internal error"

.field public static final MSG_NO_APPROPRIATE_DEST:Ljava/lang/String; = "No appropriate destination could be found to which this message could be routed."


# instance fields
.field private final myAcknowledgmentCode:Lca/uhn/hl7v2/AcknowledgmentCode;

.field private final myMessage:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$ca$uhn$hl7v2$AcknowledgmentCode()[I
    .locals 3

    .line 49
    sget-object v0, Lca/uhn/hl7v2/app/DefaultApplication;->$SWITCH_TABLE$ca$uhn$hl7v2$AcknowledgmentCode:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lca/uhn/hl7v2/AcknowledgmentCode;->values()[Lca/uhn/hl7v2/AcknowledgmentCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/AcknowledgmentCode;->AA:Lca/uhn/hl7v2/AcknowledgmentCode;

    invoke-virtual {v1}, Lca/uhn/hl7v2/AcknowledgmentCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v1, Lca/uhn/hl7v2/AcknowledgmentCode;->AE:Lca/uhn/hl7v2/AcknowledgmentCode;

    invoke-virtual {v1}, Lca/uhn/hl7v2/AcknowledgmentCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Lca/uhn/hl7v2/AcknowledgmentCode;->AR:Lca/uhn/hl7v2/AcknowledgmentCode;

    invoke-virtual {v1}, Lca/uhn/hl7v2/AcknowledgmentCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lca/uhn/hl7v2/AcknowledgmentCode;->CA:Lca/uhn/hl7v2/AcknowledgmentCode;

    invoke-virtual {v1}, Lca/uhn/hl7v2/AcknowledgmentCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_3
    :try_start_4
    sget-object v1, Lca/uhn/hl7v2/AcknowledgmentCode;->CE:Lca/uhn/hl7v2/AcknowledgmentCode;

    invoke-virtual {v1}, Lca/uhn/hl7v2/AcknowledgmentCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_4
    :try_start_5
    sget-object v1, Lca/uhn/hl7v2/AcknowledgmentCode;->CR:Lca/uhn/hl7v2/AcknowledgmentCode;

    invoke-virtual {v1}, Lca/uhn/hl7v2/AcknowledgmentCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    :goto_5
    sput-object v0, Lca/uhn/hl7v2/app/DefaultApplication;->$SWITCH_TABLE$ca$uhn$hl7v2$AcknowledgmentCode:[I

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    sget-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->AR:Lca/uhn/hl7v2/AcknowledgmentCode;

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/app/DefaultApplication;-><init>(Lca/uhn/hl7v2/AcknowledgmentCode;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/AcknowledgmentCode;)V
    .locals 1
    .param p1, "theAcknowledgmentCode"    # Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 91
    invoke-static {p1}, Lca/uhn/hl7v2/app/DefaultApplication;->defaultMessage(Lca/uhn/hl7v2/AcknowledgmentCode;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/app/DefaultApplication;-><init>(Lca/uhn/hl7v2/AcknowledgmentCode;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/AcknowledgmentCode;Ljava/lang/String;)V
    .locals 2
    .param p1, "theAcknowledgmentCode"    # Lca/uhn/hl7v2/AcknowledgmentCode;
    .param p2, "theMessage"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Acknowledgment code must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/app/DefaultApplication;->myAcknowledgmentCode:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 105
    iput-object p2, p0, Lca/uhn/hl7v2/app/DefaultApplication;->myMessage:Ljava/lang/String;

    .line 106
    return-void
.end method

.method private static defaultMessage(Lca/uhn/hl7v2/AcknowledgmentCode;)Ljava/lang/String;
    .locals 2
    .param p0, "theAr"    # Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 109
    invoke-static {}, Lca/uhn/hl7v2/app/DefaultApplication;->$SWITCH_TABLE$ca$uhn$hl7v2$AcknowledgmentCode()[I

    move-result-object v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/AcknowledgmentCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 119
    const-string v0, "Application internal error"

    return-object v0

    .line 115
    :cond_0
    :pswitch_0
    const-string v0, "No appropriate destination could be found to which this message could be routed."

    return-object v0

    .line 112
    :cond_1
    :pswitch_1
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static makeACK(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;
    .locals 1
    .param p0, "message"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Message;->generateACK()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public static makeACK(Lca/uhn/hl7v2/model/Segment;)Lca/uhn/hl7v2/model/Message;
    .locals 2
    .param p0, "inboundHeader"    # Lca/uhn/hl7v2/model/Segment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    const-string v1, "MSH"

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/model/Message;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    invoke-static {p0, v0}, Lca/uhn/hl7v2/util/DeepCopy;->copy(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/model/Segment;)V

    .line 156
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->generateACK()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canProcess(Lca/uhn/hl7v2/model/Message;)Z
    .locals 1
    .param p1, "in"    # Lca/uhn/hl7v2/model/Message;

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public processMessage(Lca/uhn/hl7v2/model/Message;Ljava/util/Map;)Lca/uhn/hl7v2/model/Message;
    .locals 4
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Message;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lca/uhn/hl7v2/model/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/ReceivingApplicationException;
        }
    .end annotation

    .line 161
    .local p2, "theMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/DefaultApplication;->myMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lca/uhn/hl7v2/app/DefaultApplication;->myAcknowledgmentCode:Lca/uhn/hl7v2/AcknowledgmentCode;

    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    iget-object v2, p0, Lca/uhn/hl7v2/app/DefaultApplication;->myMessage:Ljava/lang/String;

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lca/uhn/hl7v2/model/Message;->generateACK(Lca/uhn/hl7v2/AcknowledgmentCode;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/DefaultApplication;->myAcknowledgmentCode:Lca/uhn/hl7v2/AcknowledgmentCode;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lca/uhn/hl7v2/model/Message;->generateACK(Lca/uhn/hl7v2/AcknowledgmentCode;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/protocol/ReceivingApplicationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t create response message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/protocol/ReceivingApplicationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
