.class Lca/uhn/hl7v2/validation/builder/BuilderSupport$WithdrawnPredicate;
.super Lca/uhn/hl7v2/validation/builder/BuilderSupport$MaxLengthPredicate;
.source "BuilderSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/validation/builder/BuilderSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WithdrawnPredicate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/validation/builder/BuilderSupport$MaxLengthPredicate;-><init>(I)V

    .line 365
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 369
    const-string v0, "empty because it is withdrawn from the current HL7 version and should not be used"

    return-object v0
.end method
