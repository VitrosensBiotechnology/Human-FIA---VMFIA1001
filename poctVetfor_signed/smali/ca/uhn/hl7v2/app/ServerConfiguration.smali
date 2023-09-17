.class public Lca/uhn/hl7v2/app/ServerConfiguration;
.super Ljava/lang/Object;
.source "ServerConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;
    }
.end annotation


# instance fields
.field private myApplicationExceptionPolicy:Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;->DEFAULT:Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    iput-object v0, p0, Lca/uhn/hl7v2/app/ServerConfiguration;->myApplicationExceptionPolicy:Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    .line 10
    return-void
.end method


# virtual methods
.method public getApplicationExceptionPolicy()Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;
    .locals 1

    .line 20
    iget-object v0, p0, Lca/uhn/hl7v2/app/ServerConfiguration;->myApplicationExceptionPolicy:Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    return-object v0
.end method

.method public setApplicationExceptionPolicy(Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;)V
    .locals 2
    .param p1, "applicationExceptionPolicy"    # Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Application Exception Policy must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/app/ServerConfiguration;->myApplicationExceptionPolicy:Lca/uhn/hl7v2/app/ServerConfiguration$ApplicationExceptionPolicy;

    .line 43
    return-void
.end method
