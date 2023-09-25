.class public abstract Lca/uhn/hl7v2/validation/impl/RuleSupport;
.super Ljava/lang/Object;
.source "RuleSupport.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/Rule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/validation/Rule<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final PASSED:[Lca/uhn/hl7v2/validation/ValidationException;


# instance fields
.field private description:Ljava/lang/String;

.field private errorCode:Lca/uhn/hl7v2/ErrorCode;

.field private sectionReference:Ljava/lang/String;

.field private severity:Lca/uhn/hl7v2/Severity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/validation/ValidationException;

    sput-object v0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->PASSED:[Lca/uhn/hl7v2/validation/ValidationException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    iput-object v0, p0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->severity:Lca/uhn/hl7v2/Severity;

    .line 41
    sget-object v0, Lca/uhn/hl7v2/ErrorCode;->APPLICATION_INTERNAL_ERROR:Lca/uhn/hl7v2/ErrorCode;

    iput-object v0, p0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    .line 35
    return-void
.end method


# virtual methods
.method protected failed(Ljava/lang/Exception;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 74
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    sget-object v0, Lca/uhn/hl7v2/Location;->UNKNOWN:Lca/uhn/hl7v2/Location;

    invoke-virtual {p0, p1, v0}, Lca/uhn/hl7v2/validation/impl/RuleSupport;->failed(Ljava/lang/Exception;Lca/uhn/hl7v2/Location;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v0

    return-object v0
.end method

.method protected failed(Ljava/lang/Exception;Lca/uhn/hl7v2/Location;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;

    .line 78
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    instance-of v0, p1, Lca/uhn/hl7v2/validation/ValidationException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 79
    new-array v0, v2, [Lca/uhn/hl7v2/validation/ValidationException;

    move-object v2, p1

    check-cast v2, Lca/uhn/hl7v2/validation/ValidationException;

    aput-object v2, v0, v1

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/validation/ValidationException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->severity:Lca/uhn/hl7v2/Severity;

    invoke-direct {v0, v3, p1, v4}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lca/uhn/hl7v2/Severity;)V

    .line 81
    .local v0, "ve":Lca/uhn/hl7v2/validation/ValidationException;
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/impl/RuleSupport;->getErrorCode()Lca/uhn/hl7v2/ErrorCode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/validation/ValidationException;->setError(Lca/uhn/hl7v2/ErrorCode;)V

    .line 82
    invoke-virtual {v0, p2}, Lca/uhn/hl7v2/validation/ValidationException;->setLocation(Lca/uhn/hl7v2/Location;)V

    .line 83
    new-array v2, v2, [Lca/uhn/hl7v2/validation/ValidationException;

    aput-object v0, v2, v1

    return-object v2
.end method

.method protected failed(Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 62
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    sget-object v0, Lca/uhn/hl7v2/Location;->UNKNOWN:Lca/uhn/hl7v2/Location;

    invoke-virtual {p0, p1, v0}, Lca/uhn/hl7v2/validation/impl/RuleSupport;->failed(Ljava/lang/String;Lca/uhn/hl7v2/Location;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v0

    return-object v0
.end method

.method protected failed(Ljava/lang/String;Lca/uhn/hl7v2/Location;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;

    .line 67
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    new-instance v0, Lca/uhn/hl7v2/validation/ValidationException;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->severity:Lca/uhn/hl7v2/Severity;

    invoke-direct {v0, p1, v1}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/Severity;)V

    .line 68
    .local v0, "ve":Lca/uhn/hl7v2/validation/ValidationException;
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/impl/RuleSupport;->getErrorCode()Lca/uhn/hl7v2/ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/ValidationException;->setError(Lca/uhn/hl7v2/ErrorCode;)V

    .line 69
    invoke-virtual {v0, p2}, Lca/uhn/hl7v2/validation/ValidationException;->setLocation(Lca/uhn/hl7v2/Location;)V

    .line 70
    const/4 v1, 0x1

    new-array v1, v1, [Lca/uhn/hl7v2/validation/ValidationException;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method protected failedWithValue(Ljava/lang/Object;Lca/uhn/hl7v2/Location;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;

    .line 56
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/impl/RuleSupport;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "description":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Validation failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lca/uhn/hl7v2/validation/impl/RuleSupport;->failed(Ljava/lang/String;Lca/uhn/hl7v2/Location;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v2

    return-object v2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 97
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Lca/uhn/hl7v2/ErrorCode;
    .locals 1

    .line 111
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    return-object v0
.end method

.method public getSectionReference()Ljava/lang/String;
    .locals 1

    .line 90
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->sectionReference:Ljava/lang/String;

    return-object v0
.end method

.method public getSeverity()Lca/uhn/hl7v2/Severity;
    .locals 1

    .line 104
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->severity:Lca/uhn/hl7v2/Severity;

    return-object v0
.end method

.method protected passed()[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 1

    .line 52
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    sget-object v0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->PASSED:[Lca/uhn/hl7v2/validation/ValidationException;

    return-object v0
.end method

.method protected result(ZLjava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 1
    .param p1, "result"    # Z
    .param p2, "value"    # Ljava/lang/Object;

    .line 44
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    sget-object v0, Lca/uhn/hl7v2/Location;->UNKNOWN:Lca/uhn/hl7v2/Location;

    invoke-virtual {p0, p1, p2, v0}, Lca/uhn/hl7v2/validation/impl/RuleSupport;->result(ZLjava/lang/Object;Lca/uhn/hl7v2/Location;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v0

    return-object v0
.end method

.method protected result(ZLjava/lang/Object;Lca/uhn/hl7v2/Location;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 1
    .param p1, "result"    # Z
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "location"    # Lca/uhn/hl7v2/Location;

    .line 48
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/impl/RuleSupport;->passed()[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lca/uhn/hl7v2/validation/impl/RuleSupport;->failedWithValue(Ljava/lang/Object;Lca/uhn/hl7v2/Location;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 119
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    iput-object p1, p0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->description:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setErrorCode(Lca/uhn/hl7v2/ErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lca/uhn/hl7v2/ErrorCode;

    .line 127
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    iput-object p1, p0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->errorCode:Lca/uhn/hl7v2/ErrorCode;

    .line 128
    return-void
.end method

.method public setSectionReference(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionReference"    # Ljava/lang/String;

    .line 123
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    iput-object p1, p0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->sectionReference:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setSeverity(Lca/uhn/hl7v2/Severity;)V
    .locals 0
    .param p1, "severity"    # Lca/uhn/hl7v2/Severity;

    .line 115
    .local p0, "this":Lca/uhn/hl7v2/validation/impl/RuleSupport;, "Lca/uhn/hl7v2/validation/impl/RuleSupport<TT;>;"
    iput-object p1, p0, Lca/uhn/hl7v2/validation/impl/RuleSupport;->severity:Lca/uhn/hl7v2/Severity;

    .line 116
    return-void
.end method
