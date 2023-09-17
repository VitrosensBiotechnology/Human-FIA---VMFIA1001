.class public Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;
.super Landroid/app/Dialog;
.source "MyCustomDialog.java"


# static fields
.field private static default_height:I

.field private static default_width:I


# instance fields
.field private density:F

.field private height:I

.field private view:Landroid/view/View;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/16 v0, 0x118

    sput v0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->default_width:I

    .line 15
    const/16 v0, 0xb4

    sput v0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->default_height:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 18
    sget v0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->default_width:I

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->width:I

    .line 19
    sget v0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->default_height:I

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->height:I

    .line 35
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->getDensity(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->density:F

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .line 39
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 18
    sget v0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->default_width:I

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->width:I

    .line 19
    sget v0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->default_height:I

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->height:I

    .line 40
    iput-object p2, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->view:Landroid/view/View;

    .line 41
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->getDensity(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->density:F

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "theme"    # I

    .line 46
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    sget v0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->default_width:I

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->width:I

    .line 19
    sget v0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->default_height:I

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->height:I

    .line 47
    iput-object p2, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->view:Landroid/view/View;

    .line 48
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->getDensity(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->density:F

    .line 49
    return-void
.end method

.method private getDensity(Landroid/content/Context;)F
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 54
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    return v2
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->width:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 23
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 24
    iget-object v0, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->setContentView(Landroid/view/View;)V

    .line 25
    invoke-virtual {p0}, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 26
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 27
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->width:I

    int-to-float v2, v2

    iget v3, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 28
    iget v2, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 29
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 31
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 70
    iput p1, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->height:I

    .line 71
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 62
    iput p1, p0, Lcom/wen/fluorescence/ViewUtil/MyCustomDialog;->width:I

    .line 63
    return-void
.end method
