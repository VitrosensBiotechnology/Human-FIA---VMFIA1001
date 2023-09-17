.class public abstract Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;
.super Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;
.source "CollectingValidationExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/ValidationException;",
            ">;"
        }
    .end annotation
.end field

.field private minimumSeverityToCollect:Lca/uhn/hl7v2/Severity;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 1
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 51
    .local p0, "this":Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler<TR;>;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;->exceptions:Ljava/util/List;

    .line 45
    sget-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    iput-object v0, p0, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;->minimumSeverityToCollect:Lca/uhn/hl7v2/Severity;

    .line 52
    return-void
.end method

.method private isSeverityAtLeast(Lca/uhn/hl7v2/Severity;)Z
    .locals 1
    .param p1, "s"    # Lca/uhn/hl7v2/Severity;

    .line 70
    .local p0, "this":Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler<TR;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;->getMinimumSeverityToCollect()Lca/uhn/hl7v2/Severity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lca/uhn/hl7v2/Severity;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public error(Lca/uhn/hl7v2/validation/ValidationException;)V
    .locals 1
    .param p1, "exception"    # Lca/uhn/hl7v2/validation/ValidationException;

    .line 56
    .local p0, "this":Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler<TR;>;"
    sget-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;->isSeverityAtLeast(Lca/uhn/hl7v2/Severity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;->exceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    return-void
.end method

.method public getExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/ValidationException;",
            ">;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler<TR;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;->exceptions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumSeverityToCollect()Lca/uhn/hl7v2/Severity;
    .locals 1

    .line 92
    .local p0, "this":Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler<TR;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;->minimumSeverityToCollect:Lca/uhn/hl7v2/Severity;

    return-object v0
.end method

.method public hasFailed()Z
    .locals 4

    .line 99
    .local p0, "this":Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler<TR;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/validation/ValidationException;

    .line 100
    .local v1, "ve":Lca/uhn/hl7v2/validation/ValidationException;
    invoke-virtual {v1}, Lca/uhn/hl7v2/validation/ValidationException;->getSeverity()Lca/uhn/hl7v2/Severity;

    move-result-object v2

    sget-object v3, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public info(Lca/uhn/hl7v2/validation/ValidationException;)V
    .locals 1
    .param p1, "exception"    # Lca/uhn/hl7v2/validation/ValidationException;

    .line 61
    .local p0, "this":Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler<TR;>;"
    sget-object v0, Lca/uhn/hl7v2/Severity;->INFO:Lca/uhn/hl7v2/Severity;

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;->isSeverityAtLeast(Lca/uhn/hl7v2/Severity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;->exceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    return-void
.end method

.method public setMinimumSeverityToCollect(Lca/uhn/hl7v2/Severity;)V
    .locals 0
    .param p1, "minimumSeverityToCollect"    # Lca/uhn/hl7v2/Severity;

    .line 85
    .local p0, "this":Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler<TR;>;"
    iput-object p1, p0, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;->minimumSeverityToCollect:Lca/uhn/hl7v2/Severity;

    .line 86
    return-void
.end method

.method public warning(Lca/uhn/hl7v2/validation/ValidationException;)V
    .locals 1
    .param p1, "exception"    # Lca/uhn/hl7v2/validation/ValidationException;

    .line 66
    .local p0, "this":Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler<TR;>;"
    sget-object v0, Lca/uhn/hl7v2/Severity;->WARNING:Lca/uhn/hl7v2/Severity;

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;->isSeverityAtLeast(Lca/uhn/hl7v2/Severity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/validation/CollectingValidationExceptionHandler;->exceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    return-void
.end method
