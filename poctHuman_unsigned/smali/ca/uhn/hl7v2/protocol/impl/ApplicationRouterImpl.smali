.class public Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;
.super Ljava/lang/Object;
.source "ApplicationRouterImpl.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/ApplicationRouter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$ca$uhn$hl7v2$app$ServerConfiguration$ApplicationExceptionPolicy:[I = null

.field public static final DEFAULT_EXCEPTION_ACKNOWLEDGEMENT_CODE:Lca/uhn/hl7v2/AcknowledgmentCode;

.field public static final RAW_MESSAGE_KEY:Ljava/lang/String; = "raw-message"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private defaultAcknowledgementMode:Lca/uhn/hl7v2/AcknowledgmentCode;

.field private myBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;",
            ">;"
        }
    .end annotation
.end field

.field private myContext:Lca/uhn/hl7v2/HapiContext;

.field private myExceptionHandler:Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;

.field private myParser:Lca/uhn/hl7v2/parser/Parser;


# direct methods
.method static synthetic $SWITCH_TABLE$ca$uhn$hl7v2$app$ServerConfiguration$ApplicationExceptionPolicy()[I
    .locals 3

    .line 34
    sget-object v0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->$SWITCH_TABLE$ca$uhn$hl7v2$app$ServerConfiguration$ApplicationExceptionPolicy:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;->values()[Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;->DEFAULT:Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    invoke-virtual {v1}, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;->ordinal()I

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
    sget-object v1, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;->DO_NOT_RESPOND:Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    invoke-virtual {v1}, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    sput-object v0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->$SWITCH_TABLE$ca$uhn$hl7v2$app$ServerConfiguration$ApplicationExceptionPolicy:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Lca/uhn/hl7v2/AcknowledgmentCode;->AE:Lca/uhn/hl7v2/AcknowledgmentCode;

    sput-object v0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->DEFAULT_EXCEPTION_ACKNOWLEDGEMENT_CODE:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 42
    const-class v0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->log:Lorg/slf4j/Logger;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    new-instance v0, Lca/uhn/hl7v2/parser/GenericParser;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/GenericParser;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;-><init>(Lca/uhn/hl7v2/parser/Parser;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 1
    .param p1, "theContext"    # Lca/uhn/hl7v2/HapiContext;

    .line 76
    invoke-interface {p1}, Lca/uhn/hl7v2/HapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;-><init>(Lca/uhn/hl7v2/HapiContext;Lca/uhn/hl7v2/parser/Parser;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;Lca/uhn/hl7v2/parser/Parser;)V
    .locals 1
    .param p1, "theContext"    # Lca/uhn/hl7v2/HapiContext;
    .param p2, "theParser"    # Lca/uhn/hl7v2/parser/Parser;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->DEFAULT_EXCEPTION_ACKNOWLEDGEMENT_CODE:Lca/uhn/hl7v2/AcknowledgmentCode;

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->defaultAcknowledgementMode:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 88
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->init(Lca/uhn/hl7v2/parser/Parser;)V

    .line 89
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myContext:Lca/uhn/hl7v2/HapiContext;

    .line 90
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/Parser;)V
    .locals 1
    .param p1, "theParser"    # Lca/uhn/hl7v2/parser/Parser;

    .line 72
    invoke-virtual {p1}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;-><init>(Lca/uhn/hl7v2/HapiContext;Lca/uhn/hl7v2/parser/Parser;)V

    .line 73
    return-void
.end method

.method private findApplication(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/protocol/ReceivingApplication;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/Message;",
            ">(TT;)",
            "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 372
    .local p1, "theMessage":Lca/uhn/hl7v2/model/Message;, "TT;"
    new-instance v0, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 374
    .local v0, "t":Lca/uhn/hl7v2/util/Terser;
    new-instance v1, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;

    const-string v2, "/MSH-9-1"

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/MSH-9-2"

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/MSH-11-1"

    invoke-virtual {v0, v4}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/MSH-12"

    invoke-virtual {v0, v5}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    nop

    .line 376
    .local v1, "msgData":Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    invoke-direct {p0, p1, v1}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->findDestination(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Lca/uhn/hl7v2/protocol/ReceivingApplication;

    move-result-object v2

    .line 379
    .local v2, "app":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<TT;>;"
    if-nez v2, :cond_0

    .line 380
    new-instance v3, Lca/uhn/hl7v2/app/DefaultApplication;

    invoke-direct {v3}, Lca/uhn/hl7v2/app/DefaultApplication;-><init>()V

    move-object v2, v3

    .line 383
    :cond_0
    return-object v2
.end method

.method private findBinding(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    .locals 4
    .param p1, "theRoutingData"    # Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "result":Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    const/4 v1, 0x0

    .line 258
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myBindings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v0, :cond_0

    .line 258
    .end local v1    # "i":I
    goto :goto_1

    .line 259
    .restart local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myBindings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;

    .line 260
    .local v2, "binding":Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    iget-object v3, v2, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;->routingData:Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    move-object v0, v2

    .line 258
    .end local v2    # "binding":Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-object v0
.end method

.method private findBinding(Lca/uhn/hl7v2/protocol/ReceivingApplication;)Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;)",
            "Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;"
        }
    .end annotation

    .line 242
    .local p1, "application":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    const/4 v0, 0x0

    .line 243
    .local v0, "result":Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    const/4 v1, 0x0

    .line 243
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myBindings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v0, :cond_0

    .line 243
    .end local v1    # "i":I
    goto :goto_1

    .line 244
    .restart local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myBindings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;

    .line 245
    .local v2, "binding":Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    iget-object v3, v2, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;->application:Lca/uhn/hl7v2/protocol/ReceivingApplication;

    if-ne p1, v3, :cond_1

    .line 246
    move-object v0, v2

    .line 243
    .end local v2    # "binding":Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-object v0
.end method

.method private findDestination(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Lca/uhn/hl7v2/protocol/ReceivingApplication;
    .locals 4
    .param p2, "theRoutingData"    # Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/Message;",
            ">(TT;",
            "Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;",
            ")",
            "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
            "TT;>;"
        }
    .end annotation

    .line 225
    .local p1, "theMessage":Lca/uhn/hl7v2/model/Message;, "TT;"
    const/4 v0, 0x0

    .line 226
    .local v0, "result":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    const/4 v1, 0x0

    .line 226
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myBindings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    if-eqz v0, :cond_0

    .line 226
    .end local v1    # "i":I
    goto :goto_1

    .line 227
    .restart local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myBindings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;

    .line 228
    .local v2, "binding":Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    iget-object v3, v2, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;->routingData:Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;

    invoke-static {p2, v3}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->matches(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;->active:Z

    if-eqz v3, :cond_2

    .line 229
    if-eqz p1, :cond_1

    iget-object v3, v2, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;->application:Lca/uhn/hl7v2/protocol/ReceivingApplication;

    invoke-interface {v3, p1}, Lca/uhn/hl7v2/protocol/ReceivingApplication;->canProcess(Lca/uhn/hl7v2/model/Message;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    :cond_1
    iget-object v0, v2, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;->application:Lca/uhn/hl7v2/protocol/ReceivingApplication;

    .line 226
    .end local v2    # "binding":Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "i":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method private getInMessage(Lca/uhn/hl7v2/model/Segment;)Lca/uhn/hl7v2/model/Message;
    .locals 5
    .param p1, "inHeader"    # Lca/uhn/hl7v2/model/Segment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    if-eqz p1, :cond_0

    .line 449
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    .line 451
    .local v0, "in":Lca/uhn/hl7v2/model/Message;
    const-string v1, "MSH"

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/model/Message;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Segment;

    invoke-static {p1, v1}, Lca/uhn/hl7v2/util/DeepCopy;->copy(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/model/Segment;)V

    .line 452
    goto :goto_0

    .line 453
    .end local v0    # "in":Lca/uhn/hl7v2/model/Message;
    :cond_0
    invoke-static {}, Lca/uhn/hl7v2/Version;->highestAvailableVersionOrDefault()Lca/uhn/hl7v2/Version;

    move-result-object v0

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/Parser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/Version;->newGenericMessage(Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/GenericMessage;

    move-result-object v0

    .line 454
    .restart local v0    # "in":Lca/uhn/hl7v2/model/Message;
    move-object v1, v0

    check-cast v1, Lca/uhn/hl7v2/model/GenericMessage;

    const-string v2, "ACK"

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lca/uhn/hl7v2/model/GenericMessage;->initQuickstart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_0
    return-object v0
.end method

.method private handleProcessMessageException(Ljava/lang/String;Ljava/util/Map;Lca/uhn/hl7v2/model/Message;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3
    .param p1, "incomingMessageString"    # Ljava/lang/String;
    .param p3, "incomingMessageObject"    # Lca/uhn/hl7v2/model/Message;
    .param p4, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lca/uhn/hl7v2/model/Message;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 198
    .local p2, "theMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_0

    const-string v0, "MSH"

    invoke-interface {p3, v0}, Lca/uhn/hl7v2/model/Message;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 199
    .local v0, "inHeader":Lca/uhn/hl7v2/model/Segment;
    :goto_0
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v2, p1}, Lca/uhn/hl7v2/parser/Parser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p4, v0, v1, v2}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->logAndMakeErrorMessage(Ljava/lang/Exception;Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/Parser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "outgoingMessageString":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myExceptionHandler:Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myExceptionHandler:Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;

    invoke-interface {v2, p1, p2, v1, p4}, Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;->processException(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_1
    return-object v1
.end method

.method private init(Lca/uhn/hl7v2/parser/Parser;)V
    .locals 2
    .param p1, "theParser"    # Lca/uhn/hl7v2/parser/Parser;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myBindings:Ljava/util/List;

    .line 94
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    .line 95
    return-void
.end method

.method public static matches(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Z
    .locals 3
    .param p0, "theMessageData"    # Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    .param p1, "theReferenceData"    # Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;

    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, "result":Z
    invoke-interface {p0}, Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;->getMessageType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;->getMessageType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-interface {p0}, Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;->getTriggerEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;->getTriggerEvent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-interface {p0}, Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;->getProcessingId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;->getProcessingId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-interface {p0}, Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const/4 v0, 0x1

    .line 348
    :cond_0
    return v0
.end method

.method private static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "theMessageData"    # Ljava/lang/String;
    .param p1, "theReferenceData"    # Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    .line 355
    .local v0, "result":Z
    move-object v1, p0

    .line 356
    .local v1, "messageData":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 357
    const-string v1, ""

    .line 360
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 361
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 362
    invoke-static {p1, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    :cond_1
    const/4 v0, 0x1

    .line 365
    :cond_2
    return v0
.end method

.method private processMessage(Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;
    .locals 10
    .param p1, "incomingMessageString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 125
    .local p2, "theMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ca.uhn.hl7v2.raw.outbound"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 126
    .local v0, "rawOutbound":Lorg/slf4j/Logger;
    const-string v1, "ca.uhn.hl7v2.raw.inbound"

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 131
    .local v1, "rawInbound":Lorg/slf4j/Logger;
    sget-object v2, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->log:Lorg/slf4j/Logger;

    const-string v3, "ApplicationRouterImpl got message: {}"

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, "incomingMessageObject":Lca/uhn/hl7v2/model/Message;
    const/4 v3, 0x0

    .line 136
    .local v3, "outgoingMessageString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 138
    .local v4, "outgoingMessageCharset":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v5, p1}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v5

    move-object v2, v5

    .line 140
    new-instance v5, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v5, v2}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 141
    .local v5, "inTerser":Lca/uhn/hl7v2/util/Terser;
    const-string v6, "/MSH-10"

    const-string v7, "/.MSH-10"

    invoke-virtual {v5, v7}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v5    # "inTerser":Lca/uhn/hl7v2/util/Terser;
    goto :goto_1

    :catch_0
    move-exception v5

    .line 144
    .local v5, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v6, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->log:Lorg/slf4j/Logger;

    const-string v7, "Exception parsing incoming message"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :try_start_1
    iget-object v6, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v6, p1}, Lca/uhn/hl7v2/parser/Parser;->getCriticalResponseData(Ljava/lang/String;)Lca/uhn/hl7v2/model/Segment;

    move-result-object v6

    iget-object v7, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    iget-object v8, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v8, p1}, Lca/uhn/hl7v2/parser/Parser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->logAndMakeErrorMessage(Ljava/lang/Exception;Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/Parser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v6

    .line 147
    goto :goto_0

    :catch_1
    move-exception v6

    .line 148
    .local v6, "e2":Lca/uhn/hl7v2/HL7Exception;
    sget-object v7, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->log:Lorg/slf4j/Logger;

    const-string v8, "Exception occurred while logging parse failure"

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    const/4 v3, 0x0

    .line 151
    .end local v6    # "e2":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    iget-object v6, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myExceptionHandler:Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;

    if-eqz v6, :cond_0

    .line 152
    iget-object v6, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myExceptionHandler:Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;

    invoke-interface {v6, p1, p2, v3, v5}, Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;->processException(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    .line 153
    if-nez v3, :cond_0

    .line 154
    new-instance v6, Lca/uhn/hl7v2/HL7Exception;

    const-string v7, "Application exception handler may not return null"

    invoke-direct {v6, v7}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 160
    .end local v5    # "e":Lca/uhn/hl7v2/HL7Exception;
    :cond_0
    :goto_1
    if-nez v3, :cond_2

    .line 163
    :try_start_2
    const-string v5, "ca.uhn.hl7v2.protocol.impl.check_parse"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "check":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v6, "TRUE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 165
    iget-object v6, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-static {p1, v2, v6}, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->checkParse(Ljava/lang/String;Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/parser/Parser;)V

    .line 170
    :cond_1
    invoke-direct {p0, v2}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->findApplication(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/protocol/ReceivingApplication;

    move-result-object v6

    .line 171
    .local v6, "app":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<Lca/uhn/hl7v2/model/Message;>;"
    const-string v7, "raw-message"

    invoke-interface {p2, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v7, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->log:Lorg/slf4j/Logger;

    const-string v8, "Sending message to application: {}"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    invoke-interface {v6, v2, p2}, Lca/uhn/hl7v2/protocol/ReceivingApplication;->processMessage(Lca/uhn/hl7v2/model/Message;Ljava/util/Map;)Lca/uhn/hl7v2/model/Message;

    move-result-object v7

    .line 177
    .local v7, "response":Lca/uhn/hl7v2/model/Message;
    iget-object v8, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    iget-object v9, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v9, p1}, Lca/uhn/hl7v2/parser/Parser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 179
    new-instance v8, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v8, v7}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 180
    .local v8, "t":Lca/uhn/hl7v2/util/Terser;
    const-string v9, "MSH-18"

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v9

    .line 181
    .end local v5    # "check":Ljava/lang/String;
    .end local v6    # "app":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<Lca/uhn/hl7v2/model/Message;>;"
    .end local v7    # "response":Lca/uhn/hl7v2/model/Message;
    .end local v8    # "t":Lca/uhn/hl7v2/util/Terser;
    goto :goto_2

    .line 183
    :catch_2
    move-exception v5

    .line 184
    .local v5, "e":Ljava/lang/Error;
    sget-object v6, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->log:Lorg/slf4j/Logger;

    const-string v7, "Caught runtime exception of type {}, going to wrap it as HL7Exception and handle it"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    new-instance v6, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v6, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    .line 186
    .local v6, "wrapped":Lca/uhn/hl7v2/HL7Exception;
    invoke-direct {p0, p1, p2, v2, v6}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->handleProcessMessageException(Ljava/lang/String;Ljava/util/Map;Lca/uhn/hl7v2/model/Message;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .end local v5    # "e":Ljava/lang/Error;
    .end local v6    # "wrapped":Lca/uhn/hl7v2/HL7Exception;
    goto :goto_2

    .line 181
    :catch_3
    move-exception v5

    .line 182
    .local v5, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1, p2, v2, v5}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->handleProcessMessageException(Ljava/lang/String;Ljava/util/Map;Lca/uhn/hl7v2/model/Message;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    sget-object v5, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->log:Lorg/slf4j/Logger;

    const-string v6, "ApplicationRouterImpl sending message: {}"

    invoke-interface {v5, v6, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 193
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    return-object v5
.end method


# virtual methods
.method public bindApplication(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;Lca/uhn/hl7v2/protocol/ReceivingApplication;)V
    .locals 2
    .param p1, "theRoutingData"    # Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;",
            "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;)V"
        }
    .end annotation

    .line 273
    .local p2, "theApplication":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    new-instance v0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;-><init>(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;ZLca/uhn/hl7v2/protocol/ReceivingApplication;)V

    .line 274
    .local v0, "binding":Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myBindings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public disableBinding(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)V
    .locals 2
    .param p1, "theRoutingData"    # Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;

    .line 298
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->findBinding(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;

    move-result-object v0

    .line 299
    .local v0, "b":Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    if-eqz v0, :cond_0

    .line 300
    const/4 v1, 0x0

    iput-boolean v1, v0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;->active:Z

    .line 302
    :cond_0
    return-void
.end method

.method public enableBinding(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)V
    .locals 2
    .param p1, "theRoutingData"    # Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;

    .line 308
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->findBinding(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;

    move-result-object v0

    .line 309
    .local v0, "b":Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    if-eqz v0, :cond_0

    .line 310
    const/4 v1, 0x1

    iput-boolean v1, v0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;->active:Z

    .line 312
    :cond_0
    return-void
.end method

.method public getParser()Lca/uhn/hl7v2/parser/Parser;
    .locals 1

    .line 318
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myParser:Lca/uhn/hl7v2/parser/Parser;

    return-object v0
.end method

.method public hasActiveBinding(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Z
    .locals 2
    .param p1, "theRoutingData"    # Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "result":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->findDestination(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Lca/uhn/hl7v2/protocol/ReceivingApplication;

    move-result-object v1

    .line 213
    .local v1, "app":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    if-eqz v1, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 216
    :cond_0
    return v0
.end method

.method public logAndMakeErrorMessage(Ljava/lang/Exception;Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/Parser;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "inHeader"    # Lca/uhn/hl7v2/model/Segment;
    .param p3, "p"    # Lca/uhn/hl7v2/parser/Parser;
    .param p4, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 416
    invoke-static {}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->$SWITCH_TABLE$ca$uhn$hl7v2$app$ServerConfiguration$ApplicationExceptionPolicy()[I

    move-result-object v0

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myContext:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v1}, Lca/uhn/hl7v2/HapiContext;->getServerConfiguration()Lca/uhn/hl7v2/app/ServerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/app/ServerConfiguration;->getApplicationExceptionPolicy()Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 422
    sget-object v0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->log:Lorg/slf4j/Logger;

    const-string v1, "Attempting to send error message to remote system."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    instance-of v0, p1, Lca/uhn/hl7v2/HL7Exception;

    if-eqz v0, :cond_0

    .line 427
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/HL7Exception;

    goto :goto_0

    .line 428
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    :goto_0
    nop

    .line 431
    .local v0, "hl7e":Lca/uhn/hl7v2/HL7Exception;
    :try_start_0
    invoke-virtual {v0}, Lca/uhn/hl7v2/HL7Exception;->getResponseMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    .line 432
    .local v1, "out":Lca/uhn/hl7v2/model/Message;
    if-nez v1, :cond_1

    .line 433
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->getInMessage(Lca/uhn/hl7v2/model/Segment;)Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    .line 434
    .local v2, "in":Lca/uhn/hl7v2/model/Message;
    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->defaultAcknowledgementMode:Lca/uhn/hl7v2/AcknowledgmentCode;

    invoke-interface {v2, v3, v0}, Lca/uhn/hl7v2/model/Message;->generateACK(Lca/uhn/hl7v2/AcknowledgmentCode;Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    move-object v1, v3

    .line 436
    .end local v2    # "in":Lca/uhn/hl7v2/model/Message;
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p3, v1, p4}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p3, v1}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    .line 438
    .end local v1    # "out":Lca/uhn/hl7v2/model/Message;
    :catch_0
    move-exception v1

    .line 439
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException creating error response message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-direct {v2, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    .end local v0    # "hl7e":Lca/uhn/hl7v2/HL7Exception;
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_3
    sget-object v0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->log:Lorg/slf4j/Logger;

    const-string v1, "Application exception detected, not going to send a response back to the client"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    const/4 v0, 0x0

    return-object v0
.end method

.method public processMessage(Lca/uhn/hl7v2/protocol/Transportable;)Lca/uhn/hl7v2/protocol/Transportable;
    .locals 5
    .param p1, "theMessage"    # Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->processMessage(Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "result":[Ljava/lang/String;
    new-instance v1, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "response":Lca/uhn/hl7v2/protocol/Transportable;
    const/4 v2, 0x1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 109
    invoke-interface {v1}, Lca/uhn/hl7v2/protocol/Transportable;->getMetadata()Ljava/util/Map;

    move-result-object v3

    const-string v4, "MSH-18"

    aget-object v2, v0, v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    return-object v1
.end method

.method public setDefaultAcknowledgementMode(Lca/uhn/hl7v2/AcknowledgmentCode;)V
    .locals 0
    .param p1, "defaultAcknowledgementMode"    # Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 98
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->defaultAcknowledgementMode:Lca/uhn/hl7v2/AcknowledgmentCode;

    .line 99
    return-void
.end method

.method public setExceptionHandler(Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;)V
    .locals 0
    .param p1, "theExceptionHandler"    # Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;

    .line 325
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myExceptionHandler:Lca/uhn/hl7v2/protocol/ReceivingApplicationExceptionHandler;

    .line 326
    return-void
.end method

.method public unbindApplication(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Z
    .locals 2
    .param p1, "theRoutingData"    # Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;

    .line 282
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->findBinding(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;)Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;

    move-result-object v0

    .line 283
    .local v0, "b":Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myBindings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public unbindApplication(Lca/uhn/hl7v2/protocol/ReceivingApplication;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;)Z"
        }
    .end annotation

    .line 290
    .local p1, "theApplication":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->findBinding(Lca/uhn/hl7v2/protocol/ReceivingApplication;)Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;

    move-result-object v0

    .line 291
    .local v0, "b":Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;->myBindings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
