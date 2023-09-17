.class public interface abstract Lca/uhn/hl7v2/validation/PrimitiveTypeRule;
.super Ljava/lang/Object;
.source "PrimitiveTypeRule.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/Rule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/validation/Rule<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract correct(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract test(Ljava/lang/String;)Z
.end method
