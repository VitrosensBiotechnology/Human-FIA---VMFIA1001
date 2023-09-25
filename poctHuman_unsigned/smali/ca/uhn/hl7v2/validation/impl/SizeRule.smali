.class public Lca/uhn/hl7v2/validation/impl/SizeRule;
.super Lca/uhn/hl7v2/validation/impl/AbstractPrimitiveTypeRule;
.source "SizeRule.java"


# instance fields
.field private myMaxChars:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "theMaxChars"    # I

    .line 47
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/AbstractPrimitiveTypeRule;-><init>()V

    .line 48
    iput p1, p0, Lca/uhn/hl7v2/validation/impl/SizeRule;->myMaxChars:I

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/impl/SizeRule;->apply(Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lca/uhn/hl7v2/validation/impl/SizeRule;->myMaxChars:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/validation/impl/SizeRule;->result(ZLjava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%s exceeds the maximum size of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lca/uhn/hl7v2/validation/impl/SizeRule;->myMaxChars:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " characters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
