.class public final enum Lcom/wen/fluorescence/materialcalendarview/CalendarMode;
.super Ljava/lang/Enum;
.source "CalendarMode.java"


# annotations
.annotation build Lcom/wen/fluorescence/materialcalendarview/Experimental;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wen/fluorescence/materialcalendarview/CalendarMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

.field public static final enum MONTHS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

.field public static final enum WEEKS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;


# instance fields
.field final visibleWeeksCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    const-string v1, "MONTHS"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->MONTHS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 7
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    const-string v1, "WEEKS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->WEEKS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    sget-object v1, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->MONTHS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->WEEKS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->$VALUES:[Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "visibleWeeksCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wen/fluorescence/materialcalendarview/CalendarMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    return-object v0
.end method

.method public static values()[Lcom/wen/fluorescence/materialcalendarview/CalendarMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->$VALUES:[Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    invoke-virtual {v0}, [Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    return-object v0
.end method
