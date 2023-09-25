.class Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;
.super Ljava/lang/Object;
.source "SystemIDChipFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->setUpIdChipInfoExN(Lcom/wen/fluorescence/bean/IDChipInfoExN;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

.field final synthetic val$idChipInfoExN:Lcom/wen/fluorescence/bean/IDChipInfoExN;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;Lcom/wen/fluorescence/bean/IDChipInfoExN;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    .line 544
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->val$idChipInfoExN:Lcom/wen/fluorescence/bean/IDChipInfoExN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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

    .line 547
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->val$idChipInfoExN:Lcom/wen/fluorescence/bean/IDChipInfoExN;

    if-nez v0, :cond_0

    .line 548
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->access$300(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->val$idChipInfoExN:Lcom/wen/fluorescence/bean/IDChipInfoExN;

    iget-object v1, v1, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getSampleTypeFactor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 552
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->val$idChipInfoExN:Lcom/wen/fluorescence/bean/IDChipInfoExN;

    iget-object v0, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getSampleSubMark()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 553
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->access$400(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u662f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->access$400(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5426"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->val$idChipInfoExN:Lcom/wen/fluorescence/bean/IDChipInfoExN;

    iget-object v0, v0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getSampleCoeff()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    .line 558
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->access$500(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u662f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->access$500(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5426"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    :goto_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->access$600(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->val$idChipInfoExN:Lcom/wen/fluorescence/bean/IDChipInfoExN;

    iget-object v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getDensitySubLow()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->val$idChipInfoExN:Lcom/wen/fluorescence/bean/IDChipInfoExN;

    iget-object v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v2, v2, p3

    .line 563
    invoke-virtual {v2}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getDensitySubHight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->this$0:Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;->access$700(Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->val$idChipInfoExN:Lcom/wen/fluorescence/bean/IDChipInfoExN;

    iget-object v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getCoefficientSubLow()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->val$idChipInfoExN:Lcom/wen/fluorescence/bean/IDChipInfoExN;

    iget-object v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v2, v2, p3

    .line 566
    invoke-virtual {v2}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getCoefficientSubMiddle()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment$4;->val$idChipInfoExN:Lcom/wen/fluorescence/bean/IDChipInfoExN;

    iget-object v2, v2, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v2, v2, p3

    .line 567
    invoke-virtual {v2}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->getCoefficientSubHight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
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

    .line 574
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
