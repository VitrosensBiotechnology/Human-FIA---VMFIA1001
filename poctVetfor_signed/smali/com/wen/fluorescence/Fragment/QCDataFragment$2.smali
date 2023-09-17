.class Lcom/wen/fluorescence/Fragment/QCDataFragment$2;
.super Ljava/lang/Object;
.source "QCDataFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/QCDataFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/QCDataFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/QCDataFragment;

    .line 123
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .line 126
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCDataFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/QCDataFragment;

    invoke-static {v0, p2}, Lcom/wen/fluorescence/Fragment/QCDataFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCDataFragment;Z)V

    .line 127
    return-void
.end method
