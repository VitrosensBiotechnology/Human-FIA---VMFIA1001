.class public Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;
.super Ljava/lang/Object;
.source "ReportingValidationExceptionHandler.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/ValidationExceptionHandler;
.implements Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/validation/ValidationExceptionHandler<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$ca$uhn$hl7v2$Severity:[I

.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private firstException:Lca/uhn/hl7v2/validation/ValidationException;

.field private throwFirstException:Z


# direct methods
.method static synthetic $SWITCH_TABLE$ca$uhn$hl7v2$Severity()[I
    .locals 3

    .line 43
    sget-object v0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->$SWITCH_TABLE$ca$uhn$hl7v2$Severity:[I

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
    sput-object v0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->$SWITCH_TABLE$ca$uhn$hl7v2$Severity:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 46
    sput-object v0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->LOG:Lorg/slf4j/Logger;

    .line 47
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "throwFirstException"    # Z

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean p1, p0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->throwFirstException:Z

    .line 56
    return-void
.end method


# virtual methods
.method public getNewInstance(Lca/uhn/hl7v2/HapiContext;)Lca/uhn/hl7v2/validation/ValidationExceptionHandler;
    .locals 2
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

    .line 94
    new-instance v0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;

    iget-boolean v1, p0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->throwFirstException:Z

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;-><init>(Z)V

    return-object v0
.end method

.method public hasFailed()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->firstException:Lca/uhn/hl7v2/validation/ValidationException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public varargs onExceptions([Lca/uhn/hl7v2/validation/ValidationException;)V
    .locals 5
    .param p1, "exceptions"    # [Lca/uhn/hl7v2/validation/ValidationException;

    .line 64
    iget-object v0, p0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->firstException:Lca/uhn/hl7v2/validation/ValidationException;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    aget-object v0, p1, v1

    iput-object v0, p0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->firstException:Lca/uhn/hl7v2/validation/ValidationException;

    .line 66
    :cond_0
    array-length v0, p1

    :goto_0
    if-lt v1, v0, :cond_1

    .line 73
    return-void

    .line 66
    :cond_1
    aget-object v2, p1, v1

    .line 67
    .local v2, "ve":Lca/uhn/hl7v2/validation/ValidationException;
    invoke-static {}, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->$SWITCH_TABLE$ca$uhn$hl7v2$Severity()[I

    move-result-object v3

    invoke-virtual {v2}, Lca/uhn/hl7v2/validation/ValidationException;->getSeverity()Lca/uhn/hl7v2/Severity;

    move-result-object v4

    invoke-virtual {v4}, Lca/uhn/hl7v2/Severity;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 67
    .end local v2    # "ve":Lca/uhn/hl7v2/validation/ValidationException;
    goto :goto_1

    .line 68
    .restart local v2    # "ve":Lca/uhn/hl7v2/validation/ValidationException;
    :pswitch_0
    sget-object v3, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Invalid message"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 69
    :pswitch_1
    sget-object v3, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Message with warnings"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 70
    :pswitch_2
    sget-object v3, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Message with comments"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v2    # "ve":Lca/uhn/hl7v2/validation/ValidationException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public result()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->hasFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->throwFirstException:Z

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    iget-object v1, p0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->firstException:Lca/uhn/hl7v2/validation/ValidationException;

    invoke-virtual {v1}, Lca/uhn/hl7v2/validation/ValidationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->firstException:Lca/uhn/hl7v2/validation/ValidationException;

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->hasFailed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

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
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;->result()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setValidationSubject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/Object;

    .line 101
    return-void
.end method
