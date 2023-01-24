.class public final Lorg/kodein/di/bindings/ExternalSource$Companion;
.super Ljava/lang/Object;
.source "ExternalSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/bindings/ExternalSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JJ\u0010\u0003\u001a\u00020\u00042?\u0008\u0004\u0010\u0005\u001a9\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0010\u0012\u000e\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0008\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t0\u0006\u00a2\u0006\u0002\u0008\nH\u0086\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/kodein/di/bindings/ExternalSource$Companion;",
        "",
        "()V",
        "invoke",
        "Lorg/kodein/di/bindings/ExternalSource;",
        "f",
        "Lkotlin/Function2;",
        "Lorg/kodein/di/bindings/BindingKodein;",
        "Lorg/kodein/di/Kodein$Key;",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
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
.field static final synthetic $$INSTANCE:Lorg/kodein/di/bindings/ExternalSource$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/kodein/di/bindings/ExternalSource$Companion;

    invoke-direct {v0}, Lorg/kodein/di/bindings/ExternalSource$Companion;-><init>()V

    sput-object v0, Lorg/kodein/di/bindings/ExternalSource$Companion;->$$INSTANCE:Lorg/kodein/di/bindings/ExternalSource$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/jvm/functions/Function2;)Lorg/kodein/di/bindings/ExternalSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/kodein/di/bindings/BindingKodein<",
            "*>;-",
            "Lorg/kodein/di/Kodein$Key<",
            "***>;+",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lorg/kodein/di/bindings/ExternalSource;"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lorg/kodein/di/bindings/ExternalSource$Companion$invoke$1;

    invoke-direct {v0, p1}, Lorg/kodein/di/bindings/ExternalSource$Companion$invoke$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lorg/kodein/di/bindings/ExternalSource;

    return-object v0
.end method
