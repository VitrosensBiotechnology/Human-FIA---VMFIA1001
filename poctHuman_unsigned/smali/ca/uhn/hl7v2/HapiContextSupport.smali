.class public abstract Lca/uhn/hl7v2/HapiContextSupport;
.super Ljava/lang/Object;
.source "HapiContextSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;
    }
.end annotation


# instance fields
.field private context:Lca/uhn/hl7v2/HapiContext;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 0
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lca/uhn/hl7v2/HapiContextSupport;->context:Lca/uhn/hl7v2/HapiContext;

    .line 58
    return-void
.end method

.method private static unmodifiableContext(Lca/uhn/hl7v2/HapiContext;)Lca/uhn/hl7v2/HapiContext;
    .locals 1
    .param p0, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 85
    new-instance v0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    return-object v0
.end method


# virtual methods
.method public final getHapiContext()Lca/uhn/hl7v2/HapiContext;
    .locals 1

    .line 64
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-static {v0}, Lca/uhn/hl7v2/HapiContextSupport;->unmodifiableContext(Lca/uhn/hl7v2/HapiContext;)Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    return-object v0
.end method

.method protected setHapiContext(Lca/uhn/hl7v2/HapiContext;)V
    .locals 0
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 74
    iput-object p1, p0, Lca/uhn/hl7v2/HapiContextSupport;->context:Lca/uhn/hl7v2/HapiContext;

    .line 75
    return-void
.end method
