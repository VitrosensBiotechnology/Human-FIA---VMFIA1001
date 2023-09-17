.class Lca/uhn/hl7v2/parser/OldPipeParser$2;
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

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/parser/OldPipeParser;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/uhn/hl7v2/parser/OldPipeParser$2;->this$0:Lca/uhn/hl7v2/parser/OldPipeParser;

    iput-object p2, p0, Lca/uhn/hl7v2/parser/OldPipeParser$2;->val$name:Ljava/lang/String;

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lca/uhn/hl7v2/model/Structure;)Z
    .locals 5
    .param p1, "obj"    # Lca/uhn/hl7v2/model/Structure;

    .line 767
    move-object v0, p1

    .line 768
    .local v0, "s":Lca/uhn/hl7v2/model/Structure;
    invoke-static {}, Lca/uhn/hl7v2/parser/OldPipeParser;->access$0()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "PipeParser iterating message in direction {} at {} "

    iget-object v3, p0, Lca/uhn/hl7v2/parser/OldPipeParser$2;->val$name:Ljava/lang/String;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Structure;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 769
    invoke-interface {v0}, Lca/uhn/hl7v2/model/Structure;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lca/uhn/hl7v2/parser/OldPipeParser$2;->val$name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\\d*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Structure;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/OldPipeParser$2;->evaluate(Lca/uhn/hl7v2/model/Structure;)Z

    move-result p1

    return p1
.end method
