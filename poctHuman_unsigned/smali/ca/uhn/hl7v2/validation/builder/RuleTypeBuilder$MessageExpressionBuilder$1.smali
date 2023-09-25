.class Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder$1;
.super Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;
.source "RuleTypeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;->rejectOtherThan([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/MessageRuleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;

.field private final synthetic val$triggers:Ljava/util/Set;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder$1;->this$1:Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder;

    iput-object p2, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder$1;->val$triggers:Ljava/util/Set;

    .line 280
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 5
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 283
    :try_start_0
    new-instance v0, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 284
    .local v0, "t":Lca/uhn/hl7v2/util/Terser;
    const-string v1, "MSH-9-1"

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "eventType":Ljava/lang/String;
    const-string v2, "MSH-9-2"

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "triggerEvent":Ljava/lang/String;
    iget-object v3, p0, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder$1;->val$triggers:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder$1;->passed()[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v3

    goto :goto_0

    .line 288
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not accepted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder$1;->failed(Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v3
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-object v3

    .line 289
    .end local v0    # "t":Lca/uhn/hl7v2/util/Terser;
    .end local v1    # "eventType":Ljava/lang/String;
    .end local v2    # "triggerEvent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder$1;->failed(Ljava/lang/Exception;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Message;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/builder/RuleTypeBuilder$MessageExpressionBuilder$1;->apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object p1

    return-object p1
.end method
