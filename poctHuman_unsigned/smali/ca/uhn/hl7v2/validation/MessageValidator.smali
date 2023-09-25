.class public Lca/uhn/hl7v2/validation/MessageValidator;
.super Lca/uhn/hl7v2/validation/AbstractValidator;
.source "MessageValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/AbstractValidator<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private theFailOnErrorFlag:Z

.field private validationContext:Lca/uhn/hl7v2/validation/ValidationContext;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/validation/ValidationContext;)V
    .locals 1
    .param p1, "context"    # Lca/uhn/hl7v2/validation/ValidationContext;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/validation/MessageValidator;-><init>(Lca/uhn/hl7v2/validation/ValidationContext;Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/validation/ValidationContext;Z)V
    .locals 0
    .param p1, "theContext"    # Lca/uhn/hl7v2/validation/ValidationContext;
    .param p2, "theFailOnErrorFlag"    # Z

    .line 55
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/AbstractValidator;-><init>()V

    .line 56
    iput-object p1, p0, Lca/uhn/hl7v2/validation/MessageValidator;->validationContext:Lca/uhn/hl7v2/validation/ValidationContext;

    .line 57
    iput-boolean p2, p0, Lca/uhn/hl7v2/validation/MessageValidator;->theFailOnErrorFlag:Z

    .line 58
    return-void
.end method


# virtual methods
.method protected getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;
    .locals 1

    .line 71
    iget-object v0, p0, Lca/uhn/hl7v2/validation/MessageValidator;->validationContext:Lca/uhn/hl7v2/validation/ValidationContext;

    return-object v0
.end method

.method protected initializeHandler()Lca/uhn/hl7v2/validation/ValidationExceptionHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;

    iget-boolean v1, p0, Lca/uhn/hl7v2/validation/MessageValidator;->theFailOnErrorFlag:Z

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;-><init>(Z)V

    return-object v0
.end method
