.class Lcom/wen/fluorescence/Fragment/HomeFragment$13;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/ViewUtil/DetialInfomationDialog$DetialCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HomeFragment;->addDetialInfomation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 776
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$13;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetialResult(Lcom/wen/fluorescence/database/TestResult;)V
    .locals 2
    .param p1, "result"    # Lcom/wen/fluorescence/database/TestResult;

    .line 779
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$13;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0, p1}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$3202(Lcom/wen/fluorescence/Fragment/HomeFragment;Lcom/wen/fluorescence/database/TestResult;)Lcom/wen/fluorescence/database/TestResult;

    .line 780
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$13;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$3300(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getSampleNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$13;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$3400(Lcom/wen/fluorescence/Fragment/HomeFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->getPatientNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 782
    return-void
.end method
