.class public abstract Lca/uhn/hl7v2/parser/Parser;
.super Lca/uhn/hl7v2/HapiContextSupport;
.source "Parser.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lca/uhn/hl7v2/parser/Parser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/parser/Parser;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v0}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/parser/Parser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 0
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 81
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/HapiContextSupport;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 1
    .param p1, "modelClassFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 90
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/parser/Parser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 91
    return-void
.end method

.method private assertMessageValidates(Lca/uhn/hl7v2/model/Message;)V
    .locals 4
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lca/uhn/hl7v2/model/Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 604
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/Parser;->isValidating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getMessageValidator()Lca/uhn/hl7v2/validation/Validator;

    move-result-object v0

    .line 606
    .local v0, "validator":Lca/uhn/hl7v2/validation/Validator;, "Lca/uhn/hl7v2/validation/Validator<TR;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/HapiContext;->getValidationExceptionHandlerFactory()Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;

    move-result-object v1

    .line 607
    .local v1, "factory":Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<TR;>;"
    if-nez v1, :cond_0

    .line 608
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Validation is enabled for this parser, but ValidationExceptionHandlerFactory is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v2

    invoke-interface {v1, v2}, Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;->getNewInstance(Lca/uhn/hl7v2/HapiContext;)Lca/uhn/hl7v2/validation/ValidationExceptionHandler;

    move-result-object v2

    .line 611
    .local v2, "handler":Lca/uhn/hl7v2/validation/ValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<TR;>;"
    invoke-interface {v0, p1, v2}, Lca/uhn/hl7v2/validation/Validator;->validate(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 612
    .local v3, "result":Ljava/lang/Object;, "TR;"
    invoke-direct {p0, v2, v3}, Lca/uhn/hl7v2/parser/Parser;->handleException(Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Ljava/lang/Object;)V

    .line 614
    .end local v0    # "validator":Lca/uhn/hl7v2/validation/Validator;, "Lca/uhn/hl7v2/validation/Validator<TR;>;"
    .end local v1    # "factory":Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<TR;>;"
    .end local v2    # "handler":Lca/uhn/hl7v2/validation/ValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<TR;>;"
    .end local v3    # "result":Ljava/lang/Object;, "TR;"
    :cond_1
    return-void
.end method

.method private assertMessageValidates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 594
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/Parser;->isValidating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getMessageValidator()Lca/uhn/hl7v2/validation/Validator;

    move-result-object v0

    .line 596
    .local v0, "validator":Lca/uhn/hl7v2/validation/Validator;, "Lca/uhn/hl7v2/validation/Validator<TR;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/HapiContext;->getValidationExceptionHandlerFactory()Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;

    move-result-object v1

    .line 597
    .local v1, "factory":Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<TR;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v2

    invoke-interface {v1, v2}, Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;->getNewInstance(Lca/uhn/hl7v2/HapiContext;)Lca/uhn/hl7v2/validation/ValidationExceptionHandler;

    move-result-object v2

    .line 598
    .local v2, "handler":Lca/uhn/hl7v2/validation/ValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<TR;>;"
    const-string v3, "XML"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0, p1, v3, p3, v2}, Lca/uhn/hl7v2/validation/Validator;->validate(Ljava/lang/String;ZLjava/lang/String;Lca/uhn/hl7v2/validation/ValidationExceptionHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 599
    .local v3, "result":Ljava/lang/Object;, "TR;"
    invoke-direct {p0, v2, v3}, Lca/uhn/hl7v2/parser/Parser;->handleException(Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Ljava/lang/Object;)V

    .line 601
    .end local v0    # "validator":Lca/uhn/hl7v2/validation/Validator;, "Lca/uhn/hl7v2/validation/Validator<TR;>;"
    .end local v1    # "factory":Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<TR;>;"
    .end local v2    # "handler":Lca/uhn/hl7v2/validation/ValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<TR;>;"
    .end local v3    # "result":Ljava/lang/Object;, "TR;"
    :cond_0
    return-void
.end method

.method public static assertVersionExists(Ljava/lang/String;)V
    .locals 3
    .param p0, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 526
    invoke-static {p0}, Lca/uhn/hl7v2/Version;->supportsVersion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The HL7 version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not recognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    sget-object v2, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_VERSION_ID:Lca/uhn/hl7v2/ErrorCode;

    .line 527
    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v0

    .line 530
    :cond_0
    return-void
.end method

.method private handleException(Lca/uhn/hl7v2/validation/ValidationExceptionHandler;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;TR;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 618
    .local p1, "handler":Lca/uhn/hl7v2/validation/ValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<TR;>;"
    .local p2, "result":Ljava/lang/Object;, "TR;"
    invoke-interface {p1}, Lca/uhn/hl7v2/validation/ValidationExceptionHandler;->hasFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    const-string v1, "Validation has failed"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-virtual {v0, p2}, Lca/uhn/hl7v2/HL7Exception;->setDetail(Ljava/lang/Object;)V

    .line 621
    instance-of v1, p2, Lca/uhn/hl7v2/model/Message;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lca/uhn/hl7v2/model/Message;

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/HL7Exception;->setResponseMessage(Lca/uhn/hl7v2/model/Message;)V

    .line 622
    :cond_0
    throw v0

    .line 624
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :cond_1
    return-void
.end method

.method private isValidating()Z
    .locals 1

    .line 627
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/ParserConfiguration;->isValidating()Z

    move-result v0

    return v0
.end method

.method public static makeControlMSH(Ljava/lang/String;Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/Segment;
    .locals 9
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 472
    :try_start_0
    invoke-static {p0}, Lca/uhn/hl7v2/model/GenericMessage;->getGenericMessageClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 474
    .local v0, "genericMessageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    nop

    .line 475
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lca/uhn/hl7v2/parser/ModelClassFactory;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 474
    nop

    .line 476
    .local v2, "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lca/uhn/hl7v2/model/Message;>;"
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lca/uhn/hl7v2/model/Message;

    .line 478
    .local v3, "dummy":Lca/uhn/hl7v2/model/Message;
    const/4 v5, 0x0

    .line 480
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Segment;>;"
    invoke-static {p0}, Lca/uhn/hl7v2/Version;->supportsVersion(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 481
    const-string v6, "MSH"

    invoke-interface {p1, v6, p0}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getSegmentClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v5, v6

    .line 484
    :cond_0
    if-eqz v5, :cond_2

    .line 485
    const-class v6, Lca/uhn/hl7v2/model/GenericSegment;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_1

    .line 486
    new-array v6, v7, [Ljava/lang/Class;

    const-class v8, Lca/uhn/hl7v2/model/Group;

    aput-object v8, v6, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v1

    .line 487
    .local v6, "constructorParamTypes":[Ljava/lang/Class;
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v4

    const-string v4, "MSH"

    aput-object v4, v7, v1

    move-object v1, v7

    .line 488
    .local v1, "constructorParamArgs":[Ljava/lang/Object;
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 489
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lca/uhn/hl7v2/model/Segment;>;"
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lca/uhn/hl7v2/model/Segment;

    .line 489
    .end local v1    # "constructorParamArgs":[Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lca/uhn/hl7v2/model/Segment;>;"
    .end local v6    # "constructorParamTypes":[Ljava/lang/Class;
    move-object v1, v7

    .line 490
    .local v1, "msh":Lca/uhn/hl7v2/model/Segment;
    goto :goto_0

    .line 491
    .end local v1    # "msh":Lca/uhn/hl7v2/model/Segment;
    :cond_1
    new-array v6, v7, [Ljava/lang/Class;

    const-class v8, Lca/uhn/hl7v2/model/Group;

    aput-object v8, v6, v4

    const-class v8, Lca/uhn/hl7v2/parser/ModelClassFactory;

    aput-object v8, v6, v1

    .line 492
    .restart local v6    # "constructorParamTypes":[Ljava/lang/Class;
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v4

    aput-object p1, v7, v1

    move-object v1, v7

    .line 493
    .local v1, "constructorParamArgs":[Ljava/lang/Object;
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 494
    .restart local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lca/uhn/hl7v2/model/Segment;>;"
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lca/uhn/hl7v2/model/Segment;

    .line 494
    .end local v1    # "constructorParamArgs":[Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lca/uhn/hl7v2/model/Segment;>;"
    .end local v6    # "constructorParamTypes":[Ljava/lang/Class;
    move-object v1, v7

    .line 496
    .local v1, "msh":Lca/uhn/hl7v2/model/Segment;
    goto :goto_0

    .line 497
    .end local v1    # "msh":Lca/uhn/hl7v2/model/Segment;
    :cond_2
    new-instance v1, Lca/uhn/hl7v2/model/GenericSegment;

    const-string v4, "MSH"

    invoke-direct {v1, v3, v4}, Lca/uhn/hl7v2/model/GenericSegment;-><init>(Lca/uhn/hl7v2/model/Group;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v0    # "genericMessageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    .end local v2    # "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lca/uhn/hl7v2/model/Message;>;"
    .end local v3    # "dummy":Lca/uhn/hl7v2/model/Message;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Segment;>;"
    .restart local v1    # "msh":Lca/uhn/hl7v2/model/Segment;
    nop

    .line 500
    :goto_0
    move-object v0, v1

    .line 503
    .end local v1    # "msh":Lca/uhn/hl7v2/model/Segment;
    .local v0, "msh":Lca/uhn/hl7v2/model/Segment;
    return-object v0

    .line 499
    .end local v0    # "msh":Lca/uhn/hl7v2/model/Segment;
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t create MSH for version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v3, " (does your classpath include this version?) ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-direct {v1, v2, v0}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static validVersion(Ljava/lang/String;)Z
    .locals 1
    .param p0, "version"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 516
    invoke-static {p0}, Lca/uhn/hl7v2/Version;->supportsVersion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected applySuperStructureName(Lca/uhn/hl7v2/model/Message;)V
    .locals 4
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 573
    instance-of v0, p1, Lca/uhn/hl7v2/model/AbstractSuperMessage;

    if-eqz v0, :cond_1

    .line 574
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 575
    new-instance v0, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 576
    .local v0, "t":Lca/uhn/hl7v2/util/Terser;
    const/4 v1, 0x0

    .line 578
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    const-string v2, "/MSH-9-3"

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 579
    goto :goto_0

    :catch_0
    move-exception v2

    .line 583
    :goto_0
    invoke-static {v1}, Lca/uhn/hl7v2/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/MSH-9-1"

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/MSH-9-2"

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 587
    :cond_0
    move-object v2, p1

    check-cast v2, Lca/uhn/hl7v2/model/AbstractSuperMessage;

    invoke-virtual {v2, v1}, Lca/uhn/hl7v2/model/AbstractSuperMessage;->setName(Ljava/lang/String;)V

    .line 591
    .end local v0    # "t":Lca/uhn/hl7v2/util/Terser;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected abstract doEncode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method protected abstract doEncode(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract doEncode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract doEncode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method protected abstract doParse(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method protected abstract doParseForSpecificPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 275
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/Parser;->assertMessageValidates(Lca/uhn/hl7v2/model/Message;)V

    .line 276
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/Parser;->doEncode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getDefaultEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lca/uhn/hl7v2/parser/Parser;->assertMessageValidates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-object v0
.end method

.method public encode(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/Parser;->assertMessageValidates(Lca/uhn/hl7v2/model/Message;)V

    .line 247
    invoke-virtual {p0, p1, p2}, Lca/uhn/hl7v2/parser/Parser;->doEncode(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lca/uhn/hl7v2/parser/Parser;->assertMessageValidates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-object v0
.end method

.method public abstract getAckID(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCriticalResponseData(Ljava/lang/String;)Lca/uhn/hl7v2/model/Segment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract getDefaultEncoding()Ljava/lang/String;
.end method

.method public abstract getEncoding(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getModelClassFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v0

    return-object v0
.end method

.method public getMessageStructureForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 545
    invoke-static {p2}, Lca/uhn/hl7v2/parser/Parser;->assertVersionExists(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getModelClassFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v0

    .line 547
    invoke-static {p2}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getMessageStructureForEvent(Ljava/lang/String;Lca/uhn/hl7v2/Version;)Ljava/lang/String;

    move-result-object v0

    .line 546
    return-object v0
.end method

.method public getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;
    .locals 1

    .line 105
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/Parser;->isValidating()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public abstract getVersion(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method protected instantiateMessage(Ljava/lang/String;Ljava/lang/String;Z)Lca/uhn/hl7v2/model/Message;
    .locals 4
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .param p3, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 566
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getMessageClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    .line 567
    .local v0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    if-nez v0, :cond_0

    .line 568
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find message class in current package list: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v1

    invoke-static {v0, v1}, Lca/uhn/hl7v2/util/ReflectionUtil;->instantiateMessage(Ljava/lang/Class;Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    return-object v1
.end method

.method protected instantiateMessageInASpecificPackage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 4
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .param p3, "isExplicit"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v0

    .line 421
    nop

    .line 420
    invoke-interface {v0, p1, p2, p3, p4}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getMessageClassInASpecificPackage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 422
    .local v0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    if-nez v0, :cond_0

    .line 423
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find message class in current package list: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v1

    invoke-static {v0, v1}, Lca/uhn/hl7v2/util/ReflectionUtil;->instantiateMessage(Ljava/lang/Class;Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    return-object v1
.end method

.method public parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/Parser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "encoding":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/Parser;->supportsEncoding(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "startOfMessage":Ljava/lang/String;
    const-string v2, "MSH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 193
    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 194
    .local v2, "indexOfCR":I
    if-lez v2, :cond_0

    .line 195
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 198
    .end local v2    # "indexOfCR":I
    :cond_0
    if-nez v1, :cond_1

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x32

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_1
    new-instance v2, Lca/uhn/hl7v2/parser/EncodingNotSupportedException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Determine encoding for message. The following is the first 50 chars of the message for reference, although this may not be where the issue is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-direct {v2, v3}, Lca/uhn/hl7v2/parser/EncodingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    .end local v1    # "startOfMessage":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/Parser;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lca/uhn/hl7v2/parser/ParserConfiguration;->isAllowUnknownVersions()Z

    move-result v2

    if-nez v2, :cond_3

    .line 208
    invoke-static {v1}, Lca/uhn/hl7v2/parser/Parser;->assertVersionExists(Ljava/lang/String;)V

    .line 211
    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lca/uhn/hl7v2/parser/Parser;->assertMessageValidates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0, p1, v1}, Lca/uhn/hl7v2/parser/Parser;->doParse(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    .line 213
    .local v2, "result":Lca/uhn/hl7v2/model/Message;
    invoke-direct {p0, v2}, Lca/uhn/hl7v2/parser/Parser;->assertMessageValidates(Lca/uhn/hl7v2/model/Message;)V

    .line 215
    invoke-interface {v2, p0}, Lca/uhn/hl7v2/model/Message;->setParser(Lca/uhn/hl7v2/parser/Parser;)V

    .line 217
    invoke-virtual {p0, v2}, Lca/uhn/hl7v2/parser/Parser;->applySuperStructureName(Lca/uhn/hl7v2/model/Message;)V

    .line 219
    return-object v2
.end method

.method public abstract parse(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract parse(Lca/uhn/hl7v2/model/Segment;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract parse(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public parseForSpecificPackage(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 390
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/Parser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "encoding":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/Parser;->supportsEncoding(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    new-instance v1, Lca/uhn/hl7v2/parser/EncodingNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t parse message beginning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x32

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/parser/EncodingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_0
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/Parser;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "version":Ljava/lang/String;
    invoke-static {v1}, Lca/uhn/hl7v2/parser/Parser;->assertVersionExists(Ljava/lang/String;)V

    .line 399
    invoke-direct {p0, p1, v0, v1}, Lca/uhn/hl7v2/parser/Parser;->assertMessageValidates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0, p1, v1, p2}, Lca/uhn/hl7v2/parser/Parser;->doParseForSpecificPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    .line 401
    .local v2, "result":Lca/uhn/hl7v2/model/Message;
    invoke-direct {p0, v2}, Lca/uhn/hl7v2/parser/Parser;->assertMessageValidates(Lca/uhn/hl7v2/model/Message;)V

    .line 403
    invoke-interface {v2, p0}, Lca/uhn/hl7v2/model/Message;->setParser(Lca/uhn/hl7v2/parser/Parser;)V

    .line 404
    return-object v2
.end method

.method public setParserConfiguration(Lca/uhn/hl7v2/parser/ParserConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lca/uhn/hl7v2/parser/ParserConfiguration;

    .line 148
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 149
    .local v0, "newContext":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v0, p1}, Lca/uhn/hl7v2/HapiContext;->setParserConfiguration(Lca/uhn/hl7v2/parser/ParserConfiguration;)V

    .line 150
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/Parser;->setHapiContext(Lca/uhn/hl7v2/HapiContext;)V

    .line 151
    return-void
.end method

.method public setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V
    .locals 2
    .param p1, "context"    # Lca/uhn/hl7v2/validation/ValidationContext;

    .line 115
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 116
    .local v0, "newContext":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v0, p1}, Lca/uhn/hl7v2/HapiContext;->setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V

    .line 117
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/Parser;->setHapiContext(Lca/uhn/hl7v2/HapiContext;)V

    .line 118
    return-void
.end method

.method public supportsEncoding(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/Parser;->getDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
