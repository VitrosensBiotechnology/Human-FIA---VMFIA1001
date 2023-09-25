.class Lcom/wen/fluorescence/MyApplication$1;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/MyApplication;->deleteOldLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/MyApplication;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/MyApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/MyApplication;

    .line 118
    iput-object p1, p0, Lcom/wen/fluorescence/MyApplication$1;->this$0:Lcom/wen/fluorescence/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .line 120
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 121
    .local v4, "diff":J
    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 122
    const/4 v0, 0x1

    return v0

    .line 123
    :cond_0
    cmp-long v2, v4, v0

    if-nez v2, :cond_1

    .line 124
    const/4 v0, 0x0

    return v0

    .line 126
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 118
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/wen/fluorescence/MyApplication$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 130
    const/4 v0, 0x1

    return v0
.end method
