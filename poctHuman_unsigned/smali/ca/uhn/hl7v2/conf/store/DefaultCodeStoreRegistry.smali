.class public Lca/uhn/hl7v2/conf/store/DefaultCodeStoreRegistry;
.super Ljava/lang/Object;
.source "DefaultCodeStoreRegistry.java"

# interfaces
.implements Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;


# static fields
.field private static codeStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/conf/store/CodeStoreRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/conf/store/DefaultCodeStoreRegistry;->codeStores:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCodeStore(Lca/uhn/hl7v2/conf/store/CodeStore;)V
    .locals 1
    .param p1, "store"    # Lca/uhn/hl7v2/conf/store/CodeStore;

    .line 42
    const-string v0, ".*"

    invoke-virtual {p0, p1, v0}, Lca/uhn/hl7v2/conf/store/DefaultCodeStoreRegistry;->addCodeStore(Lca/uhn/hl7v2/conf/store/CodeStore;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public addCodeStore(Lca/uhn/hl7v2/conf/store/CodeStore;Ljava/lang/String;)V
    .locals 2
    .param p1, "store"    # Lca/uhn/hl7v2/conf/store/CodeStore;
    .param p2, "profileID"    # Ljava/lang/String;

    .line 46
    sget-object v0, Lca/uhn/hl7v2/conf/store/DefaultCodeStoreRegistry;->codeStores:Ljava/util/List;

    new-instance v1, Lca/uhn/hl7v2/conf/store/CodeStoreRegistration;

    invoke-direct {v1, p1, p2}, Lca/uhn/hl7v2/conf/store/CodeStoreRegistration;-><init>(Lca/uhn/hl7v2/conf/store/CodeStore;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public getCodeStore(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/conf/store/CodeStore;
    .locals 4
    .param p1, "profileID"    # Ljava/lang/String;
    .param p2, "codeSystem"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "store":Lca/uhn/hl7v2/conf/store/CodeStore;
    sget-object v1, Lca/uhn/hl7v2/conf/store/DefaultCodeStoreRegistry;->codeStores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/conf/store/CodeStoreRegistration;

    .line 52
    .local v2, "reg":Lca/uhn/hl7v2/conf/store/CodeStoreRegistration;
    invoke-virtual {v2, p2, p1}, Lca/uhn/hl7v2/conf/store/CodeStoreRegistration;->matchingCodeStore(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/conf/store/CodeStore;

    move-result-object v3

    move-object v0, v3

    if-eqz v3, :cond_0

    .line 53
    nop

    .line 55
    .end local v2    # "reg":Lca/uhn/hl7v2/conf/store/CodeStoreRegistration;
    :goto_0
    return-object v0
.end method
