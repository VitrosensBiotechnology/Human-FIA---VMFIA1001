.class synthetic Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$4;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$wen$fluorescence$materialcalendarview$CalendarMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2071
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->values()[Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$4;->$SwitchMap$com$wen$fluorescence$materialcalendarview$CalendarMode:[I

    :try_start_0
    sget-object v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$4;->$SwitchMap$com$wen$fluorescence$materialcalendarview$CalendarMode:[I

    sget-object v1, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->MONTHS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$4;->$SwitchMap$com$wen$fluorescence$materialcalendarview$CalendarMode:[I

    sget-object v1, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->WEEKS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
