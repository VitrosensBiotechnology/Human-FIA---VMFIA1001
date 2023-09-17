.class public Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;
.super Ljava/lang/Object;
.source "ValidationRuleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VersionExpressionBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;->this$0:Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public all()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .locals 4

    .line 91
    new-instance v0, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;->this$0:Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    invoke-virtual {v1}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->getRules()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lca/uhn/hl7v2/Version;->values()[Lca/uhn/hl7v2/Version;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;-><init>(Ljava/util/List;[Lca/uhn/hl7v2/Version;Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    return-object v0
.end method

.method public asOf(Lca/uhn/hl7v2/Version;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .locals 4
    .param p1, "version"    # Lca/uhn/hl7v2/Version;

    .line 99
    new-instance v0, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;->this$0:Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    invoke-virtual {v1}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->getRules()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lca/uhn/hl7v2/Version;->asOf(Lca/uhn/hl7v2/Version;)[Lca/uhn/hl7v2/Version;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;-><init>(Ljava/util/List;[Lca/uhn/hl7v2/Version;Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    return-object v0
.end method

.method public asOf(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;->asOf(Lca/uhn/hl7v2/Version;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v0

    return-object v0
.end method

.method public before(Lca/uhn/hl7v2/Version;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .locals 4
    .param p1, "version"    # Lca/uhn/hl7v2/Version;

    .line 107
    new-instance v0, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;->this$0:Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    invoke-virtual {v1}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->getRules()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lca/uhn/hl7v2/Version;->before(Lca/uhn/hl7v2/Version;)[Lca/uhn/hl7v2/Version;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;-><init>(Ljava/util/List;[Lca/uhn/hl7v2/Version;Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    return-object v0
.end method

.method public before(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;->before(Lca/uhn/hl7v2/Version;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs except([Lca/uhn/hl7v2/Version;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .locals 4
    .param p1, "versions"    # [Lca/uhn/hl7v2/Version;

    .line 119
    new-instance v0, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;->this$0:Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    invoke-virtual {v1}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;->getRules()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lca/uhn/hl7v2/Version;->except([Lca/uhn/hl7v2/Version;)[Lca/uhn/hl7v2/Version;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;-><init>(Ljava/util/List;[Lca/uhn/hl7v2/Version;Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    return-object v0
.end method

.method public varargs except([Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .locals 3
    .param p1, "versions"    # [Ljava/lang/String;

    .line 111
    array-length v0, p1

    new-array v0, v0, [Lca/uhn/hl7v2/Version;

    .line 112
    .local v0, "v":[Lca/uhn/hl7v2/Version;
    const/4 v1, 0x0

    .line 112
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 115
    .end local v1    # "i":I
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder$VersionExpressionBuilder;->except([Lca/uhn/hl7v2/Version;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v1

    return-object v1

    .line 113
    .restart local v1    # "i":I
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v2

    aput-object v2, v0, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
