.class public abstract Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;
.super Lca/uhn/hl7v2/HapiContextSupport;
.source "AbstractValidationExceptionHandler.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/ValidationExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lca/uhn/hl7v2/HapiContextSupport;",
        "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$ca$uhn$hl7v2$Severity:[I


# instance fields
.field private subject:Ljava/lang/Object;


# direct methods
.method static synthetic $SWITCH_TABLE$ca$uhn$hl7v2$Severity()[I
    .locals 3

    .line 37
    sget-object v0, Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;->$SWITCH_TABLE$ca$uhn$hl7v2$Severity:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lca/uhn/hl7v2/Severity;->values()[Lca/uhn/hl7v2/Severity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Severity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v1, Lca/uhn/hl7v2/Severity;->INFO:Lca/uhn/hl7v2/Severity;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Severity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Lca/uhn/hl7v2/Severity;->WARNING:Lca/uhn/hl7v2/Severity;

    invoke-virtual {v1}, Lca/uhn/hl7v2/Severity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    sput-object v0, Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;->$SWITCH_TABLE$ca$uhn$hl7v2$Severity:[I

    return-object v0
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 0
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 46
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler<TR;>;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/HapiContextSupport;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 47
    return-void
.end method


# virtual methods
.method public error(Lca/uhn/hl7v2/validation/ValidationException;)V
    .locals 0
    .param p1, "exception"    # Lca/uhn/hl7v2/validation/ValidationException;

    .line 69
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler<TR;>;"
    return-void
.end method

.method public getValidationSubject()Ljava/lang/Object;
    .locals 1

    .line 98
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler<TR;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;->subject:Ljava/lang/Object;

    return-object v0
.end method

.method public info(Lca/uhn/hl7v2/validation/ValidationException;)V
    .locals 0
    .param p1, "exception"    # Lca/uhn/hl7v2/validation/ValidationException;

    .line 81
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler<TR;>;"
    return-void
.end method

.method public varargs onExceptions([Lca/uhn/hl7v2/validation/ValidationException;)V
    .locals 5
    .param p1, "exceptions"    # [Lca/uhn/hl7v2/validation/ValidationException;

    .line 50
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler<TR;>;"
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    .line 63
    return-void

    .line 50
    :cond_0
    aget-object v2, p1, v0

    .line 51
    .local v2, "ve":Lca/uhn/hl7v2/validation/ValidationException;
    invoke-static {}, Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;->$SWITCH_TABLE$ca$uhn$hl7v2$Severity()[I

    move-result-object v3

    invoke-virtual {v2}, Lca/uhn/hl7v2/validation/ValidationException;->getSeverity()Lca/uhn/hl7v2/Severity;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/Severity;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 51
    .end local v2    # "ve":Lca/uhn/hl7v2/validation/ValidationException;
    goto :goto_1

    .line 53
    .restart local v2    # "ve":Lca/uhn/hl7v2/validation/ValidationException;
    :pswitch_0
    invoke-virtual {p0, v2}, Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;->error(Lca/uhn/hl7v2/validation/ValidationException;)V

    .line 54
    goto :goto_1

    .line 59
    :pswitch_1
    invoke-virtual {p0, v2}, Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;->warning(Lca/uhn/hl7v2/validation/ValidationException;)V

    .line 59
    .end local v2    # "ve":Lca/uhn/hl7v2/validation/ValidationException;
    goto :goto_1

    .line 56
    .restart local v2    # "ve":Lca/uhn/hl7v2/validation/ValidationException;
    :pswitch_2
    invoke-virtual {p0, v2}, Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;->info(Lca/uhn/hl7v2/validation/ValidationException;)V

    .line 57
    nop

    .line 50
    .end local v2    # "ve":Lca/uhn/hl7v2/validation/ValidationException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValidationSubject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/Object;

    .line 91
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler<TR;>;"
    iput-object p1, p0, Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;->subject:Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public warning(Lca/uhn/hl7v2/validation/ValidationException;)V
    .locals 0
    .param p1, "exception"    # Lca/uhn/hl7v2/validation/ValidationException;

    .line 75
    .local p0, "this":Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler;, "Lca/uhn/hl7v2/validation/AbstractValidationExceptionHandler<TR;>;"
    return-void
.end method
