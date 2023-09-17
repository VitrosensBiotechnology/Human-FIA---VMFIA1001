.class public Lcom/wen/fluorescence/database/QCItem;
.super Ljava/lang/Object;
.source "QCItem.java"


# instance fields
.field private item:Ljava/lang/String;

.field private max:Ljava/lang/String;

.field private min:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/wen/fluorescence/database/QCItem;->item:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/wen/fluorescence/database/QCItem;->max:Ljava/lang/String;

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/wen/fluorescence/database/QCItem;->min:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/wen/fluorescence/database/QCItem;->status:I

    return v0
.end method

.method public setItem(Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/wen/fluorescence/database/QCItem;->item:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public setMax(Ljava/lang/String;)V
    .locals 0
    .param p1, "max"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/wen/fluorescence/database/QCItem;->max:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setMin(Ljava/lang/String;)V
    .locals 0
    .param p1, "min"    # Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/wen/fluorescence/database/QCItem;->min:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 29
    iput p1, p0, Lcom/wen/fluorescence/database/QCItem;->status:I

    .line 30
    return-void
.end method
