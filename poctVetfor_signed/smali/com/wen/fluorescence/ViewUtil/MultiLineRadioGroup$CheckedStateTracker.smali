.class Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "MultiLineRadioGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;


# direct methods
.method private constructor <init>(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$CheckedStateTracker;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;
    .param p2, "x1"    # Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$1;

    .line 313
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$CheckedStateTracker;-><init>(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 316
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$CheckedStateTracker;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    invoke-static {v0}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->access$300(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$CheckedStateTracker;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->access$302(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;Z)Z

    .line 321
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$CheckedStateTracker;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    invoke-static {v0}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->access$400(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 322
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$CheckedStateTracker;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    iget-object v1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$CheckedStateTracker;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    invoke-static {v1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->access$400(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->access$500(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;IZ)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$CheckedStateTracker;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    invoke-static {v0, v2}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->access$302(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;Z)Z

    .line 326
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 327
    .local v0, "id":I
    iget-object v1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$CheckedStateTracker;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    invoke-static {v1, v0}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->access$600(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;I)V

    .line 328
    return-void
.end method
