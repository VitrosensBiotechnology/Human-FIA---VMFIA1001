.class public Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;
.super Ljava/lang/Object;
.source "DayViewFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/materialcalendarview/DayViewFacade$Span;
    }
.end annotation


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private daysDisabled:Z

.field private isDecorated:Z

.field private selectionDrawable:Landroid/graphics/drawable/Drawable;

.field private final spans:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/wen/fluorescence/materialcalendarview/DayViewFacade$Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->daysDisabled:Z

    .line 23
    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 24
    return-void
.end method


# virtual methods
.method public addSpan(Ljava/lang/Object;)V
    .locals 2
    .param p1, "span"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    new-instance v1, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade$Span;

    invoke-direct {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade$Span;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 63
    :cond_0
    return-void
.end method

.method applyTo(Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;)V
    .locals 2
    .param p1, "other"    # Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;

    .line 91
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->setSelectionDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_1
    iget-object v0, p1, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-boolean v0, p1, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->isDecorated:Z

    iget-boolean v1, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->isDecorated:Z

    or-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 99
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->daysDisabled:Z

    iput-boolean v0, p1, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->daysDisabled:Z

    .line 100
    return-void
.end method

.method public areDaysDisabled()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->daysDisabled:Z

    return v0
.end method

.method getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectionDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSpans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/materialcalendarview/DayViewFacade$Span;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isDecorated()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->isDecorated:Z

    return v0
.end method

.method reset()V
    .locals 1

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 82
    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->daysDisabled:Z

    .line 83
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 37
    return-void
.end method

.method public setDaysDisabled(Z)V
    .locals 1
    .param p1, "daysDisabled"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->daysDisabled:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 75
    return-void
.end method

.method public setSelectionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 51
    return-void
.end method
