.class public interface abstract Lorg/kodein/di/bindings/ExternalSource;
.super Ljava/lang/Object;
.source "ExternalSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/bindings/ExternalSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008J8\u0010\u0002\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0007H&\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/kodein/di/bindings/ExternalSource;",
        "",
        "getFactory",
        "Lkotlin/Function1;",
        "kodein",
        "Lorg/kodein/di/bindings/BindingKodein;",
        "key",
        "Lorg/kodein/di/Kodein$Key;",
        "Companion",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lorg/kodein/di/bindings/ExternalSource$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/kodein/di/bindings/ExternalSource$Companion;->$$INSTANCE:Lorg/kodein/di/bindings/ExternalSource$Companion;

    sput-object v0, Lorg/kodein/di/bindings/ExternalSource;->Companion:Lorg/kodein/di/bindings/ExternalSource$Companion;

    return-void
.end method


# virtual methods
.method public abstract getFactory(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Kodein$Key;)Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/BindingKodein<",
            "*>;",
            "Lorg/kodein/di/Kodein$Key<",
            "***>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
