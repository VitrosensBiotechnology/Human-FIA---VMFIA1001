.class Lcom/wen/fluorescence/Fragment/HomeFragment$15$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/net/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HomeFragment$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$15;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wen/fluorescence/Fragment/HomeFragment$15;

    .line 862
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$15$1;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 914
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 915
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 13
    .param p1, "result"    # Ljava/lang/Object;

    .line 865
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 866
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 867
    .local v0, "barCode":Ljava/lang/String;
    invoke-static {}, Lcom/wen/fluorescence/util/IDCardUtil;->getInstance()Lcom/wen/fluorescence/util/IDCardUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/util/IDCardUtil;->queryIDChipInfoN(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v1

    .line 869
    .local v1, "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    iget-object v3, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/DBManager;->queryIDChipInfoNForBarCode(Ljava/lang/String;)Lcom/wen/fluorescence/bean/IDChipInfoN;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 870
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    iget-object v3, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/DBManager;->deleteIDChipInfoN(Ljava/lang/String;)V

    .line 871
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    iget-object v3, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/DBManager;->deleteIDChipInfoExN(Ljava/lang/String;)V

    .line 872
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    iget-object v3, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/database/DBManager;->deleteEquation(Ljava/lang/String;)V

    .line 874
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/database/DBManager;->addIDChipInfoN(Lcom/wen/fluorescence/bean/IDChipInfoN;)V

    .line 875
    iget-object v2, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 876
    move v2, v3

    .line 876
    .local v2, "i":I
    :goto_0
    iget v4, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v2, v4, :cond_1

    .line 877
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v4

    iget-object v5, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/database/DBManager;->addIDChipInfoExN(Lcom/wen/fluorescence/bean/IDChipInfoExN;)V

    .line 876
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 881
    .end local v2    # "i":I
    :cond_1
    const-string v2, "\u54c8\u54c8"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========\u7cfb\u6570======"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget v2, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->iPloyCoefficientFlag:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 883
    move v2, v3

    .line 883
    .restart local v2    # "i":I
    :goto_1
    iget v5, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_ItemCount:I

    if-ge v2, v5, :cond_2

    .line 884
    new-instance v5, Lcom/wen/fluorescence/bean/Equation;

    invoke-direct {v5}, Lcom/wen/fluorescence/bean/Equation;-><init>()V

    .line 885
    .local v5, "equation":Lcom/wen/fluorescence/bean/Equation;
    iput v2, v5, Lcom/wen/fluorescence/bean/Equation;->ItemIndex:I

    .line 886
    iput v4, v5, Lcom/wen/fluorescence/bean/Equation;->flag:I

    .line 887
    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->new_barCode:Ljava/lang/String;

    iput-object v6, v5, Lcom/wen/fluorescence/bean/Equation;->m_barCode:Ljava/lang/String;

    .line 888
    iget v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->customerCode:I

    iput v6, v5, Lcom/wen/fluorescence/bean/Equation;->customerCode:I

    .line 889
    iget v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->childCode:I

    iput v6, v5, Lcom/wen/fluorescence/bean/Equation;->childCustomerCode:I

    .line 890
    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v7, v6, v3

    iput-wide v7, v5, Lcom/wen/fluorescence/bean/Equation;->E1_1:D

    .line 891
    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v7, v6, v4

    iput-wide v7, v5, Lcom/wen/fluorescence/bean/Equation;->E1_2:D

    .line 892
    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    const/4 v7, 0x2

    aget-wide v8, v6, v7

    iput-wide v8, v5, Lcom/wen/fluorescence/bean/Equation;->E1_3:D

    .line 893
    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    const/4 v8, 0x3

    aget-wide v9, v6, v8

    iput-wide v9, v5, Lcom/wen/fluorescence/bean/Equation;->E1_4:D

    .line 894
    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    const/4 v9, 0x4

    aget-wide v10, v6, v9

    iput-wide v10, v5, Lcom/wen/fluorescence/bean/Equation;->E1_5:D

    .line 895
    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    const/4 v10, 0x5

    aget-wide v11, v6, v10

    iput-wide v11, v5, Lcom/wen/fluorescence/bean/Equation;->E1_6:D

    .line 897
    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v11, v6, v3

    iput-wide v11, v5, Lcom/wen/fluorescence/bean/Equation;->E2_1:D

    .line 898
    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v11, v6, v4

    iput-wide v11, v5, Lcom/wen/fluorescence/bean/Equation;->E2_2:D

    .line 899
    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v11, v6, v7

    iput-wide v11, v5, Lcom/wen/fluorescence/bean/Equation;->E2_3:D

    .line 900
    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v7, v6, v8

    iput-wide v7, v5, Lcom/wen/fluorescence/bean/Equation;->E2_4:D

    .line 901
    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v7, v6, v9

    iput-wide v7, v5, Lcom/wen/fluorescence/bean/Equation;->E2_5:D

    .line 902
    iget-object v6, v1, Lcom/wen/fluorescence/bean/IDChipInfoN;->m_proEx:[Lcom/wen/fluorescence/bean/IDChipInfoExN;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v7, v6, v10

    iput-wide v7, v5, Lcom/wen/fluorescence/bean/Equation;->E2_6:D

    .line 904
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/wen/fluorescence/database/DBManager;->addEquation(Lcom/wen/fluorescence/bean/Equation;)V

    .line 883
    .end local v5    # "equation":Lcom/wen/fluorescence/bean/Equation;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 907
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/IDChips/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/FileUtils;->deleteSpecificFile(Ljava/lang/String;)Z

    .line 908
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7dbin\u6587\u4ef6\u6210\u529f"

    invoke-static {v2, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 910
    .end local v0    # "barCode":Ljava/lang/String;
    .end local v1    # "idChipInfoN":Lcom/wen/fluorescence/bean/IDChipInfoN;
    :cond_3
    return-void
.end method
