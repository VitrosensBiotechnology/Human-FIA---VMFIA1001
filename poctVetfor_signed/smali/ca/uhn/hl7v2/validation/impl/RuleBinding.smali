.class public Lca/uhn/hl7v2/validation/impl/RuleBinding;
.super Ljava/lang/Object;
.source "RuleBinding.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lca/uhn/hl7v2/validation/Rule<",
        "*>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private myActiveFlag:Z

.field private myRule:Lca/uhn/hl7v2/validation/Rule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private myScope:Ljava/lang/String;

.field private myVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/validation/Rule;)V
    .locals 1
    .param p1, "theVersion"    # Ljava/lang/String;
    .param p2, "theScope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;"
    .local p3, "theRule":Lca/uhn/hl7v2/validation/Rule;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/validation/impl/RuleBinding;->myActiveFlag:Z

    .line 61
    iput-object p1, p0, Lca/uhn/hl7v2/validation/impl/RuleBinding;->myVersion:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lca/uhn/hl7v2/validation/impl/RuleBinding;->myScope:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lca/uhn/hl7v2/validation/impl/RuleBinding;->myRule:Lca/uhn/hl7v2/validation/Rule;

    .line 64
    return-void
.end method

.method protected static applies(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "theBindingData"    # Ljava/lang/String;
    .param p1, "theItemData"    # Ljava/lang/String;

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public appliesToScope(Ljava/lang/String;)Z
    .locals 1
    .param p1, "theType"    # Ljava/lang/String;

    .line 125
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/impl/RuleBinding;->getScope()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lca/uhn/hl7v2/validation/impl/RuleBinding;->applies(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public appliesToVersion(Ljava/lang/String;)Z
    .locals 1
    .param p1, "theVersion"    # Ljava/lang/String;

    .line 115
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/impl/RuleBinding;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lca/uhn/hl7v2/validation/impl/RuleBinding;->applies(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getActive()Z
    .locals 1

    .line 70
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;"
    iget-boolean v0, p0, Lca/uhn/hl7v2/validation/impl/RuleBinding;->myActiveFlag:Z

    return v0
.end method

.method public getRule()Lca/uhn/hl7v2/validation/Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/RuleBinding;->myRule:Lca/uhn/hl7v2/validation/Rule;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 97
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/RuleBinding;->myScope:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 85
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/RuleBinding;->myVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .line 78
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;"
    iput-boolean p1, p0, Lca/uhn/hl7v2/validation/impl/RuleBinding;->myActiveFlag:Z

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleBinding;, "Lca/uhn/hl7v2/validation/impl/RuleBinding<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/impl/RuleBinding;->myRule:Lca/uhn/hl7v2/validation/Rule;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/impl/RuleBinding;->myScope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/impl/RuleBinding;->myVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
