.class public Lcom/wen/fluorescence/util/QualitativeItem;
.super Ljava/lang/Object;
.source "QualitativeItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DealQualitativeResult(Landroid/content/Context;DD)Ljava/lang/String;
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "kValue"    # D
    .param p4, "thresholdValue"    # D

    .line 18
    const-string v0, ""

    .line 19
    .local v0, "sResult":Ljava/lang/String;
    cmpg-double v1, p2, p4

    if-gez v1, :cond_0

    .line 20
    const v1, 0x7f0c00ac

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_0
    cmpl-double v1, p2, p4

    if-ltz v1, :cond_1

    .line 22
    const v1, 0x7f0c0116

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    :cond_1
    :goto_0
    return-object v0
.end method
