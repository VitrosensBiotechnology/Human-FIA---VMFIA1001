.class public Lcom/wen/fluorescence/util/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SharedPreferencesUtils.java"


# static fields
.field public static final EASY11_DEFAULT_URL:Ljava/lang/String; = "https://covid.testeasy.com.cn/prod-api/api/uploadData"

.field public static final EASY11_URL:Ljava/lang/String; = "EASY11_URL"

.field public static final IP:Ljava/lang/String; = "IP_LIS"

.field public static final IP_PORT:Ljava/lang/String; = "IP_port"

.field public static final LAST_LOGIN:Ljava/lang/String; = "Last_Login"

.field public static final LIS_HL7_MODE:Ljava/lang/String; = "LIS_HL7_MODE"

.field public static final LIS_SWITCH:Ljava/lang/String; = "LIS_SWITCH"

.field public static final LOGIN_USER:Ljava/lang/String; = "login_user"

.field public static final MAC_LOCAL:Ljava/lang/String; = "MAC_LOCAL"

.field public static final ORIGANIZATION:Ljava/lang/String; = "OrganizationFragment"

.field public static final SAMPLE_AUTO:Ljava/lang/String; = "SAMPLE_AUTO"

.field public static final SP_DEFAULT_LOT:Ljava/lang/String; = "SP_DEFAULT_LOT"

.field public static final SP_DEFAULT_SAMPLE_MODE:Ljava/lang/String; = "SP_DEFAULT_SAMPLE_MODE"

.field public static final SP_DEV:Ljava/lang/String; = "DevicedID"

.field public static final SP_NAME:Ljava/lang/String; = "WPFIA"

.field public static final SP_TEST_MODE:Ljava/lang/String; = "SP_TEST_MODE"

.field public static final SP_YR_PREVENT_GOODS:Ljava/lang/String; = "SP_YR_PREVENT_GOODS"

.field public static final SP_YR_PREVENT_GOODS_VALUE:Ljava/lang/String; = "SP_YR_PREVENT_GOODS_VALUE"

.field public static final STANDARD_MODE:Ljava/lang/String; = "STANDARD_MODE"

.field private static instance:Lcom/wen/fluorescence/util/SharedPreferencesUtils;


# instance fields
.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "WPFIA"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    .line 40
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->instance:Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->instance:Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->instance:Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->instance:Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    return-object v0
.end method


# virtual methods
.method public getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dValue"    # Z

    .line 84
    iget-object v0, p0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFloatData(Ljava/lang/String;F)Ljava/lang/Float;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dValue"    # F

    .line 76
    iget-object v0, p0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getIntData(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dValue"    # I

    .line 59
    iget-object v0, p0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLongData(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dValue"    # J

    .line 67
    iget-object v0, p0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dValue"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBooleanData(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 80
    iget-object v0, p0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    return-void
.end method

.method public setFloatData(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 71
    iget-object v0, p0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void
.end method

.method public setIntData(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 55
    iget-object v0, p0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public setLongData(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 63
    iget-object v0, p0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void
.end method

.method public setStringData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void
.end method
