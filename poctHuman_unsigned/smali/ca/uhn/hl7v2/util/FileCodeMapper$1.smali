.class Lca/uhn/hl7v2/util/FileCodeMapper$1;
.super Ljava/lang/Object;
.source "FileCodeMapper.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/uhn/hl7v2/util/FileCodeMapper;->refreshCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lca/uhn/hl7v2/util/FileCodeMapper;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/util/FileCodeMapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/uhn/hl7v2/util/FileCodeMapper$1;->this$0:Lca/uhn/hl7v2/util/FileCodeMapper;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "pathname"    # Ljava/io/File;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "acc":Z
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 79
    :cond_0
    return v0
.end method
