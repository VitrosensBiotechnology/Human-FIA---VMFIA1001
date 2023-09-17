.class Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$3;
.super Ljava/lang/Object;
.source "SystemIDChipFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->updateIDChipInfo(I)V
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

    .line 395
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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

    .line 398
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    invoke-static {v1}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->access$100(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v1

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->access$200(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;Lcom/wen/fluorescence/bean/IDChipInfoExN;)V

    .line 401
    :cond_0
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

    .line 406
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
