.class public final Lorg/kodein/di/Kodein$NoResultException;
.super Ljava/lang/RuntimeException;
.source "Kodein.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/Kodein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoResultException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/kodein/di/Kodein$NoResultException;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "search",
        "Lorg/kodein/di/SearchSpecs;",
        "message",
        "",
        "(Lorg/kodein/di/SearchSpecs;Ljava/lang/String;)V",
        "getSearch",
        "()Lorg/kodein/di/SearchSpecs;",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final search:Lorg/kodein/di/SearchSpecs;


# direct methods
.method public constructor <init>(Lorg/kodein/di/SearchSpecs;Ljava/lang/String;)V
    .locals 1

    const-string v0, "search"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/kodein/di/Kodein$NoResultException;->search:Lorg/kodein/di/SearchSpecs;

    return-void
.end method


# virtual methods
.method public final getSearch()Lorg/kodein/di/SearchSpecs;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/kodein/di/Kodein$NoResultException;->search:Lorg/kodein/di/SearchSpecs;

    return-object v0
.end method
