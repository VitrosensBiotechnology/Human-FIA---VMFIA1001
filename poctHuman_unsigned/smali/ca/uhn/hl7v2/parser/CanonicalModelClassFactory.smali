.class public Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;
.super Lca/uhn/hl7v2/parser/DefaultModelClassFactory;
.source "CanonicalModelClassFactory.java"


# static fields
.field private static final serialVersionUID:J = -0x18eb89870a55326eL


# instance fields
.field private myMessageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private myVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    .line 59
    invoke-static {}, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->getHighestKnownVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->myVersion:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Class may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->myMessageClass:Ljava/lang/Class;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "theVersion"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    .line 82
    if-eqz p1, :cond_1

    invoke-static {p1}, Lca/uhn/hl7v2/Version;->supportsVersion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->myVersion:Ljava/lang/String;

    .line 86
    return-void

    .line 83
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initVersionIfNeeded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->myMessageClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->myVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->myMessageClass:Ljava/lang/Class;

    invoke-static {v0, p0}, Lca/uhn/hl7v2/util/ReflectionUtil;->instantiateMessage(Ljava/lang/Class;Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->myVersion:Ljava/lang/String;

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public getGroupClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Group;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->myVersion:Ljava/lang/String;

    invoke-super {p0, p1, v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->getGroupClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .param p3, "theIsExplicit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->myMessageClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->myMessageClass:Ljava/lang/Class;

    return-object v0

    .line 104
    :cond_0
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->initVersionIfNeeded()V

    .line 105
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->myVersion:Ljava/lang/String;

    invoke-super {p0, p1, v0, p3}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->getMessageClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->initVersionIfNeeded()V

    .line 114
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->myVersion:Ljava/lang/String;

    invoke-super {p0, p1, v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->getSegmentClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getTypeClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Type;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->initVersionIfNeeded()V

    .line 123
    iget-object v0, p0, Lca/uhn/hl7v2/parser/CanonicalModelClassFactory;->myVersion:Ljava/lang/String;

    invoke-super {p0, p1, v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->getTypeClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
