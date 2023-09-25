.class Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$2;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

    .line 201
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 213
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 217
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .line 204
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->access$400(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/TitleChanger;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-static {v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->access$300(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/TitleChanger;->setPreviousMonth(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 205
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-static {v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->access$500(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->access$302(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 206
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->access$600(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V

    .line 208
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-static {v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->access$300(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchOnMonthChanged(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 209
    return-void
.end method
