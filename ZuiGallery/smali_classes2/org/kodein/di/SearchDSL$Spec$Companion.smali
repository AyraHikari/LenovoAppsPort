.class public final Lorg/kodein/di/SearchDSL$Spec$Companion;
.super Ljava/lang/Object;
.source "Search.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/SearchDSL$Spec;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\'\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\tH\u0080\u0002\u00a2\u0006\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/kodein/di/SearchDSL$Spec$Companion;",
        "",
        "()V",
        "invoke",
        "Lorg/kodein/di/SearchDSL$Spec;",
        "f",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/SearchSpecs;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "invoke$kodein_di_core",
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
.field static final synthetic $$INSTANCE:Lorg/kodein/di/SearchDSL$Spec$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lorg/kodein/di/SearchDSL$Spec$Companion;

    invoke-direct {v0}, Lorg/kodein/di/SearchDSL$Spec$Companion;-><init>()V

    sput-object v0, Lorg/kodein/di/SearchDSL$Spec$Companion;->$$INSTANCE:Lorg/kodein/di/SearchDSL$Spec$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke$kodein_di_core(Lkotlin/jvm/functions/Function1;)Lorg/kodein/di/SearchDSL$Spec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/SearchSpecs;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/kodein/di/SearchDSL$Spec;"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lorg/kodein/di/SearchDSL$Spec$Companion$invoke$1;

    invoke-direct {v0, p1}, Lorg/kodein/di/SearchDSL$Spec$Companion$invoke$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lorg/kodein/di/SearchDSL$Spec;

    return-object v0
.end method
