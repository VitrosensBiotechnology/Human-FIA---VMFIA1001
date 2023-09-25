.class public Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;
.super Ljava/lang/Object;
.source "SimpleDialogs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AlertDialogMorePunching(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "Data"    # Ljava/lang/String;
    .param p3, "ExportMode"    # I

    .line 91
    const v0, 0x7f0a0029

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 94
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 95
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 96
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 98
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 99
    .local v2, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 100
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 101
    const/4 v4, 0x6

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 102
    const/16 v4, 0x221

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 103
    const/16 v4, 0x12c

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 104
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 106
    const v4, 0x7f08004e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 107
    .local v4, "btnExportAll":Landroid/widget/Button;
    const v5, 0x7f08007b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 108
    .local v5, "btnSelectDate":Landroid/widget/Button;
    const v6, 0x7f08003b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 110
    .local v6, "btnCancel":Landroid/widget/Button;
    new-instance v7, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$5;

    invoke-direct {v7, p0, p3, v1}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$5;-><init>(Landroid/content/Context;ILandroid/app/AlertDialog;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v7, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$6;

    invoke-direct {v7, v1}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$6;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v7, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$7;

    invoke-direct {v7, p0, p3, v1}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$7;-><init>(Landroid/content/Context;ILandroid/app/AlertDialog;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method public static AlertDialogPunching(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "Data"    # Ljava/lang/String;
    .param p3, "ExportMode"    # I

    move-object/from16 v6, p0

    .line 25
    const v0, 0x7f0a002a

    const/4 v1, 0x0

    invoke-static {v6, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 27
    .local v7, "view":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 28
    .local v8, "dialog":Landroid/app/AlertDialog;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 29
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 30
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 32
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 33
    .local v9, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 34
    .local v10, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x11

    invoke-virtual {v9, v0}, Landroid/view/Window;->setGravity(I)V

    .line 35
    const/4 v0, 0x6

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 36
    const/16 v0, 0x221

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 37
    const/16 v0, 0x12c

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 38
    invoke-virtual {v9, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 40
    const v0, 0x7f08004f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Button;

    .line 41
    .local v11, "btnExportToday":Landroid/widget/Button;
    const v0, 0x7f08003b

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    .line 42
    .local v12, "btnCancel":Landroid/widget/Button;
    const v0, 0x7f080061

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Button;

    .line 44
    .local v13, "btnMore":Landroid/widget/Button;
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$1;

    move/from16 v14, p3

    invoke-direct {v0, v6, v14, v8}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$1;-><init>(Landroid/content/Context;ILandroid/app/AlertDialog;)V

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v0, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$2;

    invoke-direct {v0, v8}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$2;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v15, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$3;

    move-object v0, v15

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v14

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/AlertDialog;)V

    invoke-virtual {v13, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;->select(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .line 20
    invoke-static {p0, p1}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs;->selectDate(Landroid/content/Context;I)V

    return-void
.end method

.method private static select(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # I
    .param p2, "selectDate"    # Ljava/lang/String;
    .param p3, "ExportMode"    # I

    .line 69
    invoke-static {p0, p1, p3, p2}, Lcom/wen/fluorescence/util/PublicFuction;->ExportSQLite(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const v0, 0x7f0c00c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$4;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    invoke-static {p0, v0, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    goto :goto_0

    .line 82
    :cond_0
    const v0, 0x7f0c00a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 84
    :goto_0
    return-void
.end method

.method private static selectDate(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ExportMode"    # I

    .line 156
    new-instance v0, Lcom/wen/fluorescence/util/MyDateSelector;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/MyDateSelector;-><init>()V

    .line 157
    .local v0, "selector":Lcom/wen/fluorescence/util/MyDateSelector;
    new-instance v1, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$8;

    invoke-direct {v1, p0, p1}, Lcom/wen/fluorescence/ViewUtil/SimpleDialogs$8;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p0, v1}, Lcom/wen/fluorescence/util/MyDateSelector;->show(Landroid/content/Context;Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;)V

    .line 169
    return-void
.end method
