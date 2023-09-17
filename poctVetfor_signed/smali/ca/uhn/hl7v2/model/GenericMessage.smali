.class public abstract Lca/uhn/hl7v2/model/GenericMessage;
.super Lca/uhn/hl7v2/model/AbstractMessage;
.source "GenericMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/model/GenericMessage$UnknownVersion;,
        Lca/uhn/hl7v2/model/GenericMessage$V21;,
        Lca/uhn/hl7v2/model/GenericMessage$V22;,
        Lca/uhn/hl7v2/model/GenericMessage$V23;,
        Lca/uhn/hl7v2/model/GenericMessage$V231;,
        Lca/uhn/hl7v2/model/GenericMessage$V24;,
        Lca/uhn/hl7v2/model/GenericMessage$V25;,
        Lca/uhn/hl7v2/model/GenericMessage$V251;,
        Lca/uhn/hl7v2/model/GenericMessage$V26;,
        Lca/uhn/hl7v2/model/GenericMessage$V27;,
        Lca/uhn/hl7v2/model/GenericMessage$V271;,
        Lca/uhn/hl7v2/model/GenericMessage$V28;,
        Lca/uhn/hl7v2/model/GenericMessage$V281;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lca/uhn/hl7v2/model/GenericMessage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/model/GenericMessage;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 3
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 28
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractMessage;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 30
    :try_start_0
    const-string v0, "MSH"

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/GenericMessage;->addNonstandardSegment(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    nop

    .line 36
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    const-string v1, "Unexpected error adding GenericSegment to GenericMessage."

    .line 33
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Lca/uhn/hl7v2/model/GenericMessage;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getGenericMessageClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v0

    .line 50
    .local v0, "v":Lca/uhn/hl7v2/Version;
    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lca/uhn/hl7v2/model/GenericMessage;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lca/uhn/hl7v2/Version;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "className":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 54
    .end local v1    # "className":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 60
    :cond_0
    sget-object v1, Lca/uhn/hl7v2/model/GenericMessage;->log:Lorg/slf4j/Logger;

    const-string v2, "Unknown version for generic type {}"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-class v1, Lca/uhn/hl7v2/model/GenericMessage$UnknownVersion;

    return-object v1
.end method
