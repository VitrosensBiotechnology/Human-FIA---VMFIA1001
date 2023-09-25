.class Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$1;
.super Ljava/lang/Object;
.source "SystemIDChipFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    .line 234
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 237
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    invoke-static {v0, p3}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->access$000(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;I)V

    .line 238
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 243
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
