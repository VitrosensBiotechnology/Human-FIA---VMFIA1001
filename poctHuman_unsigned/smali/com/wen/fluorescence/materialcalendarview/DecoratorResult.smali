.class Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;
.super Ljava/lang/Object;
.source "DecoratorResult.java"


# instance fields
.field public final decorator:Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;

.field public final result:Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;)V
    .locals 0
    .param p1, "decorator"    # Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;
    .param p2, "result"    # Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;->decorator:Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;

    .line 9
    iput-object p2, p0, Lcom/wen/fluorescence/materialcalendarview/DecoratorResult;->result:Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;

    .line 10
    return-void
.end method
