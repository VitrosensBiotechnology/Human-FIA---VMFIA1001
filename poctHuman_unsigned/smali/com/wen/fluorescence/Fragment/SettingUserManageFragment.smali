.class public Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingUserManageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private UserPageSize:I

.field private btnAddUser:Landroid/widget/Button;

.field private btnClear:Landroid/widget/Button;

.field private btnDeleteUser:Landroid/widget/Button;

.field private btnLogout:Landroid/widget/Button;

.field private btnModifyUser:Landroid/widget/Button;

.field private tlUserTable:Landroid/widget/TableLayout;

.field private userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/bean/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->userList:Ljava/util/List;

    .line 45
    const/4 v0, 0x7

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->UserPageSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    .line 39
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->initData()V

    return-void
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;)Landroid/widget/TableLayout;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    .line 39
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->tlUserTable:Landroid/widget/TableLayout;

    return-object v0
.end method

.method private addUser()V
    .locals 9

    .line 152
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0063

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 155
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 156
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 158
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x20008

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 160
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 161
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 163
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 164
    .local v2, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 165
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 166
    const/4 v4, 0x6

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 167
    const/16 v4, 0x1f9

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 168
    const/16 v4, 0x15e

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 169
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 171
    const v4, 0x7f080089

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 172
    .local v4, "btnSure":Landroid/widget/Button;
    const v5, 0x7f08003b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 173
    .local v5, "btnCancel":Landroid/widget/Button;
    const v6, 0x7f0800f3

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 174
    .local v6, "etUserName":Landroid/widget/EditText;
    const v7, 0x7f0800de

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 176
    .local v7, "etPassword":Landroid/widget/EditText;
    new-instance v8, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;

    invoke-direct {v8, p0, v6, v7, v1}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    new-instance v8, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$3;

    invoke-direct {v8, p0, v1}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method

