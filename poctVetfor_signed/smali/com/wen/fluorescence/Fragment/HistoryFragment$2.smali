.class Lcom/wen/fluorescence/Fragment/HistoryFragment$2;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HistoryFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HistoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HistoryFragment;

    .line 160
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .line 163
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HistoryFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-static {v0, p2}, Lcom/wen/fluorescence/Fragment/HistoryFragment;->access$000(Lcom/wen/fluorescence/Fragment/HistoryFragment;Z)V

    .line 164
    return-void
.end method
