.class public Lca/uhn/hl7v2/util/idgenerator/FileBasedHiLoGenerator;
.super Lca/uhn/hl7v2/util/idgenerator/DelegatingHiLoGenerator;
.source "FileBasedHiLoGenerator.java"


# static fields
.field public static final DEFAULT_MAXLO:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/util/idgenerator/FileBasedHiLoGenerator;-><init>(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxLo"    # I

    .line 44
    new-instance v0, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/idgenerator/FileBasedGenerator;-><init>(I)V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/util/idgenerator/DelegatingHiLoGenerator;-><init>(Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;)V

    .line 45
    return-void
.end method
