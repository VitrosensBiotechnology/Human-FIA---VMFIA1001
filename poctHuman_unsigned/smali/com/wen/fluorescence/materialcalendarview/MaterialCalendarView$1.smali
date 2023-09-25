.class Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
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

    .line 190
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->access$000(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->access$100(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-static {v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->access$100(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->access$200(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->access$100(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    move-result-object v0

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-static {v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->access$100(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    .line 198
    :cond_1
    :goto_0
    return-void
.end method
