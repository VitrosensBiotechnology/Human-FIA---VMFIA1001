.class Lcom/wen/fluorescence/util/MyDateTimeSelector$4;
.super Ljava/lang/Object;
.source "MyDateTimeSelector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/util/MyDateTimeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 206
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector$4;->this$0:Lcom/wen/fluorescence/util/MyDateTimeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 209
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerCancel()V

    .line 216
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
