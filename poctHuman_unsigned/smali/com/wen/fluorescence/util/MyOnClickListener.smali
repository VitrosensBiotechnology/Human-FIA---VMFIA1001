.class public Lcom/wen/fluorescence/util/MyOnClickListener;
.super Ljava/lang/Object;
.source "MyOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 9
    invoke-static {}, Lcom/wen/fluorescence/util/DoubleClick;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    return-void
.end method
