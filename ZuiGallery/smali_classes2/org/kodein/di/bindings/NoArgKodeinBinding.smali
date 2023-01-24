.class public interface abstract Lorg/kodein/di/bindings/NoArgKodeinBinding;
.super Ljava/lang/Object;
.source "KodeinBinding.kt"

# interfaces
.implements Lorg/kodein/di/bindings/KodeinBinding;
.implements Lorg/kodein/di/bindings/Binding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/bindings/NoArgKodeinBinding$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/kodein/di/bindings/KodeinBinding<",
        "TC;",
        "Lkotlin/Unit;",
        "TT;>;",
        "Lorg/kodein/di/bindings/Binding<",
        "TC;",
        "Lkotlin/Unit;",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00020\u00042\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00020\u0006R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/kodein/di/bindings/NoArgKodeinBinding;",
        "C",
        "T",
        "",
        "Lorg/kodein/di/bindings/KodeinBinding;",
        "",
        "Lorg/kodein/di/bindings/Binding;",
        "argType",
        "Lorg/kodein/di/TypeToken;",
        "getArgType",
        "()Lorg/kodein/di/TypeToken;",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract getArgType()Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method