.method private clearAllUser()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c018a

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$6;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$6;-><init>(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 306
    :cond_0
    return-void
.end method

.method private deleteUser()V
    .locals 4

    .line 328
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getSelectCount()I

    move-result v0

    .line 329
    .local v0, "selectCount":I
    if-lez v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c018b

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$7;

    invoke-direct {v3, p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$7;-><init>(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;)V

    invoke-static {v1, v2, v3}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0166

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 352
    :goto_0
    return-void
.end method

.method private getSelectCount()I
    .locals 5

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "selectCount":I
    const/4 v1, 0x0

    .line 314
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->tlUserTable:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->tlUserTable:Landroid/widget/TableLayout;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 316
    .local v2, "children":Landroid/view/View;
    const v3, 0x7f0800a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 317
    .local v3, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    add-int/lit8 v0, v0, 0x1

    .line 314
    .end local v2    # "children":Landroid/view/View;
    .end local v3    # "checkBox":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private initData()V
    .locals 8

    .line 80
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/DBManager;->queryAllUser()Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "addUser":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/User;>;"
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 82
    const/4 v1, 0x0

    move v2, v1

    .line 82
    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/bean/User;

    invoke-virtual {v3}, Lcom/wen/fluorescence/bean/User;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "super"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/bean/User;

    invoke-virtual {v3}, Lcom/wen/fluorescence/bean/User;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "factory"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->userList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x7

    iput v2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->UserPageSize:I

    .line 89
    iget v2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->UserPageSize:I

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->userList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 90
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->userList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->UserPageSize:I

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->tlUserTable:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->removeAllViewsInLayout()V

    .line 93
    move v2, v1

    .line 93
    .restart local v2    # "i":I
    :goto_1
    iget v3, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->UserPageSize:I

    if-ge v2, v3, :cond_4

    .line 94
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0a0065

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, "tableRow":Landroid/view/View;
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->tlUserTable:Landroid/widget/TableLayout;

    invoke-virtual {v4, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 96
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->userList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 97
    const v4, 0x7f08025f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 98
    .local v4, "tvUserName":Landroid/widget/TextView;
    const v5, 0x7f080223

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 99
    .local v5, "tvPassword":Landroid/widget/TextView;
    const v6, 0x7f0800a1

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 100
    .local v6, "cbUserSelect":Landroid/widget/CheckBox;
    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 101
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->userList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/bean/User;

    invoke-virtual {v7}, Lcom/wen/fluorescence/bean/User;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->userList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wen/fluorescence/bean/User;

    invoke-virtual {v7}, Lcom/wen/fluorescence/bean/User;->getPasssword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .end local v3    # "tableRow":Landroid/view/View;
    .end local v4    # "tvUserName":Landroid/widget/TextView;
    .end local v5    # "tvPassword":Landroid/widget/TextView;
    .end local v6    # "cbUserSelect":Landroid/widget/CheckBox;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private logOut()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c00eb

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$1;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 146
    return-void
.end method

.method private modifyUser()V
    .locals 12

    .line 210
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getSelectCount()I

    move-result v0

    .line 211
    .local v0, "selectCount":I
    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0166

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 213
    return-void

    .line 215
    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c016a

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 217
    return-void

    .line 219
    :cond_1
    new-instance v2, Lcom/wen/fluorescence/bean/User;

    invoke-direct {v2}, Lcom/wen/fluorescence/bean/User;-><init>()V

    .line 220
    .local v2, "user":Lcom/wen/fluorescence/bean/User;
    const/4 v3, 0x0

    .line 220
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->tlUserTable:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v4

    const v5, 0x7f08025f

    if-ge v3, v4, :cond_3

    .line 221
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->tlUserTable:Landroid/widget/TableLayout;

    invoke-virtual {v4, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 222
    .local v4, "children":Landroid/view/View;
    const v6, 0x7f0800a1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 223
    .local v6, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 224
    .local v5, "tvUserName":Landroid/widget/TextView;
    const v7, 0x7f080223

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 225
    .local v7, "tvPassword":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 226
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/wen/fluorescence/bean/User;->setName(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/wen/fluorescence/bean/User;->setPasssword(Ljava/lang/String;)V

    .line 220
    .end local v4    # "children":Landroid/view/View;
    .end local v5    # "tvUserName":Landroid/widget/TextView;
    .end local v6    # "checkBox":Landroid/widget/CheckBox;
    .end local v7    # "tvPassword":Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a0064

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 234
    .local v3, "view":Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 235
    .local v4, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 236
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 238
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v6, 0x20008

    invoke-virtual {v1, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 240
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 241
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 243
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 244
    .local v1, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 245
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x11

    invoke-virtual {v1, v7}, Landroid/view/Window;->setGravity(I)V

    .line 246
    const/4 v7, 0x6

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 247
    const/16 v7, 0x1f9

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 248
    const/16 v7, 0x15e

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 249
    invoke-virtual {v1, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 251
    const v7, 0x7f080089

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 252
    .local v7, "btnSure":Landroid/widget/Button;
    const v8, 0x7f08003b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 253
    .local v8, "btnCancel":Landroid/widget/Button;
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 254
    .restart local v5    # "tvUserName":Landroid/widget/TextView;
    const v9, 0x7f08021f

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 255
    .local v9, "tvOldPwd":Landroid/widget/TextView;
    const v10, 0x7f0800d8

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 257
    .local v10, "etNewPwd":Landroid/widget/EditText;
    invoke-virtual {v2}, Lcom/wen/fluorescence/bean/User;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {v2}, Lcom/wen/fluorescence/bean/User;->getPasssword()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    new-instance v11, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;

    invoke-direct {v11, p0, v10, v2, v4}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;Landroid/widget/EditText;Lcom/wen/fluorescence/bean/User;Landroid/app/AlertDialog;)V

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    new-instance v11, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$5;

    invoke-direct {v11, p0, v4}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$5;-><init>(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method


# virtual methods
.method protected initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 66
    const v0, 0x7f080039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->btnAddUser:Landroid/widget/Button;

    .line 67
    const v0, 0x7f080047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->btnDeleteUser:Landroid/widget/Button;

    .line 68
    const v0, 0x7f080040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->btnClear:Landroid/widget/Button;

    .line 69
    const v0, 0x7f080060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->btnModifyUser:Landroid/widget/Button;

    .line 70
    const v0, 0x7f0801e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->tlUserTable:Landroid/widget/TableLayout;

    .line 71
    const v0, 0x7f08005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->btnLogout:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->btnAddUser:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->btnDeleteUser:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->btnClear:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->btnModifyUser:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->btnLogout:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 121
    :sswitch_0
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->modifyUser()V

    .line 122
    goto :goto_0

    .line 124
    :sswitch_1
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->logOut()V

    goto :goto_0

    .line 115
    :sswitch_2
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->deleteUser()V

    .line 116
    goto :goto_0

    .line 118
    :sswitch_3
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->clearAllUser()V

    .line 119
    goto :goto_0

    .line 112
    :sswitch_4
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->addUser()V

    .line 113
    nop

    .line 127
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080039 -> :sswitch_4
        0x7f080040 -> :sswitch_3
        0x7f080047 -> :sswitch_2
        0x7f08005f -> :sswitch_1
        0x7f080060 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    const v0, 0x7f0a002d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->initView(Landroid/view/View;)V

    .line 53
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->initData()V

    .line 54
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 60
    if-nez p1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->initData()V

    .line 63
    :cond_0
    return-void
.end method
