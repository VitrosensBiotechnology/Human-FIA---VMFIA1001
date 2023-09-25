.class public Lcom/wen/fluorescence/util/PageUtils;
.super Ljava/lang/Object;
.source "PageUtils.java"


# instance fields
.field private pageNow:I

.field private pageSize:I

.field private pageTotal:I

.field private totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageNow()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/wen/fluorescence/util/PageUtils;->pageNow:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/wen/fluorescence/util/PageUtils;->pageSize:I

    return v0
.end method

.method public getPageTotal()I
    .locals 2

    .line 26
    iget v0, p0, Lcom/wen/fluorescence/util/PageUtils;->totalSize:I

    iget v1, p0, Lcom/wen/fluorescence/util/PageUtils;->pageSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/wen/fluorescence/util/PageUtils;->pageTotal:I

    .line 27
    iget v0, p0, Lcom/wen/fluorescence/util/PageUtils;->totalSize:I

    iget v1, p0, Lcom/wen/fluorescence/util/PageUtils;->pageSize:I

    rem-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 28
    iget v0, p0, Lcom/wen/fluorescence/util/PageUtils;->pageTotal:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/wen/fluorescence/util/PageUtils;->pageTotal:I

    .line 29
    :cond_0
    iget v0, p0, Lcom/wen/fluorescence/util/PageUtils;->pageTotal:I

    if-nez v0, :cond_1

    .line 30
    iput v1, p0, Lcom/wen/fluorescence/util/PageUtils;->pageTotal:I

    .line 31
    :cond_1
    iget v0, p0, Lcom/wen/fluorescence/util/PageUtils;->pageTotal:I

    return v0
.end method

.method public getTotalSize()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/wen/fluorescence/util/PageUtils;->totalSize:I

    return v0
.end method

.method public isHasNext()Z
    .locals 2

    .line 52
    iget v0, p0, Lcom/wen/fluorescence/util/PageUtils;->pageNow:I

    iget v1, p0, Lcom/wen/fluorescence/util/PageUtils;->pageTotal:I

    if-ge v0, v1, :cond_0

    .line 53
    const/4 v0, 0x1

    return v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHasPrev()Z
    .locals 2

    .line 40
    iget v0, p0, Lcom/wen/fluorescence/util/PageUtils;->pageNow:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 41
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_0
    return v1
.end method

.method public setPageNow(I)V
    .locals 0
    .param p1, "pageNow"    # I

    .line 22
    iput p1, p0, Lcom/wen/fluorescence/util/PageUtils;->pageNow:I

    .line 23
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .param p1, "pageSize"    # I

    .line 14
    iput p1, p0, Lcom/wen/fluorescence/util/PageUtils;->pageSize:I

    .line 15
    return-void
.end method

.method public setTotalSize(I)V
    .locals 0
    .param p1, "totalSize"    # I

    .line 63
    iput p1, p0, Lcom/wen/fluorescence/util/PageUtils;->totalSize:I

    .line 64
    return-void
.end method
