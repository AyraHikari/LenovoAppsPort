.class public final Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode$Companion;
.super Ljava/lang/Object;
.source "KodeinContainerBuilderImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode$Companion;",
        "",
        "()V",
        "get",
        "Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;",
        "allow",
        "",
        "silent",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(ZZ)Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;
    .locals 0

    if-nez p1, :cond_0

    .line 78
    sget-object p1, Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;->FORBID:Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 80
    sget-object p1, Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;->ALLOW_SILENT:Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;

    return-object p1

    .line 81
    :cond_1
    sget-object p1, Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;->ALLOW_EXPLICIT:Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;

    return-object p1
.end method
