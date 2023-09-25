.class public Lca/uhn/hl7v2/validation/builder/support/WrongVersionRule;
.super Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;
.source "WrongVersionRule.java"


# static fields
.field public static final WRONG_VERSION:Lca/uhn/hl7v2/validation/MessageRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lca/uhn/hl7v2/validation/builder/support/WrongVersionRule;

    invoke-direct {v0}, Lca/uhn/hl7v2/validation/builder/support/WrongVersionRule;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/validation/builder/support/WrongVersionRule;->WRONG_VERSION:Lca/uhn/hl7v2/validation/MessageRule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 4
    .param p1, "msg"    # Lca/uhn/hl7v2/model/Message;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "exceptions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/ValidationException;>;"
    new-instance v1, Lca/uhn/hl7v2/validation/ValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "ve":Lca/uhn/hl7v2/validation/ValidationException;
    new-instance v2, Lca/uhn/hl7v2/Location;

    invoke-direct {v2}, Lca/uhn/hl7v2/Location;-><init>()V

    .line 53
    const-string v3, "MSH"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/Location;->withSegmentName(Ljava/lang/String;)Lca/uhn/hl7v2/Location;

    move-result-object v2

    .line 54
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/Location;->withField(I)Lca/uhn/hl7v2/Location;

    move-result-object v2

    .line 52
    nop

    .line 55
    .local v2, "location":Lca/uhn/hl7v2/Location;
    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/validation/ValidationException;->setLocation(Lca/uhn/hl7v2/Location;)V

    .line 56
    sget-object v3, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_VERSION_ID:Lca/uhn/hl7v2/ErrorCode;

    invoke-virtual {v1, v3}, Lca/uhn/hl7v2/validation/ValidationException;->setError(Lca/uhn/hl7v2/ErrorCode;)V

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lca/uhn/hl7v2/validation/ValidationException;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lca/uhn/hl7v2/validation/ValidationException;

    return-object v3
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Message;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/builder/support/WrongVersionRule;->apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object p1

    return-object p1
.end method
