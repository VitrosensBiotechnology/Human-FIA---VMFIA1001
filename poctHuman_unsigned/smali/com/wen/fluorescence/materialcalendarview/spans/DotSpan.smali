.class public Lcom/wen/fluorescence/materialcalendarview/spans/DotSpan;
.super Ljava/lang/Object;
.source "DotSpan.java"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;


# static fields
.field public static final DEFAULT_RADIUS:F = 3.0f


# instance fields
.field private final color:I

.field private final radius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/spans/DotSpan;->radius:F

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/spans/DotSpan;->color:I

    .line 29
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/spans/DotSpan;->radius:F

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/spans/DotSpan;->color:I

    .line 52
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0
    .param p1, "radius"    # F
    .param p2, "color"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/spans/DotSpan;->radius:F

    .line 62
    iput p2, p0, Lcom/wen/fluorescence/materialcalendarview/spans/DotSpan;->color:I

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/spans/DotSpan;->radius:F

    .line 40
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/spans/DotSpan;->color:I

    .line 41
    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "charSequence"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "lineNum"    # I

    .line 72
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 73
    .local v0, "oldColor":I
    iget v1, p0, Lcom/wen/fluorescence/materialcalendarview/spans/DotSpan;->color:I

    if-eqz v1, :cond_0

    .line 74
    iget v1, p0, Lcom/wen/fluorescence/materialcalendarview/spans/DotSpan;->color:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    :cond_0
    add-int v1, p3, p4

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v2, p7

    iget v3, p0, Lcom/wen/fluorescence/materialcalendarview/spans/DotSpan;->radius:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/wen/fluorescence/materialcalendarview/spans/DotSpan;->radius:F

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    return-void
.end method
