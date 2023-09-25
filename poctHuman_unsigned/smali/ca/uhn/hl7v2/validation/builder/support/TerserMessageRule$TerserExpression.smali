.class Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule$TerserExpression;
.super Ljava/lang/Object;
.source "TerserMessageRule.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/builder/Expression;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TerserExpression"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/validation/builder/Expression<",
        "Lca/uhn/hl7v2/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private expression:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "expression"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule$TerserExpression;->expression:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public evaluate(Lca/uhn/hl7v2/model/Message;)Ljava/lang/Object;
    .locals 2
    .param p1, "msg"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 66
    new-instance v0, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule$TerserExpression;->expression:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic evaluate(Lca/uhn/hl7v2/model/Structure;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Message;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule$TerserExpression;->evaluate(Lca/uhn/hl7v2/model/Message;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, ""

    return-object v0
.end method

.method public getLocation(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/Location;
    .locals 5
    .param p1, "msg"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 75
    new-instance v0, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 76
    .local v0, "t":Lca/uhn/hl7v2/util/Terser;
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule$TerserExpression;->expression:Ljava/lang/String;

    const-string v3, "-"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    .local v1, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/util/Terser;->getSegment(Ljava/lang/String;)Lca/uhn/hl7v2/model/Segment;

    move-result-object v2

    .line 78
    .local v2, "segment":Lca/uhn/hl7v2/model/Segment;
    new-instance v3, Lca/uhn/hl7v2/Location;

    invoke-direct {v3}, Lca/uhn/hl7v2/Location;-><init>()V

    .line 79
    invoke-interface {v2}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/Location;->withSegmentName(Ljava/lang/String;)Lca/uhn/hl7v2/Location;

    move-result-object v3

    .line 80
    iget-object v4, p0, Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule$TerserExpression;->expression:Ljava/lang/String;

    invoke-static {v4}, Lca/uhn/hl7v2/util/Terser;->getIndices(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Lca/uhn/hl7v2/Location;->withFieldIndizes([I)Lca/uhn/hl7v2/Location;

    move-result-object v3

    .line 78
    nop

    .line 81
    .local v3, "location":Lca/uhn/hl7v2/Location;
    return-object v3
.end method

.method public bridge synthetic getLocation(Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/Location;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Message;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/builder/support/TerserMessageRule$TerserExpression;->getLocation(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/Location;

    move-result-object p1

    return-object p1
.end method
