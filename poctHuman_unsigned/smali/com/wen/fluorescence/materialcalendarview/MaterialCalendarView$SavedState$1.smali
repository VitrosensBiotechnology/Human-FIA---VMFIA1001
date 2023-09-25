.class final Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState$1;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1232
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;-><init>(Landroid/os/Parcel;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1230
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 1236
    new-array v0, p1, [Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1230
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState$1;->newArray(I)[Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;

    move-result-object p1

    return-object p1
.end method
