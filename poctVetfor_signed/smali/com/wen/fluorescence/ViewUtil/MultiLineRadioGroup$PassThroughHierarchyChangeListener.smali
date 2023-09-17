.class Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "MultiLineRadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;


# direct methods
.method private constructor <init>(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;
    .param p2, "x1"    # Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$1;

    .line 336
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;)V

    return-void
.end method

.method static synthetic access$202(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;
    .param p1, "x1"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 336
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    if-ne p1, v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    invoke-static {v0, p2}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->access$700(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 347
    .local v0, "btns":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RadioButton;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 349
    .local v2, "btn":Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v3

    .line 351
    .local v3, "id":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 352
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    .line 353
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setId(I)V

    .line 355
    :cond_0
    iget-object v4, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    .line 356
    invoke-static {v4}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->access$800(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v4

    .line 355
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 357
    .end local v2    # "btn":Landroid/widget/RadioButton;
    .end local v3    # "id":I
    goto :goto_0

    .line 361
    .end local v0    # "btns":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RadioButton;>;"
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 364
    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 370
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    if-ne p1, v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    invoke-static {v0, p2}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->access$700(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 372
    .local v0, "btns":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RadioButton;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 373
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 374
    .local v2, "btn":Landroid/widget/RadioButton;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 375
    .end local v2    # "btn":Landroid/widget/RadioButton;
    goto :goto_0

    .line 379
    .end local v0    # "btns":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RadioButton;>;"
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 382
    :cond_1
    return-void
.end method
