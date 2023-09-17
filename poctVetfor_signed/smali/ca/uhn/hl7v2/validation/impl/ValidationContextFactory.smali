.class public Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;
.super Ljava/lang/Object;
.source "ValidationContextFactory.java"


# static fields
.field public static final CONTEXT_PROPERTY:Ljava/lang/String; = "ca.uhn.hl7v2.validation.context_class"

.field private static ourContext:Lca/uhn/hl7v2/validation/ValidationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customBuilder(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .locals 2
    .param p0, "ruleBuilderClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 104
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;>;"
    nop

    .line 106
    nop

    .line 108
    invoke-static {v0}, Lca/uhn/hl7v2/util/ReflectionUtil;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    return-object v1

    .line 105
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;>;"
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static customValidation(Ljava/lang/String;)Lca/uhn/hl7v2/validation/ValidationContext;
    .locals 2
    .param p0, "contextClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/validation/ValidationContext;>;"
    nop

    .line 131
    nop

    .line 133
    invoke-static {v0}, Lca/uhn/hl7v2/util/ReflectionUtil;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/validation/ValidationContext;

    return-object v1

    .line 130
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/validation/ValidationContext;>;"
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static defaultValidation()Lca/uhn/hl7v2/validation/ValidationContext;
    .locals 2

    .line 90
    new-instance v0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;

    new-instance v1, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationBuilder;

    invoke-direct {v1}, Lca/uhn/hl7v2/validation/builder/support/DefaultValidationBuilder;-><init>()V

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;-><init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    return-object v0
.end method

.method public static fromBuilder(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)Lca/uhn/hl7v2/validation/ValidationContext;
    .locals 1
    .param p0, "builder"    # Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    .line 116
    new-instance v0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;-><init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    return-object v0
.end method

.method public static fromBuilder(Ljava/lang/String;)Lca/uhn/hl7v2/validation/ValidationContext;
    .locals 2
    .param p0, "ruleBuilderClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 112
    new-instance v0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;

    invoke-static {p0}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->customBuilder(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;-><init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    return-object v0
.end method

.method public static declared-synchronized getContext()Lca/uhn/hl7v2/validation/ValidationContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    const-class v0, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->ourContext:Lca/uhn/hl7v2/validation/ValidationContext;

    if-nez v1, :cond_1

    .line 70
    const-string v1, "ca.uhn.hl7v2.validation.context_class"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "contextClassName":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-static {}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->defaultValidation()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v2

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v1}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->customValidation(Ljava/lang/String;)Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v2

    .line 71
    :goto_0
    sput-object v2, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->ourContext:Lca/uhn/hl7v2/validation/ValidationContext;

    .line 74
    .end local v1    # "contextClassName":Ljava/lang/String;
    :cond_1
    sget-object v1, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->ourContext:Lca/uhn/hl7v2/validation/ValidationContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static noValidation()Lca/uhn/hl7v2/validation/ValidationContext;
    .locals 2

    .line 82
    new-instance v0, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;

    new-instance v1, Lca/uhn/hl7v2/validation/builder/support/NoValidationBuilder;

    invoke-direct {v1}, Lca/uhn/hl7v2/validation/builder/support/NoValidationBuilder;-><init>()V

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/validation/impl/ValidationContextImpl;-><init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    return-object v0
.end method
