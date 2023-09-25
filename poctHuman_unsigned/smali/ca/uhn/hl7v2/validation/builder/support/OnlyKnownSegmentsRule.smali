.class public Lca/uhn/hl7v2/validation/builder/support/OnlyKnownSegmentsRule;
.super Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;
.source "OnlyKnownSegmentsRule.java"


# static fields
.field public static final ONLY_KNOWN_SEGMENTS:Lca/uhn/hl7v2/validation/MessageRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lca/uhn/hl7v2/validation/builder/support/OnlyKnownSegmentsRule;

    invoke-direct {v0}, Lca/uhn/hl7v2/validation/builder/support/OnlyKnownSegmentsRule;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/validation/builder/support/OnlyKnownSegmentsRule;->ONLY_KNOWN_SEGMENTS:Lca/uhn/hl7v2/validation/MessageRule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 6
    .param p1, "msg"    # Lca/uhn/hl7v2/model/Message;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "exceptions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/ValidationException;>;"
    const-class v1, Lca/uhn/hl7v2/model/GenericSegment;

    invoke-static {p1, v1}, Lca/uhn/hl7v2/util/ReadOnlyMessageIterator;->createPopulatedStructureIterator(Lca/uhn/hl7v2/model/Group;Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v1

    .line 54
    nop

    .line 55
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/model/Structure;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/model/Structure;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lca/uhn/hl7v2/validation/ValidationException;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lca/uhn/hl7v2/validation/ValidationException;

    return-object v1

    .line 56
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/model/Structure;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/model/Structure;

    invoke-interface {v2}, Lca/uhn/hl7v2/model/Structure;->getName()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "segmentName":Ljava/lang/String;
    new-instance v3, Lca/uhn/hl7v2/validation/ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found unknown segment: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;)V

    .line 58
    .local v3, "ve":Lca/uhn/hl7v2/validation/ValidationException;
    new-instance v4, Lca/uhn/hl7v2/Location;

    invoke-direct {v4}, Lca/uhn/hl7v2/Location;-><init>()V

    invoke-virtual {v4, v2}, Lca/uhn/hl7v2/Location;->withSegmentName(Ljava/lang/String;)Lca/uhn/hl7v2/Location;

    move-result-object v4

    .line 59
    .local v4, "location":Lca/uhn/hl7v2/Location;
    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/validation/ValidationException;->setLocation(Lca/uhn/hl7v2/Location;)V

    .line 60
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v2    # "segmentName":Ljava/lang/String;
    .end local v3    # "ve":Lca/uhn/hl7v2/validation/ValidationException;
    .end local v4    # "location":Lca/uhn/hl7v2/Location;
    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Message;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/builder/support/OnlyKnownSegmentsRule;->apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object p1

    return-object p1
.end method
