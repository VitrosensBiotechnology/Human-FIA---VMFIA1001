.class public Lca/uhn/hl7v2/validation/DefaultValidationExceptionHandler;
.super Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;
.source "DefaultValidationExceptionHandler.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v0}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/validation/DefaultValidationExceptionHandler;->result:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 1
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 48
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/validation/DefaultValidationExceptionHandler;->result:Z

    .line 49
    return-void
.end method


# virtual methods
.method public error(Lca/uhn/hl7v2/validation/ValidationException;)V
    .locals 1
    .param p1, "exception"    # Lca/uhn/hl7v2/validation/ValidationException;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/validation/DefaultValidationExceptionHandler;->result:Z

    .line 58
    return-void
.end method

.method public getNewInstance(Lca/uhn/hl7v2/HapiContext;)Lca/uhn/hl7v2/validation/ValidationExceptionHandler;
    .locals 1
    .param p1, "theContext"    # Lca/uhn/hl7v2/HapiContext;
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

    .line 79
    new-instance v0, Lca/uhn/hl7v2/validation/DefaultValidationExceptionHandler;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/validation/DefaultValidationExceptionHandler;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    return-object v0
.end method

.method public hasFailed()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lca/uhn/hl7v2/validation/DefaultValidationExceptionHandler;->result:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public result()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 71
    iget-boolean v0, p0, Lca/uhn/hl7v2/validation/DefaultValidationExceptionHandler;->result:Z

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
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/DefaultValidationExceptionHandler;->result()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
