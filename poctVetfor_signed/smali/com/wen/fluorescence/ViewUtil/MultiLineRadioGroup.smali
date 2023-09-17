.class public Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;
.super Landroid/widget/LinearLayout;
.source "MultiLineRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;,
        Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$CheckedStateTracker;,
        Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$OnCheckedChangeListener;,
        Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mProtectFromCheckedChange:Z

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->setOrientation(I)V

    .line 35
    invoke-direct {p0}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mProtectFromCheckedChange:Z

    .line 43
    invoke-direct {p0}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->init()V

    .line 44
    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    .line 19
    iget-boolean v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$302(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    .line 19
    iget v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;
    .param p1, "x1"    # I

    .line 19
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;Landroid/view/View;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;
    .param p1, "x1"    # Landroid/view/View;

    .line 19
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->getAllRadioButton(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    .line 19
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private getAllRadioButton(Landroid/view/View;)Ljava/util/List;
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "btns":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RadioButton;>;"
    instance-of v1, p1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 108
    move-object v1, p1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 110
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 111
    .local v1, "counts":I
    const/4 v2, 0x0

    .line 111
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 112
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->getAllRadioButton(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "counts":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method private init()V
    .locals 2

    .line 47
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$CheckedStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$CheckedStateTracker;-><init>(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$1;)V

    iput-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 48
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$1;)V

    iput-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mPassThroughListener:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mPassThroughListener:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 50
    return-void
.end method

.method private setCheckedId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 145
    iput p1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    .line 146
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mOnCheckedChangeListener:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mOnCheckedChangeListener:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$OnCheckedChangeListener;

    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    invoke-interface {v0, p0, v1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;I)V

    .line 149
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .line 152
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "checkedView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 154
    move-object v1, v0

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 84
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->getAllRadioButton(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "btns":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RadioButton;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 87
    .local v2, "button":Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mProtectFromCheckedChange:Z

    .line 89
    iget v3, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    .line 90
    iget v3, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    invoke-direct {p0, v3, v5}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->setCheckedStateForView(IZ)V

    .line 92
    :cond_0
    iput-boolean v5, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mProtectFromCheckedChange:Z

    .line 93
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->setCheckedId(I)V

    .line 95
    .end local v2    # "button":Landroid/widget/RadioButton;
    :cond_1
    goto :goto_0

    .line 97
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method

.method public check(I)V
    .locals 3
    .param p1, "id"    # I

    .line 129
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    if-ne p1, v1, :cond_0

    .line 130
    return-void

    .line 133
    :cond_0
    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    if-eq v1, v0, :cond_1

    .line 134
    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->setCheckedStateForView(IZ)V

    .line 137
    :cond_1
    if-eq p1, v0, :cond_2

    .line 138
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->setCheckedStateForView(IZ)V

    .line 141
    :cond_2
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->setCheckedId(I)V

    .line 142
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 206
    instance-of v0, p1, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    .line 180
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->check(I)V

    .line 181
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 211
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 198
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 216
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 217
    const-class v0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 222
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 223
    const-class v0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method

.method public setCheckWithoutNotif(I)V
    .locals 4
    .param p1, "id"    # I

    .line 65
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    if-ne p1, v1, :cond_0

    .line 66
    return-void

    .line 69
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mProtectFromCheckedChange:Z

    .line 70
    iget v2, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    const/4 v3, 0x0

    if-eq v2, v0, :cond_1

    .line 71
    iget v2, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    invoke-direct {p0, v2, v3}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->setCheckedStateForView(IZ)V

    .line 74
    :cond_1
    if-eq p1, v0, :cond_2

    .line 75
    invoke-direct {p0, p1, v1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->setCheckedStateForView(IZ)V

    .line 78
    :cond_2
    iput p1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mCheckedId:I

    .line 79
    iput-boolean v3, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mProtectFromCheckedChange:Z

    .line 80
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$OnCheckedChangeListener;

    .line 190
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mOnCheckedChangeListener:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$OnCheckedChangeListener;

    .line 191
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 58
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;->mPassThroughListener:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 59
    return-void
.end method
