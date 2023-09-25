.class Lca/uhn/hl7v2/model/Unmodifiable$Delegating;
.super Ljava/lang/Object;
.source "Unmodifiable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/Unmodifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Delegating"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private delegate:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$Delegating;, "Lca/uhn/hl7v2/model/Unmodifiable$Delegating<TS;>;"
    .local p1, "delegate":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lca/uhn/hl7v2/model/Unmodifiable$Delegating;->delegate:Ljava/lang/Object;

    .line 130
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 151
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$Delegating;, "Lca/uhn/hl7v2/model/Unmodifiable$Delegating<TS;>;"
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 152
    :cond_0
    instance-of v0, p1, Lca/uhn/hl7v2/model/Unmodifiable$Delegating;

    if-eqz v0, :cond_1

    .line 153
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/model/Unmodifiable$Delegating;

    .line 154
    .local v0, "that":Lca/uhn/hl7v2/model/Unmodifiable$Delegating;
    iget-object v1, p0, Lca/uhn/hl7v2/model/Unmodifiable$Delegating;->delegate:Ljava/lang/Object;

    iget-object v2, v0, Lca/uhn/hl7v2/model/Unmodifiable$Delegating;->delegate:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 156
    .end local v0    # "that":Lca/uhn/hl7v2/model/Unmodifiable$Delegating;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lca/uhn/hl7v2/model/Unmodifiable$Delegating;->delegate:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lca/uhn/hl7v2/model/Unmodifiable$Delegating;->delegate:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 159
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$Delegating;, "Lca/uhn/hl7v2/model/Unmodifiable$Delegating<TS;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/Unmodifiable$Delegating;->delegate:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 164
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$Delegating;, "Lca/uhn/hl7v2/model/Unmodifiable$Delegating<TS;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/Unmodifiable$Delegating;->delegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 138
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$Delegating;, "Lca/uhn/hl7v2/model/Unmodifiable$Delegating<TS;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/model/Unmodifiable$Delegating;->delegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
