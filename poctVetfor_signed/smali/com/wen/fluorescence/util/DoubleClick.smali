.class public Lcom/wen/fluorescence/util/DoubleClick;
.super Ljava/lang/Object;
.source "DoubleClick.java"


# static fields
.field private static lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFastDoubleClick()Z
    .locals 7

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    .local v0, "time":J
    sget-wide v2, Lcom/wen/fluorescence/util/DoubleClick;->lastClickTime:J

    sub-long v4, v0, v2

    .line 8
    .local v4, "timeD":J
    const-wide/16 v2, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const-wide/16 v2, 0x320

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 9
    const/4 v2, 0x1

    return v2

    .line 11
    :cond_0
    sput-wide v0, Lcom/wen/fluorescence/util/DoubleClick;->lastClickTime:J

    .line 12
    const/4 v2, 0x0

    return v2
.end method
