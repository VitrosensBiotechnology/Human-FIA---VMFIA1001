.class final Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$8;
.super Ljava/lang/Object;
.source "SimpleDialogs.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;->selectDate(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ExportMode:I

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$8;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$8;->val$ExportMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveDateTime(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/PublicFuction;->addZeroForNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/PublicFuction;->addZeroForNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "date":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$8;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$8;->val$ExportMode:I

    invoke-static {v1, v2, v0, v3}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;->access$000(Landroid/content/Context;ILjava/lang/String;I)V

    .line 167
    return-void
.end method
