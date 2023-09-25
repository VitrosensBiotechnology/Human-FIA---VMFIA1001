.class public Lca/uhn/hl7v2/validation/impl/MessageRuleBinding;
.super Lca/uhn/hl7v2/validation/impl/RuleBinding;
.source "MessageRuleBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
        "Lca/uhn/hl7v2/validation/MessageRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final delim:Ljava/lang/String; = "^"


# instance fields
.field private myMessageType:Ljava/lang/String;

.field private myTriggerEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/validation/MessageRule;)V
    .locals 2
    .param p1, "theVersion"    # Ljava/lang/String;
    .param p2, "theMessageType"    # Ljava/lang/String;
    .param p3, "theTriggerEvent"    # Ljava/lang/String;
    .param p4, "theRule"    # Lca/uhn/hl7v2/validation/MessageRule;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lca/uhn/hl7v2/validation/impl/RuleBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/validation/Rule;)V

    .line 55
    iput-object p2, p0, Lca/uhn/hl7v2/validation/impl/MessageRuleBinding;->myMessageType:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lca/uhn/hl7v2/validation/impl/MessageRuleBinding;->myTriggerEvent:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public appliesToScope(Ljava/lang/String;)Z
    .locals 5
    .param p1, "theScope"    # Ljava/lang/String;

    .line 65
    const-string v0, ".*\\^.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "arg theScope must be of the form type^event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "^"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    .local v0, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "itemType":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "itemEvent":Ljava/lang/String;
    iget-object v4, p0, Lca/uhn/hl7v2/validation/impl/MessageRuleBinding;->myMessageType:Ljava/lang/String;

    invoke-static {v4, v1}, Lca/uhn/hl7v2/validation/impl/MessageRuleBinding;->applies(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lca/uhn/hl7v2/validation/impl/MessageRuleBinding;->myTriggerEvent:Ljava/lang/String;

    invoke-static {v4, v3}, Lca/uhn/hl7v2/validation/impl/MessageRuleBinding;->applies(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
