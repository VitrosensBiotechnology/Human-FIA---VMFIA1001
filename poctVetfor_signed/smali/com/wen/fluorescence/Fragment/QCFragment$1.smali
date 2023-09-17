.class Lcom/wen/fluorescence/Fragment/QCFragment$1;
.super Ljava/lang/Object;
.source "QCFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/QCFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/QCFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/QCFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/QCFragment;

    .line 38
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "i"    # I

    .line 41
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/QCFragment;

    invoke-static {v0, p2}, Lcom/wen/fluorescence/Fragment/QCFragment;->access$000(Lcom/wen/fluorescence/Fragment/QCFragment;I)V

    .line 42
    return-void
.end method
