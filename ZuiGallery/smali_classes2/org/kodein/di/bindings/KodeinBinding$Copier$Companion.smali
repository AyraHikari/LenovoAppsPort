.class public final Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;
.super Ljava/lang/Object;
.source "KodeinBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/bindings/KodeinBinding$Copier;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JW\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0004\"\u0004\u0008\u0006\u0010\u0005\"\u0004\u0008\u0007\u0010\u0006\"\u0008\u0008\u0008\u0010\u0007*\u00020\u00012$\u0010\u0008\u001a \u0012\u0004\u0012\u00020\n\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u000b0\tH\u0086\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;",
        "",
        "()V",
        "invoke",
        "Lorg/kodein/di/bindings/KodeinBinding$Copier;",
        "C",
        "A",
        "T",
        "f",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/KodeinContainer$Builder;",
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


# static fields
.field static final synthetic $$INSTANCE:Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;

    invoke-direct {v0}, Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;-><init>()V

    sput-object v0, Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;->$$INSTANCE:Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/jvm/functions/Function1;)Lorg/kodein/di/bindings/KodeinBinding$Copier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/KodeinContainer$Builder;",
            "+",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "TC;TA;TT;>;>;)",
            "Lorg/kodein/di/bindings/KodeinBinding$Copier<",
            "TC;TA;TT;>;"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion$invoke$1;

    invoke-direct {v0, p1}, Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion$invoke$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lorg/kodein/di/bindings/KodeinBinding$Copier;

    return-object v0
.end method
