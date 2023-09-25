.class public Lca/uhn/hl7v2/validation/DefaultValidator;
.super Lca/uhn/hl7v2/validation/AbstractValidator;
.source "DefaultValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lca/uhn/hl7v2/validation/AbstractValidator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private context:Lca/uhn/hl7v2/HapiContext;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 0
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 46
    .local p0, "this":Lca/uhn/hl7v2/validation/DefaultValidator;, "Lca/uhn/hl7v2/validation/DefaultValidator<TR;>;"
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/AbstractValidator;-><init>()V

    .line 47
    iput-object p1, p0, Lca/uhn/hl7v2/validation/DefaultValidator;->context:Lca/uhn/hl7v2/HapiContext;

    .line 48
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/validation/ValidationContext;)V
    .locals 1
    .param p1, "validationContext"    # Lca/uhn/hl7v2/validation/ValidationContext;

    .line 51
    .local p0, "this":Lca/uhn/hl7v2/validation/DefaultValidator;, "Lca/uhn/hl7v2/validation/DefaultValidator<TR;>;"
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/validation/ValidationContext;)V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/validation/DefaultValidator;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V
    .locals 1
    .param p1, "builder"    # Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    .line 55
    .local p0, "this":Lca/uhn/hl7v2/validation/DefaultValidator;, "Lca/uhn/hl7v2/validation/DefaultValidator<TR;>;"
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/validation/DefaultValidator;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;
    .locals 1

    .line 59
    .local p0, "this":Lca/uhn/hl7v2/validation/DefaultValidator;, "Lca/uhn/hl7v2/validation/DefaultValidator<TR;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/DefaultValidator;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v0

    return-object v0
.end method

.method protected initializeHandler()Lca/uhn/hl7v2/validation/ValidationExceptionHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
            "TR;>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lca/uhn/hl7v2/validation/DefaultValidator;, "Lca/uhn/hl7v2/validation/DefaultValidator<TR;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/DefaultValidator;->context:Lca/uhn/hl7v2/HapiContext;

    .line 73
    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getValidationExceptionHandlerFactory()Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;

    move-result-object v0

    .line 72
    nop

    .line 74
    .local v0, "validationExceptionHandlerFactory":Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<TR;>;"
    iget-object v1, p0, Lca/uhn/hl7v2/validation/DefaultValidator;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;->getNewInstance(Lca/uhn/hl7v2/HapiContext;)Lca/uhn/hl7v2/validation/ValidationExceptionHandler;

    move-result-object v1

    return-object v1
.end method
