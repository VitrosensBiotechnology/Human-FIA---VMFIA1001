.class Lcom/wen/fluorescence/util/MyDateSelector$4;
.super Ljava/lang/Object;
.source "MyDateSelector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/util/MyDateSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/util/MyDateSelector;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/util/MyDateSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/util/MyDateSelector;

    .line 168
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyDateSelector$4;->this$0:Lcom/wen/fluorescence/util/MyDateSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->getInstance()Lcom/wen/fluorescence/Thread/SetTimeLongTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/SetTimeLongTimer;->setTimerCancel()V

    .line 178
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
