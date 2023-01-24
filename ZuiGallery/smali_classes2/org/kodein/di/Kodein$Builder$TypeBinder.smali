.class public interface abstract Lorg/kodein/di/Kodein$Builder$TypeBinder;
.super Ljava/lang/Object;
.source "Kodein.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/Kodein$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TypeBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002J5\u0010\u0003\u001a\u00020\u0004\"\u0004\u0008\u0001\u0010\u0005\"\u0004\u0008\u0002\u0010\u00062\u001e\u0010\u0007\u001a\u001a\u0012\u0006\u0008\u0000\u0012\u0002H\u0005\u0012\u0006\u0008\u0000\u0012\u0002H\u0006\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0008H\u00a6\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/kodein/di/Kodein$Builder$TypeBinder;",
        "T",
        "",
        "with",
        "",
        "C",
        "A",
        "binding",
        "Lorg/kodein/di/bindings/KodeinBinding;",
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
.method public abstract with(Lorg/kodein/di/bindings/KodeinBinding;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "-TC;-TA;+TT;>;)V"
        }
    .end annotation
.end method
