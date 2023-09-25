.class public interface abstract Lcom/wen/fluorescence/materialcalendarview/OnRangeSelectedListener;
.super Ljava/lang/Object;
.source "OnRangeSelectedListener.java"


# virtual methods
.method public abstract onRangeSelected(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Ljava/util/List;)V
    .param p1    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/materialcalendarview/CalendarDay;",
            ">;)V"
        }
    .end annotation
.end method
