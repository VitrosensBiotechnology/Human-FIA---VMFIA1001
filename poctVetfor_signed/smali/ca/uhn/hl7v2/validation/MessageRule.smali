.class public interface abstract Lca/uhn/hl7v2/validation/MessageRule;
.super Ljava/lang/Object;
.source "MessageRule.java"

# interfaces
.implements Lca/uhn/hl7v2/validation/Rule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/validation/Rule<",
        "Lca/uhn/hl7v2/model/Message;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract test(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;
.end method
