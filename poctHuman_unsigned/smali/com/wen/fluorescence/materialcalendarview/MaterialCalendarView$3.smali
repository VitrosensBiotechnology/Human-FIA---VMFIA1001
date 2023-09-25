.class Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$3;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 274
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 2
    .param p1, "page"    # Landroid/view/View;
    .param p2, "position"    # F

    .line 277
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p2, v0

    .line 278
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 279
    return-void
.end method
