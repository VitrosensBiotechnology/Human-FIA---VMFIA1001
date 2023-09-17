.class Lca/uhn/hl7v2/validation/impl/XMLSchemaRule$ErrorHandler;
.super Ljava/lang/Object;
.source "XMLSchemaRule.java"

# interfaces
.implements Lorg/w3c/dom/DOMErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorHandler"
.end annotation


# instance fields
.field private validationErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/ValidationException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/ValidationException;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "validationErrors":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/ValidationException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule$ErrorHandler;->validationErrors:Ljava/util/List;

    .line 86
    return-void
.end method

.method private getSeverity(Lorg/w3c/dom/DOMError;)Ljava/lang/String;
    .locals 1
    .param p1, "error"    # Lorg/w3c/dom/DOMError;

    .line 94
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getSeverity()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    const-string v0, "FATAL ERROR: "

    return-object v0

    .line 98
    :pswitch_0
    const-string v0, "ERROR: "

    return-object v0

    .line 96
    :pswitch_1
    const-string v0, "WARNING: "

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleError(Lorg/w3c/dom/DOMError;)Z
    .locals 4
    .param p1, "error"    # Lorg/w3c/dom/DOMError;

    .line 89
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule$ErrorHandler;->validationErrors:Ljava/util/List;

    new-instance v1, Lca/uhn/hl7v2/validation/ValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule$ErrorHandler;->getSeverity(Lorg/w3c/dom/DOMError;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const/4 v0, 0x1

    return v0
.end method
