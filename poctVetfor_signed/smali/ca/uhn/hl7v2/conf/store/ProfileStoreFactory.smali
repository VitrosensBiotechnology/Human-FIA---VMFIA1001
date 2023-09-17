.class public Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;
.super Ljava/lang/Object;
.source "ProfileStoreFactory.java"


# static fields
.field public static final DEFAULT_PROFILE_STORE_DIRECTORY:Ljava/lang/String;

.field private static codeRegistry:Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;

.field private static instance:Lca/uhn/hl7v2/conf/store/ProfileStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lca/uhn/hl7v2/util/Home;->getHomeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/profiles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;->DEFAULT_PROFILE_STORE_DIRECTORY:Ljava/lang/String;

    .line 18
    new-instance v0, Lca/uhn/hl7v2/conf/store/DefaultCodeStoreRegistry;

    invoke-direct {v0}, Lca/uhn/hl7v2/conf/store/DefaultCodeStoreRegistry;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;->codeRegistry:Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static addCodeStore(Lca/uhn/hl7v2/conf/store/CodeStore;)V
    .locals 1
    .param p0, "store"    # Lca/uhn/hl7v2/conf/store/CodeStore;

    .line 53
    sget-object v0, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;->codeRegistry:Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;

    invoke-interface {v0, p0}, Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;->addCodeStore(Lca/uhn/hl7v2/conf/store/CodeStore;)V

    .line 54
    return-void
.end method

.method public static addCodeStore(Lca/uhn/hl7v2/conf/store/CodeStore;Ljava/lang/String;)V
    .locals 1
    .param p0, "store"    # Lca/uhn/hl7v2/conf/store/CodeStore;
    .param p1, "profileID"    # Ljava/lang/String;

    .line 76
    sget-object v0, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;->codeRegistry:Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;

    invoke-interface {v0, p0, p1}, Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;->addCodeStore(Lca/uhn/hl7v2/conf/store/CodeStore;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static getCodeStore(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/conf/store/CodeStore;
    .locals 1
    .param p0, "profileID"    # Ljava/lang/String;
    .param p1, "codeSystem"    # Ljava/lang/String;

    .line 89
    sget-object v0, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;->codeRegistry:Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;

    invoke-interface {v0, p0, p1}, Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;->getCodeStore(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/conf/store/CodeStore;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getProfileStore()Lca/uhn/hl7v2/conf/store/ProfileStore;
    .locals 3

    const-class v0, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;->instance:Lca/uhn/hl7v2/conf/store/ProfileStore;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lca/uhn/hl7v2/conf/store/FileProfileStore;

    sget-object v2, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;->DEFAULT_PROFILE_STORE_DIRECTORY:Ljava/lang/String;

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/conf/store/FileProfileStore;-><init>(Ljava/lang/String;)V

    sput-object v1, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;->instance:Lca/uhn/hl7v2/conf/store/ProfileStore;

    .line 35
    :cond_0
    sget-object v1, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;->instance:Lca/uhn/hl7v2/conf/store/ProfileStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setStore(Lca/uhn/hl7v2/conf/store/ProfileStore;)V
    .locals 1
    .param p0, "store"    # Lca/uhn/hl7v2/conf/store/ProfileStore;

    const-class v0, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;

    monitor-enter v0

    .line 44
    :try_start_0
    sput-object p0, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;->instance:Lca/uhn/hl7v2/conf/store/ProfileStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    return-void

    .line 43
    .end local p0    # "store":Lca/uhn/hl7v2/conf/store/ProfileStore;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
