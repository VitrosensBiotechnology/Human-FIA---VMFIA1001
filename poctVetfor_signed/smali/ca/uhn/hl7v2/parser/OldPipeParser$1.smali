.class Lca/uhn/hl7v2/parser/OldPipeParser$1;
.super Ljava/lang/Object;
.source "OldPipeParser.java"

# interfaces
.implements Lca/uhn/hl7v2/util/FilterIterator$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/uhn/hl7v2/parser/OldPipeParser;->parse(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/util/FilterIterator$Predicate<",
        "Lca/uhn/hl7v2/model/Structure;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lca/uhn/hl7v2/parser/OldPipeParser;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/parser/OldPipeParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/uhn/hl7v2/parser/OldPipeParser$1;->this$0:Lca/uhn/hl7v2/parser/OldPipeParser;

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lca/uhn/hl7v2/model/Structure;)Z
    .locals 2
    .param p1, "obj"    # Lca/uhn/hl7v2/model/Structure;

    .line 730
    const-class v0, Lca/uhn/hl7v2/model/Segment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    const/4 v0, 0x1

    return v0

    .line 733
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Structure;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/OldPipeParser$1;->evaluate(Lca/uhn/hl7v2/model/Structure;)Z

    move-result p1

    return p1
.end method
