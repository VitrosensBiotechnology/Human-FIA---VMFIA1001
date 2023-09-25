.class public Lca/uhn/hl7v2/validation/impl/SimpleValidationExceptionHandler;
.super Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;
.source "SimpleValidationExceptionHandler.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 0
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 45
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getNewInstance(Lca/uhn/hl7v2/HapiContext;)Lca/uhn/hl7v2/validation/ValidationExceptionHandler;
    .locals 1
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/HapiContext;",
            ")",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lca/uhn/hl7v2/validation/impl/SimpleValidationExceptionHandler;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/impl/SimpleValidationExceptionHandler;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    return-object v0
.end method

.method public result()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/impl/SimpleValidationExceptionHandler;->hasFailed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/impl/SimpleValidationExceptionHandler;->result()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
