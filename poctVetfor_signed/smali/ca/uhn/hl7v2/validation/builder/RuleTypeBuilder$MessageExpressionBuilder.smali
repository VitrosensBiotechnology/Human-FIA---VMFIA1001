.class public Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;
.super Ljava/lang/Object;
.source "RuleTypeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageExpressionBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;->this$0:Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public all()Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
    .locals 7

    .line 258
    new-instance v0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;->this$0:Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    invoke-static {v1}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->access$0(Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;->this$0:Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    invoke-static {v2}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->access$1(Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "*"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "*"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;-><init>(Ljava/util/List;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public allOfEventType(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
    .locals 6
    .param p1, "eventType"    # Ljava/lang/String;

    .line 268
    new-instance v0, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;->this$0:Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    invoke-static {v1}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->access$0(Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;->this$0:Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    invoke-static {v2}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;->access$1(Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "*"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, p1, v3}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;-><init>(Ljava/util/List;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs rejectOtherThan([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
    .locals 3
    .param p1, "triggerEvents"    # [Ljava/lang/String;

    .line 279
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 280
    .local v0, "triggers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;->all()Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    move-result-object v1

    new-instance v2, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder$1;

    invoke-direct {v2, p0, v0}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder$1;-><init>(Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;->test(Lca/uhn/hl7v2/validation/Rule;)Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;

    return-object v1
.end method
