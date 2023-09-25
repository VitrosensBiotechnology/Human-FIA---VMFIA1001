.class public Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "DateTimerPickerListener.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private selectDate(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 35
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 37
    new-instance v1, Lcom/wen/fluorescence/util/MyDateTimeSelector;

    invoke-direct {v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;-><init>()V

    .line 38
    .local v1, "selector":Lcom/wen/fluorescence/util/MyDateTimeSelector;
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener$1;

    invoke-direct {v3, p0, p1}, Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener$1;-><init>(Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->show(Landroid/content/Context;Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .line 29
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/DateTimerPickerListener;->selectDate(Landroid/view/View;)V

    .line 31
    return-void
.end method
