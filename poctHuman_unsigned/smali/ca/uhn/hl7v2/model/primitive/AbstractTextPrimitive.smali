.class public abstract Lca/uhn/hl7v2/model/primitive/AbstractTextPrimitive;
.super Lca/uhn/hl7v2/model/AbstractPrimitive;
.source "AbstractTextPrimitive.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 44
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractPrimitive;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getValueAsHtml()Ljava/lang/String;
    .locals 2

    .line 98
    invoke-static {}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->getInstanceHtml()Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;

    move-result-object v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/AbstractTextPrimitive;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/model/primitive/FormattedTextEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueOrEmpty()Ljava/lang/String;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/AbstractTextPrimitive;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "retVal":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 110
    const-string v0, ""

    .line 112
    :cond_0
    return-object v0
.end method
